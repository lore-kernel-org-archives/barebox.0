Delivery-date: Wed, 24 Apr 2024 08:41:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKK-00EONW-28
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 08:41:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKJ-0000ZM-2i
	for lore@pengutronix.de; Wed, 24 Apr 2024 08:41:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kP+lYJH2zMY7Syvc07tOYxFXUduc6aYlcd6jJYxqXfg=; b=wcNLPMTCOTmZ9r5d0eLx1pmSmv
	wZJTc9Z6u1eWvyCPgMK7a159lltca/tNfTws9t29RpPU+Ohqdg5W5XA/+/T2T7GOy8mZCMhuJghgm
	s41c+Re+sZwtG5nlVrplQ4fQWglpryO18GHDR/otte1AHG08R7v/ctJbpu+4daJ0hEdJgRQrS5+h0
	v/rXqOvA/J9CjaNXrIU4RHiVzfTg8jPPj0ADV0QGCzX73/y6HmnwCo1K+JORqGVmp8cjDuFW+7qia
	nccjSjwX5Bh0FUsRCpq8V1RgG+fD26XeUl13ACEo1Zy5bnXWUgpfwZkYi5Tdu+qJ/p2t4qeZ/BGop
	usdjrGYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJh-00000002v9a-1hfb;
	Wed, 24 Apr 2024 06:41:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJW-00000002uzd-2Quv
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 06:41:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-0008Be-NF; Wed, 24 Apr 2024 08:41:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00E1yk-9r; Wed, 24 Apr 2024 08:41:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-0j;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:41 +0200
Message-Id: <20240424064058.3608016-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_234106_872770_D964B719 
X-CRM114-Status: GOOD (  10.47  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 06/23] dma: remove common.h include from asm/dma.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

<common.h> inclusion will lead to a recursive inclusion with incoming
changes, so avoid that by using the headers that are actually needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/dma.h  | 5 ++++-
 arch/kvx/include/asm/dma.h  | 4 +++-
 arch/mips/include/asm/dma.h | 3 ++-
 arch/mips/lib/dma-default.c | 1 +
 4 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index 0774a11c5a30..d045f00c67cf 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -1,7 +1,10 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /* SPDX-FileCopyrightText: 2012 Marc Kleine-Budde <mkl@pengutronix.de> */
 
-#include <common.h>
+#include <linux/types.h>
+#include <linux/string.h>
+#include <xfuncs.h>
+#include <malloc.h>
 
 #define DMA_ALIGNMENT	64
 
diff --git a/arch/kvx/include/asm/dma.h b/arch/kvx/include/asm/dma.h
index c6f67e76d024..f1b54afe25f5 100644
--- a/arch/kvx/include/asm/dma.h
+++ b/arch/kvx/include/asm/dma.h
@@ -4,7 +4,9 @@
 #ifndef __ASM_DMA_H
 #define __ASM_DMA_H
 
-#include <common.h>
+#include <linux/types.h>
+#include <linux/build_bug.h>
+#include <malloc.h>
 
 #define DMA_ALIGNMENT	64
 
diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
index 5c5b6d5b3a58..dbcbfa40768d 100644
--- a/arch/mips/include/asm/dma.h
+++ b/arch/mips/include/asm/dma.h
@@ -6,7 +6,8 @@
 #ifndef __ASM_DMA_H
 #define __ASM_DMA_H
 
-#include <common.h>
+#include <linux/pagemap.h>
+#include <linux/types.h>
 #include <malloc.h>
 #include <xfuncs.h>
 #include <asm/addrspace.h>
diff --git a/arch/mips/lib/dma-default.c b/arch/mips/lib/dma-default.c
index 54e66654687f..74aa8af55c45 100644
--- a/arch/mips/lib/dma-default.c
+++ b/arch/mips/lib/dma-default.c
@@ -4,6 +4,7 @@
  */
 
 #include <dma.h>
+#include <linux/bug.h>
 #include <asm/io.h>
 
 void arch_sync_dma_for_cpu(void *vaddr, size_t size,
-- 
2.39.2



