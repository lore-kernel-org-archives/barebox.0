Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 22.98.mail-out.ovh.net ([178.32.115.197]
	helo=98.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qd3YU-00070F-KM
	for barebox@lists.infradead.org; Sat, 02 Jul 2011 17:00:31 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id 88FC34B2DB0
	for <barebox@lists.infradead.org>;
	Sat,  2 Jul 2011 18:59:59 +0200 (CEST)
Date: Sat, 2 Jul 2011 18:45:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110702164500.GA28000@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<1309317858-11861-2-git-send-email-antonynpavlov@gmail.com>
	<4E0F2E23.4000801@pobox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E0F2E23.4000801@pobox.com>
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
Subject: Re: [PATCH 2/4] MIPS: add Malta machine support to barebox
To: Shinya Kuribayashi <skuribay@pobox.com>
Cc: barebox@lists.infradead.org

On 23:41 Sat 02 Jul     , Shinya Kuribayashi wrote:
> On 6/29/11 12:24 PM, Antony Pavlov wrote:
> >The machines use big-endian mode.
> >Only supported peripheral is serial port.
> >
> >Signed-off-by: Antony Pavlov<antonynpavlov@gmail.com>
> >---
> >  arch/mips/Kconfig                                |   13 ++++++++
> >  arch/mips/Makefile                               |    2 +
> >  arch/mips/mach-mti-malta/Kconfig                 |   20 ++++++++++++
> >  arch/mips/mach-mti-malta/Makefile                |    1 +
> >  arch/mips/mach-mti-malta/include/mach/hardware.h |   32 +++++++++++++++++++
> >  arch/mips/mach-mti-malta/reset.c                 |   36 ++++++++++++++++++++++
> >  6 files changed, 104 insertions(+), 0 deletions(-)
> >  create mode 100644 arch/mips/mach-mti-malta/Kconfig
> >  create mode 100644 arch/mips/mach-mti-malta/Makefile
> >  create mode 100644 arch/mips/mach-mti-malta/include/mach/hardware.h
> >  create mode 100644 arch/mips/mach-mti-malta/reset.c
> 
> Just mach-malta would be good?  I don't want to see two '-' hyphens.
> 
> I'm working on the ARM kernel these days, and find mach/plat-based
> categorizing technique useful/promising, and this is a good opportunity
> to try in this MIPS support (even if the Linux/MIPS kernel doesn't).
> 
> >diff --git a/arch/mips/mach-mti-malta/include/mach/hardware.h b/arch/mips/mach-mti-malta/include/mach/hardware.h
> >new file mode 100644
> >index 0000000..f476355
> >--- /dev/null
> >+++ b/arch/mips/mach-mti-malta/include/mach/hardware.h
> >@@ -0,0 +1,32 @@
> >+/*
> >+ * Copyright (c) 2011 Antony Pavlov<antonynpavlov@gmail.com>
> >+ * See file CREDITS for list of people who contributed to this project.
> >+ *
> >+ * This file is part of barebox.
> >+ *
> >+ * barebox is free software: you can redistribute it and/or modify
> >+ * it under the terms of the GNU General Public License as published by
> >+ * the Free Software Foundation, either version 3 of the License, or
> >+ * (at your option) any later version.
> 
> GPLv3?  I'm not sure which GPL version should be applied to barebox,
> but as it's highly based on the Linux kernel technology, GPLv2 (or
> later) would be the case.
Barebox is GPLv2 Only project

So Nack GPLv3

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
