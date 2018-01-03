Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eWndj-0000yJ-8Z
 for barebox@lists.infradead.org; Wed, 03 Jan 2018 18:19:49 +0000
Date: Wed, 3 Jan 2018 19:19:27 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180103181927.GA13201@ravnborg.org>
References: <20171231083407.GA16645@ravnborg.org>
 <20180101083407.GA9460@ravnborg.org>
 <20180101170528.GA4087@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180101170528.GA4087@ravnborg.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Mails lost towards barebox mailing list [Was: [PATCH v4 0/25]
 at91: move ...]
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi all.

Continuing my monolouge :-)

On Mon, Jan 01, 2018 at 06:05:28PM +0100, Sam Ravnborg wrote:
> On Mon, Jan 01, 2018 at 09:34:07AM +0100, Sam Ravnborg wrote:
> > Good morning - and happy new year!
> > 
> > Something seems fishy here.
> ...
> > But I can see that no mails have reached the Barebox mailing
> > list for this or the following patch-set.
> > (Checked the web version) So something is not OK.
> I managed to send most mail out using my normal smtp server.
> And then I used Google smtp to send the remaining mails.
> So they are out order - sorry.
> 
> This was not what I had planned to start the new year with.

I have tracked down the culprint.
If my mails include following address:
<http : // www . calao-systems . com>
then they are marked as spam.

My first mail to ISP helpdesk was answered by a less skilled person.
Hopefully the second mail reaches a person that at least can read
all of my mail.

I have no clue what kind of blacklisting they use.

I checked here:
https://mxtoolbox.com/blacklists.aspx

and all reported OK.

I hope they find a way to fix it.
Until then I may have to revert to the Google smtp solution.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
