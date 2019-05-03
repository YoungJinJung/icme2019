module DateHelper
  # @date = {
  #   special_session:    { title: 'Special Session',
  #                         proposal: 'October 2, 2017',
  #                         notification: 'October 16, 2017',
  #                         notified: true},
  #   workshop_proposal:  { title: 'Workshop',
  #                         proposal: 'October 23, 2017',
  #                         notification: 'November 6, 2017',
  #                         notified: true},
  #   panel:              { title: 'Panel',
  #                         proposal: 'September 25, 2017',
  #                         notification: 'October 2, 2017'},
  #   tutorial:           { title: 'Tutorial',
  #                         proposal: 'September 25, 2017',
  #                         notification: 'October 2, 2017',
  #                         notified: true},
  #   regular_abstract:   { title: 'Regular Paper Abstract',
  #                         proposal: 'November 24, 2017',
  #                         type: :nopropose,
  #                         extended: 'December 15, 2017'},
  #   regular_abstract_ext: { title: 'Regular Paper Abstract (Extended)',
  #                         proposal: 'December 15, 2017',
  #                         type: :nopropose},
  #   regular_paper:      { title: 'Regular Paper',
  #                         proposal: 'December 1, 2017',
  #                         notification: 'March 12, 2018',
  #                         type: :nopropose,
  #                         deadline: true,
  #                         extended: 'December 15, 2017'},
  #   regular_paper_ext:  { title: 'Regular Paper (Extended)',
  #                         proposal: 'December 15, 2017',
  #                         type: :nopropose},
  #   workshop_paper:     { title: 'Workshop Paper',
  #                         proposal: 'March 19, 2018',
  #                         notification: 'April 27, 2018',
  #                         type: :nopropose,
  #                         extended: 'March 26, 2018'},
  #   workshop_paper_ext: { title: 'Workshop Paper (Extended)',
  #                         proposal: 'March 26, 2018',
  #                         type: :nopropose},
  #   author_reg:         { title: 'Author Registration',
  #                         proposal: 'May 15, 2018',
  #                         type: :nopropose},
  #   camera_regular:     { title: 'Camera-Ready Regular Paper',
  #                         proposal: 'April 13, 2018',
  #                         type: :nopropose},
  #   camera_workshop:    { title: 'Camera-Ready Workshop Paper',
  #                         proposal: 'May 11, 2020',
  #                         type: :nopropose},
  #   camera_demo:        { title: 'Camera-Ready Demo Paper',
  #                         proposal: 'May 11, 2018',
  #                         type: :nopropose},
  #   t_mm:               { title: 'T-MM Presentation',
  #                         proposal: 'May 11, 2018',
  #                         type: :nopropose},
  #   author_rebuttal_start:{ title: 'Author Rebuttal Begins',
  #                         proposal: 'Feb 12, 2018',
  #                         type: :nopropose,
  #                         is_rebuttal: true},
  #   author_rebuttal_end: {title: 'Author Rebuttal Ends',
  #                         proposal: 'Feb 19, 2018',
  #                         type: :nopropose,
  #                         is_rebuttal: true,
  #                         deadline: true},
  # }
  @date = {
      special_session:    { title: 'Special Session',
                            proposal: 'March 1, 2020',
                            notification: 'April 1, 2020',
                            notified: true,
                            submission: true,
                            see: false
                          },
      tutorial:           { title: 'Tutorial',
                            proposal: 'March 1, 2020',
                            notification: 'April 1, 2020',
                            notified: true,
                            submission: true,
                            see: false},
      proposal_for:              { title: 'Proposals for Special Sessions, Forum, Panel & Tutorial Sessions',
                                   proposal: 'March 1, 2020',
                                   type: :nopropose,
                                   submission: true,
                                   notified: true},
      acceptance_for:       { title: 'Acceptance for Special Sessions, Forum, Panel & Tutorial Session',
                              notification: 'April 1, 2020',
                              type: :nosubmission,
                              submission: true,
                              notified: true},
      online_submission: { title: 'Online Submission Website Ready for Full, Short and Special Sessions Papers Upload',
                           proposal: 'April 8, 2020',
                           type: :nopropose,
                           submission: false},
      camera_ready:      { title: 'Camera Ready Papers',
                          proposal: 'October 1, 2020',
                          submission: true,
                          is_rebuttal: true,
                          type: :nopropose},
      all_paper_submissions: {title: 'All Paper Submissions',
                              proposal: 'July 1, 2020',
                              is_rebuttal: true,
                              type: :nopropose,
                              deadline: true},
      all_paper_acceptance: {title: 'All Papers Acceptance and authors’ instructions',
                             notification: 'September 1, 2020',
                             notified: true,
                             type: :nosubmission},
      author_reg:           {title: 'Author Registration',
                             proposal: 'October 1, 2020',
                             is_rebuttal: true,
                             type: :nopropose,
                             deadline: true},
      tutorial_session:     {title: 'Tutorial Session Date',
                            proposal: 'December 7, 2020',
                             type: :nopropose},
      summit_conf_1st:          {title: 'Summit and Conference 1st Day',
                             proposal: 'December 8, 2020',
                             type: :nopropose},
      summit_conf_2nd:          {title: 'Summit and Conference 2nd Day',
                                 proposal: 'December 9, 2020',
                                 type: :nopropose},
      summit_conf_3rd:          {title: 'Summit and Conference 3rd Day',
                                 proposal: 'December 10, 2020',
                                 type: :nopropose},

  }

  def self.get_sorted()
    s = Array.new

    marked_date = @date.dup
    marked_date[:is_today] = { proposal: Time.now.strftime('%B %d, %Y') }

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
                     deadline: v[:deadline]
                 })
        else
          s.push({
            date: Date.parse(v[:proposal]),
            title: (v[:submission] ? 'Submission of ' : '') + v[:title] + ((v[:type] || :nil) == :nopropose ? '' : ' Proposal'),
            affix: v[:is_rebuttal] ? nil : :due,
            extended: v[:extended] ? Date.parse(v[:extended]) : nil,
          })
        end
      end

      if v[:notification]
        #s[Date.parse(v[:notification])] = v[:title] + ' Notification';
        s.push({
          date: Date.parse(v[:notification]),
          title: 'Notification of ' + v[:title] + ' Acceptance',
          affix: :notification,
          notified: v[:notified]
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
    
    return s.sort_by{|k| k[:date]}
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