module ContactHelper
  @contact = {
    honorary: {
      title: 'Honorary Chairs',
      members: ['Sadaoki Furui,Toyota Technological Institute at Chicago',
                'K.-J. Ray Liu,University of Maryland',
                'Haizhou Li,National University of Singapore',
                'Wan-Chi Siu,Hong Kong Polytechnical University',
                'Hitoshi Kiya,Tokyo Metropolitan University',
                'Anthony Kuh,University of Hawaii'],
      photos: ['01-Furui',
               '02-Liu',
               '03-Li',
               '04-Siu',
               '05-Kiya',
               '06-Kuh'],
      emails: ['furui@ttic.edu',
               'kjrliu@umd.edu',
               'haizhou.li@nus.edu.sg',
               'wan.chi.siu@polyu.edu.hk',
               'kiya@tmu.ac.jp',
               'kuh@hawaii.edu']
    },

    conference: {
      title: 'Conference Chairs',
      members: ['Waleed Abdulla,University of Auckland',
                'C.-C. Jay Kuo,USC, USA',
                'Tatsuya Kawahara,Kyoto University',
                'Sing Nguang, The University of Auckland'],
      photos: ['07-Abdulla',
               '08-Kuo',
               '09-Kawahara',
               '43-Sing'],
      emails: ['w.abdulla@auckland.ac.nz',
               'cckuo@sipi.usc.edu',
               'kawahara@i.kyoto-u.jp',
               'sk.nguang@auckland.ac.nz'
      ]
    },

    tpc: {
        title: 'TPC Chairs',
        members: ['Nam Ik Cho,Seoul National University, Korea',
                  'Jiwu Huang,Shenzhen University, China',
                  'Koichi Shinoda,Tokyo Institute of Technology',
                  'Yoshinobu Kajikawa,Kansai University, Japan',
                  'Mingyi He, NPU, China',
                  'Dong Wang,Tsinghua University, China',
                  'Supavadee Aramvith,Chulalongkorn University',
                  'Isao Echizen,National Institute of Informatics, Japan',
                  'Osamu Takyu, Shinshu University, Japan',
                  'Zhiyi Yu,Sun Yat-sen University',
                  'Kazushi Ikeda,Nara Institute of Science and Technology',
                 ],
        photos: ['10-Cho',
                 '11-Huang',
                 '12-Shinoda',
                 '13-Kajikawa',
                 '14-He',
                 '15-Wang',
                 '16-Aramvith',
                 '1001-IsaoEchizen',
                 'WCN_OsamuTAKYU',
                 '19-Yu',
                 '20-Ikeda',
        ],
        emails: ['nicho@snu.ac.kr',
                 'jwhuang@szu.edu.cn',
                 'shinoda@c.titech.ac.jp',
                 'kaji@kansai-u.ac.jp',
                 'myhe@nwpu.edu.cn',
                 'wangdong99@mails.tsinghua.edu.cn',
                 'supavadee.a@chula.ac.th',
                 'iechizen@nii.ac.jp',
                 'takyu@shinshu-u.ac.jp',
                 'yuzhiyi@mail.sysu.edu.cn',
                 'kazushi@is.naist.jp']
    },

    plenary: {
      title: 'Plenary Chairs',
      members: ['Min Wu,University of Maryland',
                'Woon Seng Gan,Nanyang Technological University',
                'Antonio Ortega,University of Southern California'],
      photos: ['21-Wu',
               '22-Gan',
               '23-Ortega'
               ],
      emails: ['minwu@umd.edu',
               'minwu@umd.edu',
               'antonio.ortega@ee.usc.edu'
      ]
    },

    tutorial: {
      title: 'Tutorial Chairs',
      members: ['Eliathamby Ambikairajah,UNSW Sydney',
                'Vidhya Sethu,UNSW Sydney'],
      photos: ['24-Ambikairajah',
               '25-Sethu'],
      emails: ['ambi@ee.unsw.edu.au',
               'v.sethu@unsw.edu.au'
      ]
    },

    overview_session: {
      title: 'OverView Session Chairs',
      members: ['Chung-Hsien Wu,National Cheng-Kung University',
                'Kai-Kuang Ma,Nanyang Technological University'],
      photos: ['26-Wu',
               '27-Ma'],
      emails: ['chwu@csie.ncku.edu.tw',
               'EKKMA@ntu.edu.sg'
      ]
    },

    # industrial_forum: {
    #     title: 'Industrial Forum Chairs',
    #     members: ['Guan-Ming Su,Dolby Labs'],
    #     photos: ['28-Su'],
    #     emails: ['guanmingsu@gmail.com']
    # },
    industrial_forum: {
        title: 'Industrial Forum Chairs',
        members: ['Xun Xu,The University of Auckland'],
        photos: ['1001-Xun Xu'],
        emails: []
    },
    special_session: {
      title: 'Special Session Chairs',
      members: ['Wen-Huang Cheng,National Chiao-Tung University',
                'Jiaying Liu,Peking University',
                'Chang-Su Kim,Korea University'],
      photos: ['29-Cheng',
               '30-Liu',
               '31-Kim'],
      emails: ['whcheng@nctu.edu.tw',
               'liujiaying@pku.edu.cn',
               'changsukim@korea.ac.kr']
    },

    sponsor: {
      title: 'Sponsor Chairs',
      members: ['Thomas Fang Zheng,Tsinghua University',
                'Lei Xie,Northwestern Polytechnical University',
                'Yun Sing Koh,The University of Auckland',
                'Nitish Patel,The University of Auckland'],
      photos: ['32-Zheng',
               '33-Xie',
               '1001-Yun Sing Koh',
               '1001- Nitish Patel'],
      emails: ['fzheng@tsinghua.edu.cn',
               'lxie@nwpu.edu.cn']
    },

    finance: {
      title: 'Finance Chair',
      members: ['Kenneth Lam,Hong Kong Polytechnical University','Nirmal Nair,The University of Auckland'],
      photos: ['34-Lam','1001-Nirmal Nair'],
      emails: ['kin.man.lam@polyu.edu.hk']
    },

    registration: {
        title: 'Registration Chair',
        members: ['Bonnie N.F. Law,Hong Kong Polytechnical University','Iman T. Ardekani,Unitec institute of technology'],
        photos: ['35-Law','1001-Iman T. Ardekani'],
        emails: ['ngai.fong.law@polyu.edu.hk']
    },

    publication: {
      title: 'Publication Chair',
      members: ['Sanghoon Lee,Yonsei University'],
      photos: ['36-Lee'],
      emails: ['slee@yonsei.ac.kr']
    },

    web: {
        title: 'Web Chair',
        members: ['Je-Won Kang,Ewha University'],
        photos: ['37-Kang'],
        emails: ['jewonk@ewha.ac.kr']
    },

    publicity: {
      title: 'Publicity Chairs',
      members: ['Hiroshi Saruwatari,University of Tokyo',
                'Ming-Ting Sun,University of Washington',
                'Roberto Togneri,The University of Western Australia',
                'Changchun Bao ,Beijing University fo Technology',
                'Yo-Sung Ho,Gwangju Institute of Science and Technology',
                'Martin Drahansky, Brno University of Technology'],
      photos: ['39-Saruwatari',
               '40-Sun',
               '41-Togneri',
               '42-Bao',
               '38-Ho','1001-Martin Drahansky '],
      emails: ['hoyo@gist.ac.kr',
               'hiroshi_saruwatari@ipc.i.u-tokyo.ac.jp',
               'sun@ee.washington.edu',
               'roberto.togneri@uwa.edu.au',
               'chchbao@bjut.edu.cn'
      ]
    },

    web: {
        title: 'Local Management Committee',
        members: ['Akshya Swain (Chair), The University of Auckland',
                  'William Lee,The University of Auckland',
                  'Yuqian Lu,The University of Auckland',
                  'Ho Seok,The University of Auckland'],
        photos: ['1001-Akshya Swain (Chair)',
                 'William Lee',
                 '1001-Yuqian Lu',
                 '1001-Ho Seok'],
        emails: []
    },
  }

  def self.get_contact spec: nil
    if spec
      return @contact[spec]
    end

    return @contact.select{ |k, v| v[:not_oc] == nil }
  end
end