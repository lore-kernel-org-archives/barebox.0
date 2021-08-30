Delivery-date: Mon, 30 Aug 2021 13:54:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKfrh-00049D-Le
	for lore@lore.pengutronix.de; Mon, 30 Aug 2021 13:54:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKfrd-0006aA-5D
	for lore@pengutronix.de; Mon, 30 Aug 2021 13:54:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p3Ohmk998vfya/XcpDNdvt+NPkbY+5Mb4GtNYWc/Se8=; b=FBRDIMGS0j9kpX
	Q/DP1aTzm9EgAgAd2w3jz0v4mHM7pDm7pIqO0dBtDQholilYfmQGV6J7p2fCP0jSl/AQ2ts6xfrpk
	Vy7/TwSGl12CDZ+FhsSSA+3d4DJXgrBATSbXjsGKjQN/1kfxFPEymseZKMY0oua8YcFMCD50y3D7x
	P8NRpcJsA/8J4wj8RRtXvmI7+8pF+wWBvw5PUu0VJOxMF0E6CE6xaewufqnt08WjVYtn9DpippjpV
	CSGyOREKA+HiN16fBJHmeOS+Zbs0e8+GErHLa3CI9UKEO7QAWiDZuKz+q/Wlr1EchDWCvGEjTH9pI
	Tx/4C2pA4QukqxSyaJng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKfpi-00H8MX-PW; Mon, 30 Aug 2021 11:52:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKfpa-00H8KF-Ui
 for barebox@lists.infradead.org; Mon, 30 Aug 2021 11:52:04 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mKfpV-0006On-Il; Mon, 30 Aug 2021 13:51:57 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mKfpV-0006FS-9r; Mon, 30 Aug 2021 13:51:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de, ukl@pengutronix.de, rcz@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 30 Aug 2021 13:51:54 +0200
Message-Id: <20210830115156.21907-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_045203_075311_0D24CE4F 
X-CRM114-Status: GOOD (  14.77  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] ARM: i.MX8MP: bbu: fix wrong flash header offset for
 eMMC boot partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

According to the reference manual of the i.MX8MP, the bootrom expects
the bootloader to sit directly at the start of the eMMC boot partition.

The 32K offset is only valid for eMMC user partitions and SD.
Tell barebox_update about this, so it can strip away the first 32K
when writing to an eMMC boot partition.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix wrong use of flash header offset: This refers to offset in file,
    but we want to change offset on disk. There is a knob for that
    (IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER), so use that instead

Tested on i.MX8MN.
---
 arch/arm/mach-imx/imx-bbu-internal.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 880f8b249642..91e1785d18e0 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -393,6 +393,18 @@ static unsigned long imx_bbu_flash_header_offset_mmc(void)
 	return SZ_1K;
 }
 
+static unsigned long imx_bbu_flash_header_offset_mmcboot(unsigned long *flags)
+{
+	/*
+	 * i.MX8MP places IVT directly at start of eMMC boot partition. IVT
+	 * in eMMC user partition and SD is at 32K offset.
+	 */
+	if (cpu_is_mx8mp())
+		*flags |= IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER;
+
+	return imx_bbu_flash_header_offset_mmc();
+}
+
 static int imx_bbu_update(struct bbu_handler *handler, struct bbu_data *data)
 {
 	struct imx_internal_bbu_handler *imx_handler =
@@ -606,9 +618,12 @@ static int imx_bbu_internal_mmcboot_register_handler(const char *name,
 						     unsigned long flags)
 {
 	struct imx_internal_bbu_handler *imx_handler;
+	unsigned long flash_header_offset;
+
+	flash_header_offset = imx_bbu_flash_header_offset_mmcboot(&flags);
 
 	imx_handler = __init_handler(name, devicefile, flags);
-	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmc();
+	imx_handler->flash_header_offset = flash_header_offset;
 
 	imx_handler->handler.handler = imx_bbu_internal_mmcboot_update;
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

