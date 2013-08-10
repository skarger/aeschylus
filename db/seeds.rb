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
:p4 => { :name => "The New Yorker", :political_bent => "liberal",
            :url => "http://www.newyorker.com/" },
:p5 => { :name => "The Weekly Standard", :political_bent => "conservative",
            :url => "http://www.weeklystandard.com/" },
:p6 => { :name => "Democracy", :political_bent => "liberal",
            :url => "http://www.democracyjournal.org/" },
:p7 => { :name => "National Affairs", :political_bent => "conservative",
            :url => "http://www.nationalaffairs.com/" },
:p8 => { :name => "The Economist", :political_bent => nil,
            :url => "http://www.economist.com/" },
:p9 => { :name => "London Review of Books", :political_bent => nil,
            :url => "http://www.lrb.co.uk/" },
:p10 => { :name => "The Spectator", :political_bent => nil,
            :url => "http://www.spectator.co.uk/" },
:p11 => { :name => "Claremont Review of Books", :political_bent => "conservative",
            :url => "http://www.claremont.org/" },
:p12 => { :name => "Front Porch Republic", :political_bent => "conservative",
            :url => "http://www.frontporchrepublic.com/" },
:p13 => { :name => "Reason", :political_bent => "libertarian",
            :url => "http://reason.com/" },
:p14 => { :name => "First Things", :political_bent => "social conservative",
            :url => "http://www.firstthings.com/" },
:p15 => { :name => "Public Discourse", :political_bent => "social conservative",
            :url => "http://www.thepublicdiscourse.com/" },
:p16 => { :name => "The American Conservative", :political_bent => "eclectic dissidents",
            :url => "http://www.theamericanconservative.com/" },
:p17 => { :name => "Jacobin", :political_bent => "neo-Marxist",
            :url => "http://jacobinmag.com/" },
:p18 => { :name => "The New Inquiry", :political_bent => "neo-Marxist",
            :url => "http://thenewinquiry.com/" }
}

publications.each do |key, val|
    Publication.create(:name => val[:name], :political_bent => val[:political_bent],
                        :url => val[:url])
end

