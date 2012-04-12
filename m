Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIIfR-0004oM-OP
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 11:58:26 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 3901FFF948E
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2012 13:48:08 +0200 (CEST)
Date: Thu, 12 Apr 2012 13:29:35 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120412112935.GB11079@game.jcrosoft.org>
References: <1334122954-19623-1-git-send-email-plagnioj@jcrosoft.com>
 <20120412100109.GV3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120412100109.GV3852@pengutronix.de>
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
Subject: Re: [PATCH 1/1] arm: add Android boot image support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Magnus Damm <magnus.damm@gmail.com>

On 12:01 Thu 12 Apr     , Sascha Hauer wrote:
> On Wed, Apr 11, 2012 at 07:42:34AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > The Android Image contains 3 components and params
> > 
> >  - kernel
> >  - initrd
> >  - second stage (optional)
> > 
> >  - tags addr
> >  - bootargs
> > 
> > In fast boot the initrd is mandatory, in barebox we are less restrictive
> > use the initrd only if present
> > 
> > add to env params:
> > image_noverwrite_bootargs
> > 	Disable overwrite of the bootargs with the one present in aimage
> > 
> > aimage_noverwrite_tags
> > 	Disable overwrite of the tags addr with the one present in aimage
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > Cc: Magnus Damm <magnus.damm@gmail.com>
> > ---
> >  arch/arm/lib/bootm.c |  147 ++++++++++++++++++++++++++++++++++++++++++++++++++
> >  commands/Kconfig     |    7 +++
> >  include/aimage.h     |   74 +++++++++++++++++++++++++
> >  3 files changed, 228 insertions(+), 0 deletions(-)
> >  create mode 100644 include/aimage.h
> > 
> > diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> 
> Can we have this in a seperate file? You made Android support optional
> already and support is only registered when the option is enabled, but
> the code is compiled even without the option.
IIRC the struct is droped by the garbage collector as it's never used

the idea is to compile it always but drop it is not used

without the option

# ls -al build/tny-a9263/barebox.bin 
-rwxr-xr-x 1 root root 259056 Apr 12 18:29 build/tny-a9263/barebox.bin

with it
# ls -al build/tny-a9263/barebox.bin 
-rwxr-xr-x 1 root root 259960 Apr 12 19:45 build/tny-a9263/barebox.bin

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
