Delivery-date: Thu, 26 Aug 2021 18:59:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mJIj9-0001sj-T2
	for lore@lore.pengutronix.de; Thu, 26 Aug 2021 18:59:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mJIj5-0002x1-AK
	for lore@pengutronix.de; Thu, 26 Aug 2021 18:59:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=858SyHK/kiduabfukg1InHDVgC+t2UUltHmWk+6U3Q8=; b=vN0aD7kfXODdvf
	pFP7IzsDNqHbOQQ6w3DELIRN4HBV0SXo4/x+QZir9cyQk2IM5ojvk4BPETv9v3GgbKaSodfxcH9XU
	EhOnRMmdHrjfMcehrPpYvdqvdDetYJqdMDUeYo1KXJrL/jdmpXyMjb0FpafzMAaDfIFGHe+Opl3M1
	oRPBxt+c3XCgjgbo6mln7W6uoJPba5jZxxXD5QTqdabV6VYHfBvFoGPMwiZFCEtiip7jsgErlgGsb
	XQsmIdrqHqSxfFDm8IxPFKu8RiMbQd6FIj2ivo4aRZK9cfFbyxbVtxAeQ6W5a3WniBO9ZkRuZfcPO
	271x0J+f2qyYGDAECPNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJIh3-00Ac9r-Uf; Thu, 26 Aug 2021 16:57:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJIgw-00Ac8p-6G
 for barebox@lists.infradead.org; Thu, 26 Aug 2021 16:57:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mJIgs-0002iE-G0; Thu, 26 Aug 2021 18:57:22 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mJIgs-0006TV-5M; Thu, 26 Aug 2021 18:57:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de, ukl@pengutronix.de, rcz@pegutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 26 Aug 2021 18:57:18 +0200
Message-Id: <20210826165718.1905-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210826_095726_272323_AB89C0BE 
X-CRM114-Status: GOOD (  15.15  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8MP: bbu: use correct offset for eMMC boot partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

According to the i.MX8MP RM rev3, the bootrom expects the bootloader to
sit directly at the start of the eMMC boot partition.

The 32K offset is only valid for eMMC user partitions and SD. Reflect
this in the code. This should allow changing the update handler for
the i.MX8MP-EVK from using the eMMC user area to using the eMMC boot
partition. This isn't done here, because the change wasn't tested
on actual hardware.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Change is untested. Would be great if someone can confirm on actual HW.
(And adjust the EVK boot handler)
---
 arch/arm/mach-imx/imx-bbu-internal.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 880f8b249642..32c6f44fb4ac 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -393,6 +393,15 @@ static unsigned long imx_bbu_flash_header_offset_mmc(void)
 	return SZ_1K;
 }
 
+static unsigned long imx_bbu_flash_header_offset_mmcboot(void)
+{
+	if (cpu_is_mx8mp())
+		return 0;
+
+	/* Older i.MX use for boot partition the same offset as eMMC user/SD */
+	return imx_bbu_flash_header_offset_mmc();
+}
+
 static int imx_bbu_update(struct bbu_handler *handler, struct bbu_data *data)
 {
 	struct imx_internal_bbu_handler *imx_handler =
@@ -608,7 +617,7 @@ static int imx_bbu_internal_mmcboot_register_handler(const char *name,
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, devicefile, flags);
-	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmc();
+	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmcboot();
 
 	imx_handler->handler.handler = imx_bbu_internal_mmcboot_update;
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

