class PagesController < ApplicationController
  def index
    #Main Page Represent Speaker Lists
  	@carousels = {
  		'Henrik Christensen' => ['IEEE/AAAS Fellow', 'Qualcomm Chancellor\'s Chair, UC San Diego, USA', 'Keynote Speaker'],
  		'Gomila Cristina' => ['CTO, Technicolor, France', 'Keynote Speaker'],
  		'Shrikanth Narayanan' => ['IEEE/AAAS/ASA/ISCA/NAI Fellow', 'Niki & C. L. Max Nikias Chair, University of Southern California, USA', 'Keynote Speaker'],
  		'Ali Begen' => ['Tutorial Speaker', 'Delivering Traditional and Omnidirectional Media'],
  		'Liangping Ma' => ['Tutorial Speaker', 'Delivering Traditional and Omnidirectional Media'],
  		'Christian Timmerer' => ['Tutorial Speaker', 'Delivering Traditional and Omnidirectional Media'],
  		'Kari Pulli' => ['Tutorial Speaker', 'Interactive Augmented Reality with Meta 2'],
  		#'Charles Niu' => ['Tutorial Speaker', 'Interactive Augmented Reality with Meta 2'],
  		'Paulo Jansen' => ['Tutorial Speaker', 'Interactive Augmented Reality with Meta 2'],
  		'Jens-Rainer Ohm' => ['Tutorial Speaker', 'Trends and Recent Developments in Video Coding Standardization'],
  		'Mathias Wien' => ['Tutorial Speaker', 'Trends and Recent Developments in Video Coding Standardization'],
  		'Tao Mei' => ['Tutorial Speaker', 'Multimedia and Language: Bridging Multimedia and Natural Language with Deep Learning'],
  		'Jiebo Luo' => ['Tutorial Speaker', 'Multimedia and Language: Bridging Multimedia and Natural Language with Deep Learning']
  	}
    render 'index'
  end

  def visa_invitation
    key = request['q']
    xval = Visa.get(key)
    ap xval
    case xval[:status]
    when :ok
      val = xval[:value]
      @first_name = val[:name]
      @paper_title = val[:paper_title]
      @paper_date = val[:paper_date]
      @paper_time = val[:paper_time]
      @authors = val[:authors]
      render partial: 'invitation'
    when :guest
      val = xval[:value]
      @first_name = val[:name]
      render partial: 'invitation'
    else
      render partial: 'invitation_not', locals: { reason: xval[:status] }
    end
  end

  def visa_payment
    key = request['q']
    val = Visa.get(key)
    if val and val[:confirmation]
      @first_name = val[:name]
      @confirmation_number = val[:confirmation]
      render partial: 'payment_confirmed'
    else
      render partial: 'payment_not'
    end
  end

end
