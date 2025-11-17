Delivery-date: Mon, 17 Nov 2025 09:36:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuig-001uqa-1O
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 09:36:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuie-0001dQ-5o
	for lore@pengutronix.de; Mon, 17 Nov 2025 09:36:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GvrDVXZQq49sm87PcJ5lKI9+Sxp8nZ/WczntiVzSdNs=; b=Uv+FfhABG0vKJZ1YMZBcSA/a3j
	OcbLoVGScDeL+pu3Y0N018Mjhl1YAtwJhbCr/sPZzAMpO/dsc7pLr6BFIGdOkdozMvGIZB2ow75CX
	AZ/74DjcSSDNRk+IyKk69GTMe/1I0HMh2Md8E6OXWCfrMJWVl/ZErMfZes6SxFaFz7HUEPANQ0aER
	F1pnMA/7QmOquDXNrQzJO1NFPB6ZYxowOX3sqEnjv3dTwJHwZAvrEHCyyZzp7byw2cwI5k0xa8d/V
	7pR2q5O357LXF9M4jRkIa+TawY5O/oODaGDEpcm1l2np3OFgegqsovhaZ3W95PmbYHybYQNwX44gs
	dhHlBYNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKui9-0000000FgrZ-129Y;
	Mon, 17 Nov 2025 08:35:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKui3-0000000FgpA-1zVf
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 08:35:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-0001Dw-5s; Mon, 17 Nov 2025 09:35:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKuhz-000sfm-2R;
	Mon, 17 Nov 2025 09:35:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-00000005QZR-0Mcn;
	Mon, 17 Nov 2025 09:35:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Nov 2025 09:35:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-soc-uid-v2-8-a2415bf9133d@pengutronix.de>
References: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
In-Reply-To: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763368535; l=2433;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Z4F4wX90OxLnxHuUM34z1x4yOn7jPHHeMNZgK21UvrI=;
 b=zy1UDrhn1CyvQQdOcPshRDCp/ldJe+NFNAUipj+ceR7DwvoI9JDVeIcM9D9oVEcBwZ3OrJNql
 ZdZ5F15DthKBTb67o5j4iizHK6ZIPSjM8Y79mjbQZXBxCR60I4/tcIV
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_003539_533304_20AFB06F 
X-CRM114-Status: GOOD (  14.53  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 8/9] soc: imx8m: register SoC UID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Just like the ocotp driver the i.MX8M SoC driver also reads the SoC UID.
Unlike the ocotp driver the i.MX8M SoC driver is always enabled, so if
we don't have the ocotp driver enabled then register the SoC UID from
the SoC driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/ocotp.c       | 12 ++++++++++--
 drivers/soc/imx/soc-imx8m.c |  4 ++++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 4d12426275426acb69f8e8349cf56367a3f1f80d..fa80f1bfe2324d6667c789758bfd683451cb5f80 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -31,6 +31,7 @@
 #ifdef CONFIG_ARCH_IMX
 #include <mach/imx/ocotp.h>
 #include <mach/imx/ocotp-fusemap.h>
+#include <mach/imx/generic.h>
 #else
 #include <mach/mxs/ocotp.h>
 #include <mach/mxs/ocotp-fusemap.h>
@@ -853,6 +854,13 @@ static int imx_ocotp_init_dt(struct ocotp_priv *priv)
 	return imx8m_feat_ctrl_init(priv->dev.parent, tester3, tester4, priv->data->feat);
 }
 
+#ifndef CONFIG_ARCH_IMX
+static inline bool imx8mp_keep_compatible_soc_uid(void)
+{
+	return false;
+}
+#endif
+
 #define IMX8MP_OCOTP_UID(n)	\
 	(OCOTP_WORD(0x420 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
 #define IMX8MP_OCOTP_UID_2(n)	\
@@ -865,7 +873,7 @@ static void imx_ocotp_set_unique_machine_id(void)
 	int len;
 	char *uidstr;
 
-	if (is_imx8mp) {
+	if (is_imx8mp && !imx8mp_keep_compatible_soc_uid()) {
 		if (imx_ocotp_read_field(IMX8MP_OCOTP_UID(0), &uid[0]))
 			return;
 		if (imx_ocotp_read_field(IMX8MP_OCOTP_UID(1), &uid[1]))
@@ -887,7 +895,7 @@ static void imx_ocotp_set_unique_machine_id(void)
 		uidstr = xasprintf("%08X%08X", uid[1], uid[0]);
 	}
 
-	barebox_set_soc_uid(uidstr, &uid, sizeof(uid));
+	barebox_set_soc_uid(uidstr, &uid, len);
 	free(uidstr);
 }
 
diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
index 06c524308e83b2d2b57615b9dc60652400f202e2..6f61bdb9e8d3f0bd05282d585a066d45a7ef5305 100644
--- a/drivers/soc/imx/soc-imx8m.c
+++ b/drivers/soc/imx/soc-imx8m.c
@@ -284,6 +284,10 @@ static int __init imx8_soc_init(void)
 		goto free_rev;
 	}
 
+	if (!IS_ENABLED(CONFIG_IMX_OCOTP))
+		barebox_set_soc_uid(soc_dev_attr->serial_number, soc_uid,
+				    sizeof(soc_uid));
+
 	soc_dev = soc_device_register(soc_dev_attr);
 	if (IS_ERR(soc_dev)) {
 		ret = PTR_ERR(soc_dev);

-- 
2.47.3



