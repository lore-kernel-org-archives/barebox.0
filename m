Delivery-date: Mon, 30 Aug 2021 13:54:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKfrg-00048o-Ui
	for lore@lore.pengutronix.de; Mon, 30 Aug 2021 13:54:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKfrd-0006a9-15
	for lore@pengutronix.de; Mon, 30 Aug 2021 13:54:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1XajxlmWfnznoKM/EJ6IFQfjmeRezeCR9OjGyKv9Z0o=; b=wr4CAcumDCfl+3
	Y2ahAMo8s8PvnAdHQHVHHkO6sffd5gTOEZZeBbhq8YsuyZgx4o6MSDekhnHo6vA9k3xLWwcA4dApR
	4AoBLcLFK1bI1vVUjuoCHf1terqiqGPbAYdU6hIGkIeWhCPjUpHzFTUnGJNNhlvWbAR+LMHshOpaI
	hylct09Ylg3R+gsZ8Z/abzKa83KKsJRMlSoi4DsLCxOgWKXU9gT2HB0FncugNiQ6k5/CRXkFZKwsI
	fryt+F476VQLjgawPU0Lz3ttqXBF/Fk/AGe1hFCsPie4BpoEsfzrVpJv+EFXStPtXKicu2svJukFT
	EehmuY+nDusB4yYpZubw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKfpl-00H8Mz-QH; Mon, 30 Aug 2021 11:52:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKfpa-00H8KH-VO
 for barebox@lists.infradead.org; Mon, 30 Aug 2021 11:52:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mKfpV-0006Oo-JE; Mon, 30 Aug 2021 13:51:57 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mKfpV-0006FV-AU; Mon, 30 Aug 2021 13:51:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de, ukl@pengutronix.de, rcz@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 30 Aug 2021 13:51:55 +0200
Message-Id: <20210830115156.21907-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210830115156.21907-1-a.fatoum@pengutronix.de>
References: <20210830115156.21907-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_045203_081101_978EA77B 
X-CRM114-Status: GOOD (  14.73  )
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
Subject: [PATCH v2 2/3] mci: imx-esdhc-pbl: support eMMC boot partitions on
 i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX header for SD/MMC starts at an offset to allow for a partition
table at offset 0. i.MX8MN/P bootrom did away with the offset for eMMC
boot partitions, which usually lack on-disk partition tables, but kept a
32-byte offset for SD and eMMC user partitions.

The i.MX8MN/P also introduced a ROM API that allows chainloading from
boot medium by calling back into ROM. This likely handles that
difference for us, but as we don't support it yet and we already have
the PBL eSDHC driver, teach it to detect whether boot is from eMMC boot
partition or not and use the appropriate offset.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch. Without, barebox can be written, but not booted.
    Tested on i.MX8MN.
---
 drivers/mci/imx-esdhc-pbl.c | 39 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index e649eb8bbafb..66df4f6dfc74 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -25,6 +25,40 @@
 
 #define esdhc_send_cmd	__esdhc_send_cmd
 
+static u8 ext_csd[512] __aligned(64);
+
+static int esdhc_send_ext_csd(struct fsl_esdhc_host *host)
+{
+	struct mci_cmd cmd;
+	struct mci_data data;
+
+	cmd.cmdidx = MMC_CMD_SEND_EXT_CSD;
+	cmd.cmdarg = 0;
+	cmd.resp_type = MMC_RSP_R1;
+
+	data.dest = ext_csd;
+	data.blocks = 1;
+	data.blocksize = sizeof(ext_csd);
+	data.flags = MMC_DATA_READ;
+
+	return esdhc_send_cmd(host, &cmd, &data);
+}
+
+static bool esdhc_bootpart_active(struct fsl_esdhc_host *host)
+{
+	unsigned bootpart;
+
+	int ret = esdhc_send_ext_csd(host);
+	if (ret)
+		return false;
+
+	bootpart = (ext_csd[EXT_CSD_PARTITION_CONFIG] >> 3) & 0x7;
+	if (bootpart == 1 || bootpart == 2)
+		return true;
+
+	return false;
+}
+
 static int esdhc_read_blocks(struct fsl_esdhc_host *host, void *dst, size_t len)
 {
 	struct mci_cmd cmd;
@@ -338,14 +372,17 @@ int imx8mp_esdhc_load_image(int instance, bool start)
 {
 	struct esdhc_soc_data data;
 	struct fsl_esdhc_host host = { 0 };
+	u32 offset;
 	int ret;
 
 	ret = imx8m_esdhc_init(&host, &data, instance);
 	if (ret)
 		return ret;
 
+	offset = esdhc_bootpart_active(&host)? 0 : SZ_32K;
+
 	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
-				MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K, 0, start);
+				MX8MQ_ATF_BL33_BASE_ADDR, offset, 0, start);
 }
 #endif
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

