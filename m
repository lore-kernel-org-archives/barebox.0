Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RIbHp-0001n7-1O
	for barebox@lists.infradead.org; Tue, 25 Oct 2011 07:19:01 +0000
Received: from mail34.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id D26221020C6D
	for <barebox@lists.infradead.org>;
	Tue, 25 Oct 2011 09:20:56 +0200 (CEST)
Date: Tue, 25 Oct 2011 08:53:34 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111025065334.GL2638@game.jcrosoft.org>
References: <CAA4bVAHzXtzvbt0n6uYx3hP79iQMSrZaMK920t8LfBFkyNLE8A@mail.gmail.com>
	<20111024195213.GP23421@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111024195213.GP23421@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: lib/md5.o build problem
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On 21:52 Mon 24 Oct     , Sascha Hauer wrote:
> On Mon, Oct 24, 2011 at 07:33:59PM +0400, Antony Pavlov wrote:
> > Hi!
> > 
> > I can't build barebox with md5sum command.
> 
> Grumpf. Something went seriously wrong while merging Jean-Christophes
> digest patch series. Sorry for this, it's my bad. I remerged this series
> again and pushed it to a temporary branch here:
> 
> git://git.pengutronix.de/git/barebox.git digest-next
> 
> Jean-Christophe, can you have a look at it and see if it looks like
> you originally intended?
I see yesterday night too was going to the the fix this morning

yes the md5, etc... need to go to crypto

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
