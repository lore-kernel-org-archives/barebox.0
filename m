Delivery-date: Fri, 30 Sep 2022 17:47:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeIEh-001Xlu-Rc
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 17:47:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeIEf-0001LB-GH
	for lore@pengutronix.de; Fri, 30 Sep 2022 17:47:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ow3eZDzuRM0w1Ix13f5nrjGmopbMWbLAuo2v5Z/bTwQ=; b=dEAF6zk2A5Hy2qB739ZQCDW4HP
	I8ljGeoxBFE6+FR+kAnjHn/RQoqtXH3ws5YdXl2u2C3qL9bRQWQCj7h5NikhVGTYJuVWII5G2F3x3
	ZZq1kR9G8RRLu/Unoxtv/tRAvKTViajjvIlA+0eTfnEcot67m3nBel8wmVA90otvv249+NbRCtwl1
	bMFO9buCLcSlHzbrMfA6HmxUHjgFhvMKtisDbkGTSpDPabLCZTO3pIyAgzuixDwZ/FRLHUiMQLx7U
	4V8rRv7V22NSiu1B4IUnIXBOM/1VbDs7GsfymRJ7TbOmbKQaX1B0TqaWtpyrwx5e2PHEZ2wfnW8Pz
	b0ZrfmCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeIDD-00ALe0-6u; Fri, 30 Sep 2022 15:46:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeIA7-00AJjd-Dn
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 15:42:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oeIA6-0008VE-4t; Fri, 30 Sep 2022 17:42:50 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeIA6-003pO2-Um; Fri, 30 Sep 2022 17:42:49 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeIA4-003AvR-Fi; Fri, 30 Sep 2022 17:42:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Sep 2022 17:42:46 +0200
Message-Id: <20220930154247.756577-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_084251_503237_8794B0B8 
X-CRM114-Status: GOOD (  11.76  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] include: move panic() prototype to <printk.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The panic declaration in <linux/kernel.h> is out of place and unexpected
as it's not a Linux kernel. printf() and printk() are defined in
<printk.h>, so move it there too. Most files making use of panic(), pull
it in via <common.h>, so we only need to adjust two headers for the
new location.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.h | 1 +
 include/firmware.h        | 1 +
 include/linux/kernel.h    | 2 --
 include/printk.h          | 2 ++
 4 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index c9ea2c122857..7a69122ee6fa 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -3,6 +3,7 @@
 #ifndef __ARM_MMU_COMMON_H
 #define __ARM_MMU_COMMON_H
 
+#include <printk.h>
 #include <linux/types.h>
 #include <linux/ioport.h>
 #include <linux/kernel.h>
diff --git a/include/firmware.h b/include/firmware.h
index 2cfaeb1e6a91..cfb88993222a 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -7,6 +7,7 @@
 #define FIRMWARE_H
 
 #include <pbl.h>
+#include <printk.h>
 #include <types.h>
 #include <driver.h>
 #include <debug_ll.h>
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 4483d33e65bb..44fc02df0bf9 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -82,8 +82,6 @@
 		(__x < 0) ? -__x : __x;         \
 	})
 
-void __noreturn panic(const char *fmt, ...);
-
 extern unsigned long simple_strtoul(const char *,char **,unsigned int);
 extern long simple_strtol(const char *,char **,unsigned int);
 extern unsigned long long simple_strtoull(const char *,char **,unsigned int);
diff --git a/include/printk.h b/include/printk.h
index 8de8202af97c..b313b408a97b 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -27,6 +27,8 @@ static inline int printf(const char *fmt, ...)
 }
 #endif
 
+void __attribute__((noreturn)) panic(const char *fmt, ...);
+
 #define printk			printf
 
 #define printk_once(fmt, ...)					\
-- 
2.30.2



