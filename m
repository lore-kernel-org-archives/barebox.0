Delivery-date: Fri, 16 Apr 2021 11:59:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLGG-0001BW-TJ
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 11:59:40 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLGF-0006sv-T7
	for lore@pengutronix.de; Fri, 16 Apr 2021 11:59:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0he1gMiLiPwHcN6swA2jQg8XkmnDpooiwSqKYomnSn8=; b=Qk9cu5vNm8L9oAVzGNIySdVmO
	BeaagaCyn09IB0a0Gys2Uw17IdV6wCbwHtyNHiff11B6bLA18Be8pSCWs3udgOShEdXgaQEx51HJN
	2y6x7O/1z4kGVLcVsnU9DejHNzl0len02gJv70PE0cRF8q9qfF8DMA02y0XuS5qeu2Ywg9Gpl1a1O
	fTW15YxyWQ1Dirq1xpDRmbuYiTrnLxqGGRp45nfZnAddmzoy3RBtmgJoWhaISm0ilKO5VtB1JjZKO
	ajnkW39HGPvraR4dESPQsg+qXiRMV3506GnI7rgg5rZPLw8ESU2n0cR9H/cUFDdX+DMiXOnyZDBjf
	1ux7P6D/g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXLED-001eF0-Df; Fri, 16 Apr 2021 09:57:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7Q-001cV5-AB
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 09:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=BZAORitwfWcvkimC9aUQ4es/npKT5/2Q41/wO79cuwQ=; b=v5tL7urNv8y695nsH1bj5uiUfe
 GIZZhmmZVw9Iun7TNfnmrxMgulURsj0jUw2KxripNkAFClOXDcxeO/2GGVTRKJNq8XZaJi68rhIP5
 JLWLVoFBadOnWYPC0SIsylL74iyo+gAKHGYEqzUZ9GjMi0piaAiy9jCi8FRbB5HaxfVQnuq8Quk+B
 Xiqssc3QbGPcSmOkhlSh1kWkcikTUYxSrecCLa0iUupWcWqPu/CyDurktA59Wik3QWTM/dN/fzlRc
 e6jAAzoGR9XbC+u7nwEL6eFI4++zUc2BjfWX0JCWCpbX/i6jvw12AZtH/BvfKP6r0UlLzCH5BUFBY
 WO/zPYsw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7N-009Fyb-IE
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 09:50:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7E-00051U-3m; Fri, 16 Apr 2021 11:50:20 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7C-0001E1-VJ; Fri, 16 Apr 2021 11:50:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Apr 2021 11:49:41 +0200
Message-Id: <20210416094943.3648-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210416094943.3648-1-s.hauer@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_025029_645643_EC46D5FD 
X-CRM114-Status: GOOD (  12.52  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/17] ARM: boards: mx6-sabrelite: add deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Explicit request the required gpio resources instead of relying on their
existence based on the initcall level.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.pengutronix.de/20201021115813.31645-11-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/freescale-mx6-sabrelite/board.c    | 24 ++++++++++++-------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 1b39ef82c6..0a2df391e9 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -13,7 +13,9 @@
 #include <mach/bbu.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
+#include <of.h>
 #include <partition.h>
+#include <deep-probe.h>
 #include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
@@ -98,10 +100,6 @@ static int sabrelite_ksz9021rn_setup(void)
 {
 	int ret;
 
-	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
-	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
-		return 0;
-
 	mxc_iomux_v3_setup_multiple_pads(sabrelite_enet_gpio_pads,
 			ARRAY_SIZE(sabrelite_enet_gpio_pads));
 
@@ -118,11 +116,6 @@ static int sabrelite_ksz9021rn_setup(void)
 
 	return 0;
 }
-/*
- * Do this before the fec initializes but after our
- * gpios are available.
- */
-fs_initcall(sabrelite_ksz9021rn_setup);
 
 static void sabrelite_ehci_init(void)
 {
@@ -134,10 +127,20 @@ static void sabrelite_ehci_init(void)
 
 static int sabrelite_devices_init(void)
 {
+	int ret;
+
 	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
 	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
 		return 0;
 
+	ret = of_devices_ensure_probed_by_property("gpio-controller");
+	if (ret)
+		return ret;
+
+	ret = sabrelite_ksz9021rn_setup();
+	if (ret)
+		return ret;
+
 	sabrelite_ehci_init();
 
 	armlinux_set_architecture(3769);
@@ -163,3 +166,6 @@ static int sabrelite_coredevices_init(void)
 	return 0;
 }
 coredevice_initcall(sabrelite_coredevices_init);
+
+BAREBOX_DEEP_PROBE_ENABLE("fsl,imx6q-sabrelite");
+BAREBOX_DEEP_PROBE_ENABLE("fsl,imx6dl-sabrelite");
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

