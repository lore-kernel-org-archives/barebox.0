Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StDa9-0007L0-55
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 08:01:35 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id EC2FDFF9729
 for <barebox@lists.infradead.org>; Mon, 23 Jul 2012 10:07:12 +0200 (CEST)
Date: Mon, 23 Jul 2012 10:02:08 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120723080208.GP22657@game.jcrosoft.org>
References: <20120723042052.GK22657@game.jcrosoft.org>
 <1343017563-27932-1-git-send-email-plagnioj@jcrosoft.com>
 <1343017563-27932-6-git-send-email-plagnioj@jcrosoft.com>
 <20120723063523.GV30009@pengutronix.de>
 <20120723064134.GO22657@game.jcrosoft.org>
 <20120723071622.GX30009@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120723071622.GX30009@pengutronix.de>
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
Subject: Re: [PATCH 6/7] compressed: rename barebox target to zbarebox and
 zbarebox.bin
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:16 Mon 23 Jul     , Sascha Hauer wrote:
> On Mon, Jul 23, 2012 at 08:41:34AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 08:35 Mon 23 Jul     , Sascha Hauer wrote:
> > > On Mon, Jul 23, 2012 at 06:26:02AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > Today we link to whole barebox and rely on gcc to cleanup via it's garbage
> > > > collector.
> > > > Now we specify only what is needed and introduce a new directory with source
> > > > only related to the compressed target.
> > > > 
> > > > Build it in arch/<arm>/compressed
> > > > Rebuild all the needed object.
> > > > 
> > > > Keep the previous target untouched.
> > > > This fix the modules support and allow custom flags for each file.
> > > > 
> > > > Import string functions from linux 3.4 (arch/arm/boot/compressed/string.c) and
> > > > implement a dummy panic.
> > > 
> > > This does not work on all targets having a lowlevel init:
> > > 
> > > arch/arm/compressed/start.o: In function `reset':
> > > start.c:(.text_bare_init.text+0x28): undefined reference to `board_init_lowlevel'
> > > 
> > > Why don't we simply do this:
> > > 
> > > 
> > > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > > index 647c536..12869b3 100644
> > > --- a/arch/arm/Makefile
> > > +++ b/arch/arm/Makefile
> > > @@ -150,11 +150,9 @@ TEXT_BASE = $(CONFIG_TEXT_BASE)
> > >  
> > >  CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
> > >  
> > > -ifndef CONFIG_MODULES
> > >  # Add cleanup flags
> > >  CPPFLAGS += -fdata-sections -ffunction-sections
> > >  LDFLAGS_barebox += -static --gc-sections
> > > -endif
> > you can not do this as this break modules
> 
> Does it really?
> 
> I see this goes back to:
> 
> commit 8a03bff03ebf36b7460e6ec43259bc8b40731ece
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Thu Jul 3 10:30:44 2008 +0200
> 
>     [arm] Add cleanup flags only when modules are disabled. Otherwise
>           we remove functions from the binary which are needed for
>           modules
> 
> I can't see though why this should happen. What is needed for modules
> is defined by EXPORT_SYMBOL.
> 
> Unfortunately modules are quite broken atm for me anyway, so I can't
> test.
except you need to use the barebox file to link the ko

and that is one of the reason we do need to call the compressed barebox
zbarebox

and I'd like to be able to detect when it's a normal barebox and a zbarebox
so need to have start.c compiled 2 times

I really do not like this link with the whole barebox in the zbarebox

keep stuff clean and seperated is really better

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
