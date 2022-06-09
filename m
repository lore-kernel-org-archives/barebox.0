Delivery-date: Thu, 09 Jun 2022 08:04:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBHq-008SEl-CJ
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:04:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBHo-0002ZQ-48
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:04:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lADlJTmVDqPuggC+MYBhCKpAR1iqZsxBNfKQdVRUXD8=; b=vvoX7eWkzp1UHh
	tICjJYCYLGX3EOG9pakELkwHaBvqubeMQF838Zwjq1P9bnyHCncGMMsZ69tA9f8vmto2zR6CYBKKg
	bAQ39RINI/c3ZAr4sc0zYkT5vLp6CYLshwEvjMjWBBFgKplkWnsCDe57c689xKyQsIkFTigVqkT8K
	ArnufpVj8bEIyXZoW8l34xohAR5sAqB+C9+po7vmzgfB3n1fGR1pnB0nC99MRDSKO5sDkOBQSK2Is
	bNBKagEQuw5CgD7F4oHnkPCR7bKS9AtmQEcZ79vHP8Ebym16WMRJWHBJ8rqY8snwuQksLa1wtmfOz
	3l2yPVxMh/IU/WymPoAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBGC-00GxKT-JX; Thu, 09 Jun 2022 06:03:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCm-00Gv8n-67
	for barebox@bombadil.infradead.org; Thu, 09 Jun 2022 05:59:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Opfbab0kQjnsjWYYMI+GUYSqRxlfRcyKU7YJdAFr7So=; b=aLWLB1oO/bD1WKlIMArOJsNXQs
	0dDnEC73ek925F+wIPaaLoBp9GWY2Sf1fBoPoBniaa6jL0oyF/k/z8+KGSv3Njbt5JEQ1502zLnPA
	cd3ll+4b5uMe2WjAN9qZkQFw1Can/nD3UmX2Z2oPduPbmU4qv0N3jw5vzY5Ni5PKNVSswzzQIiAU8
	9j0SOuSXX3Qby9LJrHdqcf8mYg1suBOHf42+FLJL/Ql2zY3bU0V5uC37qzByyGm9kQM119WxU0153
	FF1p+oMx/ODQDxXWgWPeQ938DJbj5cZ2HTwkv4M8kHAQwOWM3MqqzuL2/GgIuAt3ppDvyX1719u9n
	aLeOITkA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCg-006Hhr-C3
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCa-0008KE-RZ; Thu, 09 Jun 2022 07:59:28 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCb-007KAI-Gn; Thu, 09 Jun 2022 07:59:28 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002nZZ-9g; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:04 +0200
Message-Id: <20220609055922.667016-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_065935_158466_B959013A 
X-CRM114-Status: GOOD (  16.79  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 03/21] ARM: rpi: move bcm2835_add_device_sdram() into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We will repurpose core.c in a later commit. It has a single function
similar in spirit to bcm2835_register_fb which lives in a header, so
move it there too.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c |  4 ++-
 arch/arm/mach-bcm283x/Makefile            |  2 +-
 arch/arm/mach-bcm283x/core.c              | 40 -----------------------
 arch/arm/mach-bcm283x/include/mach/core.h | 21 +++++-------
 4 files changed, 13 insertions(+), 54 deletions(-)
 delete mode 100644 arch/arm/mach-bcm283x/core.c

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 05d59ae6bf97..aeb7eef145cd 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -221,8 +221,10 @@ static int rpi_mem_init(void)
 	int ret;
 
 	ret = rpi_get_arm_mem(&size);
-	if (ret)
+	if (ret) {
 		printf("could not query ARM memory size\n");
+		size = get_ram_size((ulong *) BCM2835_SDRAM_BASE, SZ_128M);
+	}
 
 	bcm2835_add_device_sdram(size);
 
diff --git a/arch/arm/mach-bcm283x/Makefile b/arch/arm/mach-bcm283x/Makefile
index e5ef78af978f..d68176441322 100644
--- a/arch/arm/mach-bcm283x/Makefile
+++ b/arch/arm/mach-bcm283x/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-y += core.o mbox.o
+obj-y += mbox.o
diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
deleted file mode 100644
index f2528cf1f150..000000000000
--- a/arch/arm/mach-bcm283x/core.c
+++ /dev/null
@@ -1,40 +0,0 @@
-/*
- * Author: Carlo Caione <carlo@carlocaione.org>
- *
- * Based on mach-nomadik
- * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-
-#include <linux/clk.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-
-#include <io.h>
-#include <asm/armlinux.h>
-#include <linux/sizes.h>
-
-#include <mach/platform.h>
-#include <mach/core.h>
-#include <linux/amba/bus.h>
-
-void bcm2835_add_device_sdram(u32 size)
-{
-	if (!size)
-		size = get_ram_size((ulong *) BCM2835_SDRAM_BASE, SZ_128M);
-
-	arm_add_mem_device("ram0", BCM2835_SDRAM_BASE, size);
-}
diff --git a/arch/arm/mach-bcm283x/include/mach/core.h b/arch/arm/mach-bcm283x/include/mach/core.h
index a1c47f915448..bd272b925df5 100644
--- a/arch/arm/mach-bcm283x/include/mach/core.h
+++ b/arch/arm/mach-bcm283x/include/mach/core.h
@@ -1,24 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2009 Carlo Caione <carlo@carlocaione.org>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #ifndef __BCM2835_CORE_H__
 #define __BCM2835_CORE_H__
 
+#include <common.h>
+#include <linux/types.h>
+#include <linux/sizes.h>
+#include <asm/memory.h>
 #include <mach/platform.h>
 
-void bcm2835_add_device_sdram(u32 size);
+static void inline bcm2835_add_device_sdram(u32 size)
+{
+	arm_add_mem_device("ram0", BCM2835_SDRAM_BASE, size);
+}
 
 static void inline bcm2835_register_fb(void)
 {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

