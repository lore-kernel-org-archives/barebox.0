Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StCKY-0002ZN-2A
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 06:41:24 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 8EC8CFF9556
 for <barebox@lists.infradead.org>; Mon, 23 Jul 2012 08:46:38 +0200 (CEST)
Date: Mon, 23 Jul 2012 08:41:34 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120723064134.GO22657@game.jcrosoft.org>
References: <20120723042052.GK22657@game.jcrosoft.org>
 <1343017563-27932-1-git-send-email-plagnioj@jcrosoft.com>
 <1343017563-27932-6-git-send-email-plagnioj@jcrosoft.com>
 <20120723063523.GV30009@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120723063523.GV30009@pengutronix.de>
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

On 08:35 Mon 23 Jul     , Sascha Hauer wrote:
> On Mon, Jul 23, 2012 at 06:26:02AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Today we link to whole barebox and rely on gcc to cleanup via it's garbage
> > collector.
> > Now we specify only what is needed and introduce a new directory with source
> > only related to the compressed target.
> > 
> > Build it in arch/<arm>/compressed
> > Rebuild all the needed object.
> > 
> > Keep the previous target untouched.
> > This fix the modules support and allow custom flags for each file.
> > 
> > Import string functions from linux 3.4 (arch/arm/boot/compressed/string.c) and
> > implement a dummy panic.
> 
> This does not work on all targets having a lowlevel init:
> 
> arch/arm/compressed/start.o: In function `reset':
> start.c:(.text_bare_init.text+0x28): undefined reference to `board_init_lowlevel'
> 
> Why don't we simply do this:
> 
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 647c536..12869b3 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -150,11 +150,9 @@ TEXT_BASE = $(CONFIG_TEXT_BASE)
>  
>  CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
>  
> -ifndef CONFIG_MODULES
>  # Add cleanup flags
>  CPPFLAGS += -fdata-sections -ffunction-sections
>  LDFLAGS_barebox += -static --gc-sections
> -endif
you can not do this as this break modules

for board_init_lowlevel we need to add it to the decompressor

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
