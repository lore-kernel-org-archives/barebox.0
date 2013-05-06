Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1wt.eu ([62.212.114.60])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZRUQ-00030G-O6
 for barebox@lists.infradead.org; Mon, 06 May 2013 19:54:27 +0000
Date: Mon, 6 May 2013 21:53:59 +0200
From: Willy Tarreau <w@1wt.eu>
Message-ID: <20130506195359.GK22505@1wt.eu>
References: <20130504203213.GS31290@titan.lakedaemon.net>
 <20130505111927.GK13393@game.jcrosoft.org> <20130506155352.15f23d3a@skate>
 <20130506135435.GL13393@game.jcrosoft.org> <20130506160614.054b5e1a@skate>
 <20130506140439.GM13393@game.jcrosoft.org> <20130506161329.74d58c37@skate>
 <20130506141447.GO13393@game.jcrosoft.org> <20130506143113.GB22505@1wt.eu>
 <20130506193422.GA30509@game.jcrosoft.org>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130506193422.GA30509@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/7] scripts: new kwbimage manipulation tool for Marvell
 SoC boot images
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Lior Amsalem <alior@marvell.com>, Jason Cooper <jason@lakedaemon.net>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, barebox@lists.infradead.org

On Mon, May 06, 2013 at 09:34:22PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > This is the barebox update that will ensure a binary is correct before
> > > flashing and can only request barebox and not the blob stuff to udpate itself
> > 
> > I have read your comments as well and still don't understand what you want
> > to explain. I think it would be more productive to spend the time to write
> > real sentences and detailed explanations. Right now you're only in the
> > "no thanks" mode and it's very hard to understand your concerns.
> > 
> > You can't blame people for not understanding you when you are the one who
> > has difficulties explaining basic things in public.
> so read the code of barebox before speaking
> 
> when I mention barebox update is a specific part of the code, if you do not
> read the code you can not understand what I talk about. So no I'll not spend
> time to explain you code that you did not read.

Then I think we're speaking about two different thing which might be the reason
for your misunderstanding. In order to get the bootloader run on these chips,
you *need* the DDR3 training code. So whatever is in the bootloader update code
is irrelevant at this step as it will not be used at all yet.

> > > > Have you read Sascha comment?
> > > Yes you do not read what I write. I write *runtime* not *compiling* time
> > 
> > But for runtime to work, you need to boot at least once. The concern here
> > is to get it to boot the first time, and for this, extracting the binary
> > blob is needed.
> 
> No, it's not.
> It's to simplify the job of hacker.
> Not mandatory.

No, it's to get the CPU to boot and to accept to load the boot loader. Period.

> And it's does not require you to generate the image before flashing.
> And request the blob by XMODEM will NEVER work to update at runtime as can not
> discuss with the ROM code via XMODEM. So yes this will not work for self
> update

You seem to be assuming that the bootloader is already running fine on the
box, which is not the case that Thomas has addressed. In order to *flash*
the bootloader to the device, you need that DDR3 code to be *executed*, and
if you had read his cover mail carefully, you'd have seen that this happens
*during* the XMODEM upload sequence (hence the changes to kwboot to protect
the upload while this code talks to the serial port). It's painful but that's
how it works, and once you get it after all it's rather flexible in the end.

So please don't use your update code as an argument as it's not the interesting
part here.

Thank you,
Willy


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
