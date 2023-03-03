Delivery-date: Fri, 03 Mar 2023 10:28:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1iC-007Nrs-Op
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:28:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1iC-0003W3-07
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:28:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2NrA+e0ZjTXQ9NlUEACWQGuU4Ww2jG/E3oZgivTo1sg=; b=Odk7JJxNCARO6+vf8BPQxDwfvA
	XTuGeZsv4uilGu4G3ieAwb62bf8IUTxz9HyT4psS/h9p5ULZQsYmKjgjeW2K4eA4f6CNTpE5pPJ6e
	PR8R/bokLDUaj1WAoJ0GShpNuCfX34OQvpc/3+5GgHCzXUGK3CKHuQ64Yi/n5C5W1MspgfXBxyg0Y
	KuHuElrpi/6whTlbzpWf6+/+5g/G13WLhdQShqSB/QZRyrBUXV14yptzZo8lT42Y2P9VoFycabRXq
	rIMF5Jq6f7bYDRmKCKwUbKU613eMteIk9DF31WUe4lRn3QndZsVabhGX+MiIRlEZB0kJ7w1lI+0cr
	Awuws86A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1gz-005iHL-5Q; Fri, 03 Mar 2023 09:27:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bm-005eS1-Se
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bd-00009w-IJ; Fri, 03 Mar 2023 10:21:37 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bc-001WhV-Lx; Fri, 03 Mar 2023 10:21:36 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2gU-HB; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:01 +0100
Message-Id: <20230303092131.3063587-21-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012146_982103_C0BD3061 
X-CRM114-Status: GOOD (  12.18  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 20/50] ARM: digic: Move mach header files to include/mach/digic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all digic specific header files to include/mach/digic/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/debug_ll.h                               | 2 ++
 drivers/serial/serial_digic.c                                 | 2 +-
 .../mach-digic/include/mach => include/mach/digic}/debug_ll.h | 4 ++--
 .../mach-digic/include/mach => include/mach/digic}/digic4.h   | 0
 .../arm/mach-digic/include/mach => include/mach/digic}/uart.h | 0
 5 files changed, 5 insertions(+), 3 deletions(-)
 rename {arch/arm/mach-digic/include/mach => include/mach/digic}/debug_ll.h (94%)
 rename {arch/arm/mach-digic/include/mach => include/mach/digic}/digic4.h (100%)
 rename {arch/arm/mach-digic/include/mach => include/mach/digic}/uart.h (100%)

diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 7e7241e908..f9a5ca7566 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -44,6 +44,8 @@
 #include <mach/mxs/debug_ll.h>
 #elif defined CONFIG_ARCH_EP93XX
 #include <mach/ep93xx/debug_ll.h>
+#elif defined CONFIG_ARCH_DIGIC
+#include <mach/digic/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/drivers/serial/serial_digic.c b/drivers/serial/serial_digic.c
index 31880ca996..61ba7d06f3 100644
--- a/drivers/serial/serial_digic.c
+++ b/drivers/serial/serial_digic.c
@@ -10,7 +10,7 @@
 #include <malloc.h>
 #include <io.h>
 
-#include <mach/uart.h>
+#include <mach/digic/uart.h>
 
 /*
  * This driver is based on the "Serial terminal" docs here:
diff --git a/arch/arm/mach-digic/include/mach/debug_ll.h b/include/mach/digic/debug_ll.h
similarity index 94%
rename from arch/arm/mach-digic/include/mach/debug_ll.h
rename to include/mach/digic/debug_ll.h
index 3b17100dae..1af1a27e91 100644
--- a/arch/arm/mach-digic/include/mach/debug_ll.h
+++ b/include/mach/digic/debug_ll.h
@@ -18,8 +18,8 @@
 #define __MACH_DEBUG_LL_H__
 
 #include <io.h>
-#include <mach/digic4.h>
-#include <mach/uart.h>
+#include <mach/digic/digic4.h>
+#include <mach/digic/uart.h>
 
 #define DEBUG_LL_UART         DIGIC4_UART
 
diff --git a/arch/arm/mach-digic/include/mach/digic4.h b/include/mach/digic/digic4.h
similarity index 100%
rename from arch/arm/mach-digic/include/mach/digic4.h
rename to include/mach/digic/digic4.h
diff --git a/arch/arm/mach-digic/include/mach/uart.h b/include/mach/digic/uart.h
similarity index 100%
rename from arch/arm/mach-digic/include/mach/uart.h
rename to include/mach/digic/uart.h
-- 
2.30.2



