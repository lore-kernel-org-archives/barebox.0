Delivery-date: Mon, 23 Jan 2023 21:26:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pK3OE-003VUv-Cx
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 21:26:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pK3OC-0001Md-GG
	for lore@pengutronix.de; Mon, 23 Jan 2023 21:26:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/CHKciRS2S3smPKKcfImpx8yKgUxTEZwlNWx+Vlr0Ks=; b=NTZuC/Ce7A0DKP5n+nPiirZ4p2
	vyWtaZcY8hgGcE55Su/Zt9bOnqkIbMsjMBEF6puj7q3xP1TgcDo2iMBYCPXTiTFv7W9Vg7IumZ3A3
	gcy9GnU+o+e4BQpeYk/ZtKLKxYbxTfU3rR+R0SBThOJswF6GAg3c48IVF7waf0ujRlzm6jTZ+uW1x
	XNmGL6g5nHUEJ0f1viDr8tqYJY7pXubeZ7zRDEN+pNFY0+2QjPo4/D94XAHMkzh0Sg/nTrCJfoeZg
	8Hcb2+cGGjUcsPdLXhGcgiDLOd2HmGNgOT0wbNefL+nFqe4eqYN5BMACKo8Y7wJT12CJChC+s/nsy
	riQ/49Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK3ML-001JGE-Ll; Mon, 23 Jan 2023 20:24:05 +0000
Received: from out-90.mta0.migadu.com ([91.218.175.90])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK3MG-001JFT-7f
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 20:24:02 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674505434;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/CHKciRS2S3smPKKcfImpx8yKgUxTEZwlNWx+Vlr0Ks=;
	b=XoFcuXaiSQqabdAwnAazdI9bVjphV6KjKVe3MAFvl585LdA+VNK2POB75LHA6q7Z9Xx5MB
	/H2iim3pkukjGTQCFsSC/vo+ZYEVdj9Qryd3RS4s8uk8E+ceXZKCtKRbxkyxt7CPEoBaEO
	W0Ar2qRAfyi0vySA/rWiBj0Zr5YymW3tW7EIYro7DZ+fofYklXRWvCTGHHgbnT9l463FoN
	MGNYELwLJYb2F91Zkl8ZgWlr9Eot9NwIBp67hssmPR/powM9a7djR6byYvzNO+Sbt761lE
	8awzY8uG35Q02urSEfUY5hUgtY1ypjTztd8Hv2aYGbNlhknlpR40AhiYYnXx3Q==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Tue, 24 Jan 2023 07:18:17 +1100
Message-Id: <20230123201817.1084728-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_122401_035839_31F5BC3A 
X-CRM114-Status: GOOD (  14.21  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] imx6-mmdc: Work around ERR050070
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The MPWLGCR registers clear the error bits before software can read them,
so rely on the MPWLHWERR registers for error reporting instead.

This errata was announced in 2019 and seems to apply to all chip revisions.

U-Boot contains a different workaround where it checks the calibration data
for the result 0x001F001F (maximum delay) and flag that as a failure.
This workaround seems to first publicly appear in the Novena U-Boot code
and originate from Freescale internal code or documentation.

While we're at it, fix the comment implying this code only checks PHY0 in x32
configuration. This is wrong and misleading.

Signed-off-by: John Watts <contact@jookia.org>
---
 arch/arm/mach-imx/imx6-mmdc.c              | 18 ++++++++++++++----
 arch/arm/mach-imx/include/mach/imx6-mmdc.h |  1 +
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
index 00b8d30d69..908771626a 100644
--- a/arch/arm/mach-imx/imx6-mmdc.c
+++ b/arch/arm/mach-imx/imx6-mmdc.c
@@ -11,6 +11,18 @@
 #include <mach/imx6-regs.h>
 #include <mach/imx6.h>
 
+static bool wlcalib_failed(void __iomem *ips)
+{
+	int i;
+
+	for (i = 0; i < 4; ++i) {
+		if (readb(P0_IPS + MPWLHWERR + i) == 0)
+			return true;
+	}
+
+	return false;
+}
+
 int mmdc_do_write_level_calibration(void)
 {
 	u32 esdmisc_val, zq_val;
@@ -56,11 +68,9 @@ int mmdc_do_write_level_calibration(void)
 	/* Upon completion of this process the MMDC de-asserts the MPWLGCR[HW_WL_EN] */
 	while (readl(P0_IPS + MPWLGCR) & 0x00000001);
 
-	/* check for any errors: check both PHYs for x64 configuration, if x32, check only PHY0 */
-	if ((readl(P0_IPS + MPWLGCR) & 0x00000F00) ||
-			(readl(P1_IPS + MPWLGCR) & 0x00000F00)) {
+	/* check for any errors on both PHYs */
+	if (wlcalib_failed(P0_IPS) || wlcalib_failed(P1_IPS))
 		errorcount++;
-	}
 
 	pr_debug("Write leveling calibration completed\n");
 
diff --git a/arch/arm/mach-imx/include/mach/imx6-mmdc.h b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
index bda20aba17..098ba4f5bf 100644
--- a/arch/arm/mach-imx/include/mach/imx6-mmdc.h
+++ b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
@@ -18,6 +18,7 @@
 #define MPWLGCR		0x808
 #define MPWLDECTRL0	0x80c
 #define MPWLDECTRL1	0x810
+#define MPWLHWERR	0x878
 #define MPPDCMPR1	0x88c
 #define MPSWDAR		0x894
 #define MPRDDLCTL	0x848
-- 
2.39.0



