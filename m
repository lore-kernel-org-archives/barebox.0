Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pv0-f177.google.com ([74.125.83.177])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1ODyIv-00043E-GV
	for barebox@lists.infradead.org; Mon, 17 May 2010 11:16:14 +0000
Received: by pvg13 with SMTP id 13so44991pvg.36
	for <barebox@lists.infradead.org>; Mon, 17 May 2010 04:16:11 -0700 (PDT)
From: "Marc Reilly" <marc@cpdesign.com.au>
References: <1273803319-24561-1-git-send-email-marc@cpdesign.com.au>
	<20100517090416.GK31199@pengutronix.de>
In-Reply-To: <20100517090416.GK31199@pengutronix.de>
Date: Mon, 17 May 2010 21:16:08 +1000
Message-ID: <013401caf5b2$5c443c40$14ccb4c0$@cpdesign.com.au>
MIME-Version: 1.0
Content-language: en-au
Reply-To: marc@cpdesign.com.au
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
Subject: RE: V3 patches for imx35pdk boot
To: 'Sascha Hauer' <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

> > Third time's a charm, hopefully. I fixed up all the whitespace issues
> > in 3stack.c and signed off all the patches.
> 
> There are still some trailing whitespaces left. I killed them while
committing.
Sorry, and thanks. I just had a quick scan through the patches that I
emailed and I swear I'd taken care of them...

> > The morale of the story is get it right first go :) (I'm not too sure
> > how to combine patch 1 and 2, and being such a git newb my tree is
> > already starting to look like a pair of octopi mating, so I'm just
> > going to leave as is.)
> 
> Have a look at git rebase -i, it's really nice ;)
That's what I found in the end. The original morale of the story still
stands though.

People should also note that the LCD and IPU remains enabled as the kernel
goes through its initialization. When the IPU is probed/initialized
(somewhere in ipu_common.c)  the IRQ is enabled (and then immediately
disabled after the function returns) before all the data structures are
properly setup. Because the IPU is still enabled the interrupt fires before
the init finishes and the kernel crashes.

TL;DR: either the ipu init in the kernel needs to be tweaked, or turned off
in barebox before boot.

Cheers
Marc



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
