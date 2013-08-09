# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

publications = {
:p1 => { :name => "National Review", :political_bent => "conservative",
            :url => "http://www.nationalreview.com/" },
:p2 => { :name => "The New Republic", :political_bent => "liberal",
            :url => "http://www.newrepublic.com/" },
:p3 => { :name => "The Nation", :political_bent => "liberal",
            :url => "http://www.thenation.com/" },
:p5 => { :name => "The New Yorker", :political_bent => "liberal",
            :url => "http://www.newyorker.com/" },
:p4 => { :name => "The Weekly Standard", :political_bent => "conservative",
            :url => "http://www.weeklystandard.com/" },
:p5 => { :name => "Democracy", :political_bent => "liberal",
            :url => "http://www.democracyjournal.org/" },
:p6 => { :name => "National Affairs", :political_bent => "conservative",
            :url => "http://www.nationalaffairs.com/" },
:p7 => { :name => "The Economist", :political_bent => nil,
            :url => "http://www.economist.com/" },
:p8 => { :name => "London Review of Books", :political_bent => nil,
            :url => "http://www.lrb.co.uk/" },
:p9 => { :name => "The Spectator", :political_bent => nil,
            :url => "http://www.spectator.co.uk/" },
:p10 => { :name => "Claremont Review of Books", :political_bent => "conservative",
            :url => "http://www.claremont.org/" },
:p11 => { :name => "Front Porch Republic", :political_bent => "conservative",
            :url => "http://www.frontporchrepublic.com/" },
:p12 => { :name => "Reason", :political_bent => "libertarian",
            :url => "http://reason.com/" },
:p13 => { :name => "First Things", :political_bent => "social conservative",
            :url => "http://www.firstthings.com/" },
:p14 => { :name => "Public Discourse", :political_bent => "social conservative",
            :url => "http://www.thepublicdiscourse.com/" },
:p15 => { :name => "The American Conservative", :political_bent => "eclectic dissidents",
            :url => "http://www.theamericanconservative.com/" },
:p16 => { :name => "Jacobin", :political_bent => "neo-Marxist",
            :url => "http://jacobinmag.com/" },
:p17 => { :name => "The New Inquiry", :political_bent => "neo-Marxist",
            :url => "http://thenewinquiry.com/" }
}

publications.each do |key, val|
    Publication.create(:name => val[:name], :political_bent => val[:political_bent],
                        :url => val[:url])
end

