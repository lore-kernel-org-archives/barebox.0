Delivery-date: Fri, 03 Mar 2023 10:28:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1ht-007Nqb-Mu
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:28:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1ht-0003Oe-66
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:28:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g6O1UEfc7ToOb5EN1n73+2RKiqpa4pZXeoYDo3RIv8E=; b=pdWjFBcXa4D/F/7AqqTq+OCKEy
	ykPmE1kkVasiEFuZ7osEU36gIH67B9s5AkGeFv4r+mL/6dY1fce1Z2aS/3yHsXj2NO5JLJd7D+81Z
	iQPsJA+7HRNSqtK6QOKBHmx/JMqcerHsBheG1tOoV8uriVBZ7vqc8kb2NbXBEGj4C8NVHR7lXftpo
	5UbIjNwE9mvrNPd7OvPsbIGy3QFE0xktyeu14YNbEIKedWSUa+u0tt06QKYMEY+PG7mXamDP5s5WZ
	xmzS0Ai6AZ4Yek590fDYKpH7LdK8xnWmYFk/JTqEQlS5Gtufre4C702eC1nmgpRPjMzOOr1yHH7Cz
	vvtYYQLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1ge-005i3y-FI; Fri, 03 Mar 2023 09:26:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bu-005eWi-Iy
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:21:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=g6O1UEfc7ToOb5EN1n73+2RKiqpa4pZXeoYDo3RIv8E=; b=tYg/HusxaubefVuEg867wtnX8G
	YbkEsNGxdyOnKjxzj40p1/rNXhDHpUO3CppfjQZUDotyNzyhkeJmWeOrebDTXuQX9qK8yRevQpaIL
	A4yPAPSVJ3Eez1Rq2nggmFLjhfZ45TPNaT1cJvntBFYrPr/U5Lrs3q3NWlEsY6BTFOLC0/ALGxHHt
	HTC1aJaNqThAsldUEFUbVq5yQDDhz3cns6FXMvYoTPZAoORV97ZagmLEZ9uyLRB1wuRx//IjTBHpR
	escDWNQLrooRLwT6QnLkhTNxx1ZA5rwKjIkpkxG88wXZf7YPKc/RrjpXjAat9bDBwFkaqT9MsOORB
	4tEn+kQw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bq-0031Of-VH
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bi-0000Fn-RB; Fri, 03 Mar 2023 10:21:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bi-001WjC-1m; Fri, 03 Mar 2023 10:21:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-00F2lA-5K; Fri, 03 Mar 2023 10:21:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:26 +0100
Message-Id: <20230303092131.3063587-46-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092151_470473_B879A783 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 45/50] ARM: vexpress: Only provide PUTC_LL() when activated
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a Kconfig symbol for the vexpress debug_ll UART port

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/debug_ll.h | 6 ++++--
 common/Kconfig                  | 7 +++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index ba67c7e22d..81602d93d3 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -23,6 +23,10 @@
 #include <mach/stm32mp/debug_ll.h>
 #endif
 
+#ifdef CONFIG_DEBUG_VEXPRESS_UART
+#include <mach/vexpress/debug_ll.h>
+#endif
+
 #ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
 #define DEBUG_LL_UART_ADDR		0x9000000
 #include <debug_ll/pl011.h>
@@ -34,8 +38,6 @@
 #include <mach/bcm283x/debug_ll.h>
 #elif defined CONFIG_ARCH_ZYNQ
 #include <mach/zynq/debug_ll.h>
-#elif defined CONFIG_ARCH_VEXPRESS
-#include <mach/vexpress/debug_ll.h>
 #elif defined CONFIG_ARCH_VERSATILE
 #include <mach/versatile/debug_ll.h>
 #elif defined CONFIG_ARCH_LAYERSCAPE
diff --git a/common/Kconfig b/common/Kconfig
index a21559bf2c..9234f1239e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1357,6 +1357,13 @@ config DEBUG_IMX8M_UART
 	  Say Y here if you want barebox low-level debugging support
 	  on i.MX8M*.
 
+config DEBUG_VEXPRESS_UART
+	bool "Vexpress Debug UART"
+	depends on ARCH_VEXPRESS
+	help
+	  Say Y here if you want barebox low-level debugging support
+	  on Vexpress.
+
 config DEBUG_VF610_UART
 	bool "VF610 Debug UART"
 	depends on ARCH_VF610
-- 
2.30.2



