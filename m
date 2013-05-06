Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZRFd-0002iu-1Q
 for barebox@lists.infradead.org; Mon, 06 May 2013 19:39:10 +0000
Received: from mail414.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 5D5E6FF986F
 for <barebox@lists.infradead.org>; Mon,  6 May 2013 21:38:46 +0200 (CEST)
Date: Mon, 6 May 2013 21:34:22 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130506193422.GA30509@game.jcrosoft.org>
References: <20130504195125.GJ13393@game.jcrosoft.org>
 <20130504203213.GS31290@titan.lakedaemon.net>
 <20130505111927.GK13393@game.jcrosoft.org>
 <20130506155352.15f23d3a@skate>
 <20130506135435.GL13393@game.jcrosoft.org>
 <20130506160614.054b5e1a@skate>
 <20130506140439.GM13393@game.jcrosoft.org>
 <20130506161329.74d58c37@skate>
 <20130506141447.GO13393@game.jcrosoft.org>
 <20130506143113.GB22505@1wt.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130506143113.GB22505@1wt.eu>
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
Subject: Re: [PATCH 2/7] scripts: new kwbimage manipulation tool for
 Marvell SoC boot images
To: Willy Tarreau <w@1wt.eu>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Lior Amsalem <alior@marvell.com>, Jason Cooper <jason@lakedaemon.net>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, barebox@lists.infradead.org

On 16:31 Mon 06 May     , Willy Tarreau wrote:
> Jean-Christophe,
> 
> On Mon, May 06, 2013 at 04:14:47PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > >  2) Because it's useful to extract the binary blob needed to configure
> > >  the DDR3 timing dynamically (for Armada 370/XP).
> > 
> > You do not read the comment
> > 
> > we need *runtime* update not *only* *xmodem* flashing. Barebox need to extract
> > by itself the information from a running platfrom in C
> > 
> > This is the barebox update that will ensure a binary is correct before
> > flashing and can only request barebox and not the blob stuff to udpate itself
> 
> I have read your comments as well and still don't understand what you want
> to explain. I think it would be more productive to spend the time to write
> real sentences and detailed explanations. Right now you're only in the
> "no thanks" mode and it's very hard to understand your concerns.
> 
> You can't blame people for not understanding you when you are the one who
> has difficulties explaining basic things in public.
so read the code of barebox before speaking

when I mention barebox update is a specific part of the code, if you do not
read the code you can not understand what I talk about. So no I'll not spend
time to explain you code that you did not read.
> 
> > > Have you read Sascha comment?
> > Yes you do not read what I write. I write *runtime* not *compiling* time
> 
> But for runtime to work, you need to boot at least once. The concern here
> is to get it to boot the first time, and for this, extracting the binary
> blob is needed.

No, it's not.
It's to simplify the job of hacker.
Not mandatory.

And it's does not require you to generate the image before flashing.
And request the blob by XMODEM will NEVER work to update at runtime as can not
discuss with the ROM code via XMODEM. So yes this will not work for self
update

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
