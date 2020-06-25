module DateHelper
  @date = {
      special_session: {title: 'Special Session',
                        proposal: 'March 1, 2020',
                        notification: 'April 1, 2020',
                        notified: true,
                        submission: true,
                        see: false
      },
      tutorial: {title: 'Tutorial',
                 proposal: 'March 1, 2020',
                 notification: 'April 1, 2020',
                 notified: true,
                 submission: true,
                 see: false},
      proposal_for: {title: 'Submission of Proposals for Special Sessions, Forum, Panel & Tutorial Sessions',
                     proposal: 'March 1, 2020',
                     type: :nopropose,
                     submission: true,
                     notified: true,
                     extended: 'April 1, 2020'},
      acceptance_for: {title: 'Notification of Acceptance for Special Sessions, Forum, Panel & Tutorial Session',
                       proposal: 'April 1, 2020',
                       type: :nopropose,
                       submission: true,
                       notified: true,
                       extended: 'April 15, 2020'},

      online_submission: {title: 'Online Submission Website Ready for Full, Short and Special Sessions Papers Upload',
                          proposal: 'April 8, 2020',
                          type: :nopropose,
                          is_rebuttal: true,
                          type: :nopropose,
                          notice: 'Will be open soon'},
      camera_ready: {title: 'Submission of Camera Ready Papers',
                     proposal: 'November 5, 2020',
                     submission: true,
                     is_rebuttal: true,
                     type: :nopropose},
      Regular_camera_ready: {title: 'Submission of Regular Papers',
                     proposal: 'August 1, 2020',
                     submission: true,
                     is_rebuttal: true,
                     type: :nopropose},
      Special_camera_ready: {title: 'Submission of Special Session Papers',
                     proposal: 'August 1, 2020',
                     submission: true,
                     is_rebuttal: true,
                     type: :nopropose},
      # all_paper_submissions: {title: 'All Paper Regular Papers',
      #                         proposal: 'August 1, 2020',
      #                         is_rebuttal: true,
      #                         type: :nopropose,
      #                         deadline: true},
      #
      # all_paper_sp_submissions: {title: 'Special Session Regular Papers',
      #                         proposal: 'August 1, 2020',
      #                         is_rebuttal: true,
      #                         type: :nopropose,
      #                         deadline: true},

      all_paper_acceptance: {title: 'All Papers Acceptance and authors’ instructions',
                             notification: 'October 1, 2020',
                             notified: true,
                             type: :nosubmission},
      author_reg: {title: 'Author(early-bird) Registration',
                   proposal: 'November 5, 2020',
                   is_rebuttal: true,
                   type: :nopropose,
                   deadline: true},
      tutorial_session: {title: 'Tutorial Session Date',
                         proposal: 'December 7, 2020',
                         type: :nopropose},
      summit_conf_1st: {title: 'Summit and Conference 1st Day',
                        proposal: 'December 8, 2020',
                        type: :nopropose},
      summit_conf_2nd: {title: 'Summit and Conference 2nd Day',
                        proposal: 'December 9, 2020',
                        type: :nopropose},
      summit_conf_3rd: {title: 'Summit and Conference 3rd Day',
                        proposal: 'December 10, 2020',
                        type: :nopropose},

  }

  def self.get_sorted()
    s = Array.new

    marked_date = @date.dup
    marked_date[:is_today] = {proposal: Time.now.strftime('%B %d, %Y')}

    marked_date.each do |k, v|
      #s[Date.parse(v[:proposal])] = v[:title] + ' Proposoal';

      if k == :is_today
        s.push({
                   date: Date.parse(v[:proposal]),
                   title: 'Today',
                   affix: :highlight_today

               })
      elsif v[:proposal]
        if v[:see] == false
          next
        elsif v[:deadline]
          s.push({
                     date: Date.parse(v[:proposal]),
                     title: v[:title] + ((v[:type] || :nil) == :nopropose ? '' : ' Proposal'),
                     affix: v[:is_rebuttal] ? nil : :due,
                     extended: v[:extended] ? Date.parse(v[:extended]) : nil,
                     deadline: v[:deadline],
                     notice: v[:notice],

          })
        else
          s.push({
                     date: Date.parse(v[:proposal]),
                     title: (v[:submission] ? ' ' : '') + v[:title] + ((v[:type] || :nil) == :nopropose ? '' : ' Proposal'),
                     affix: v[:is_rebuttal] ? nil : :due,
                     extended: v[:extended] ? Date.parse(v[:extended]) : nil,
                     notice: v[:notice],
                 })
        end
      end

      if v[:notification]
        #s[Date.parse(v[:notification])] = v[:title] + ' Notification';
        s.push({
                   date: Date.parse(v[:notification]),
                   title: 'Notification of ' + v[:title] + ' Acceptance',
                   affix: :notification,
                   notified: v[:notified],
                   extended: v[:extended] ? Date.parse(v[:extended]) : nil,
                   notice: v[:notice],
               })
      end

      if v[:deadline_date]
        s.push({
                   date: Date.parse(v[:deadline_date]),
                   title: v[:title],
                   affix: :deadline_date,
                   deadline: v[:deadline]
               })
      end
    end

    return s.sort_by {|k| k[:date]}
  end

  def self.get spec:
    return @date[spec]
  end

  def self.get_deadline spec:
    #return @date[spec][:proposal]
    if @date[spec][:extended]
      return @date[spec][:proposal] + ' (extended ' + @date[spec][:extended] + ')'
    else
      return @date[spec][:proposal]
    end
  end
end 