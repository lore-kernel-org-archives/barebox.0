Delivery-date: Mon, 17 Nov 2025 09:36:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuig-001uqx-2j
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 09:36:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuig-0001ea-1b
	for lore@pengutronix.de; Mon, 17 Nov 2025 09:36:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5rGUYp/LfF+CjKB6lnpKTmzio7XFcCJuGK8EKV4d710=; b=Fyged9p9eK2lQJuvr6NsrUi2Kt
	WjM+xM04dIIpG28+VjE9Klbuf2c8HAlgnpiTbfDpwoUKUzmd5CA9Wve3syyNXuTPFqpiQ5IKp9x3q
	PWEMAdVwqpg0tyE37I4BXXRFZY86IERzG+IgkKuucCl66dowThjAYzw6Sqh6IV+WtFxvHFdICm9tb
	E6ktuBx+VwsfIZgyYkcYwSOpeuuMnXTr7MJBh4Kj75nDTRQ/Oulh4J0sfwtncPZqXNVqjHNuMMJAw
	YUW+Ye5GI+HSXMXUk5j5SIivoTXPAzlyAZ5jDeCudDhX9WPnAjaxx0ED+u8qPH4/hZtJhD1Pfxo7e
	t0ndFu3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKuiD-0000000Fgve-0Zhz;
	Mon, 17 Nov 2025 08:35:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKui9-0000000FgrF-2cvU
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 08:35:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-0001E0-6D; Mon, 17 Nov 2025 09:35:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKuhz-000sfk-2U;
	Mon, 17 Nov 2025 09:35:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-00000005QZR-0Kya;
	Mon, 17 Nov 2025 09:35:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Nov 2025 09:35:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-soc-uid-v2-6-a2415bf9133d@pengutronix.de>
References: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
In-Reply-To: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763368535; l=1996;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=5NTDWuCOvms33QU8DZsV6Z2jNden2Y/HlsnNL/JlKDs=;
 b=KuC8EIHMnbvaONGHPNTHfxvCEslj/WZj9Mrj36MEjerDQ5okg9wH7Fvyy0b2dpul1YZ+BOy2l
 OKsuBQiEFAQAx01v4E/FYZYRLFF6lgl6/Fgl4X1TMaVYiJWc+4RszMJ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_003545_718721_63758A74 
X-CRM114-Status: GOOD (  13.96  )
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
Subject: [PATCH v2 6/9] nvmem: ocotp: Fix SoC ID reading for i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX8MP the SoC ID is stored at 0x420/0x430, not on 0x410/0x420 as on
other i.MX8M SoCs. Also on i.MX8MP the SoC ID is 128bit and not 64bit
with the upper bits stored at 0xe00/0xe10.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 33 +++++++++++++++++++++++++++------
 1 file changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 7bca27540417ad9ba0ce5c5f8ec43ad1c63638b9..affca938849d0d1a8dc347e3a0e1f3a380f1aab7 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -853,17 +853,38 @@ static int imx_ocotp_init_dt(struct ocotp_priv *priv)
 	return imx8m_feat_ctrl_init(priv->dev.parent, tester3, tester4, priv->data->feat);
 }
 
+#define IMX8MP_OCOTP_UID(n)	\
+	(OCOTP_WORD(0x420 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define IMX8MP_OCOTP_UID_2(n)	\
+	(OCOTP_WORD(0xe00 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+
 static void imx_ocotp_set_unique_machine_id(void)
 {
-	uint32_t unique_id_parts[UNIQUE_ID_NUM];
-	int i;
+	bool is_imx8mp = of_machine_is_compatible("fsl,imx8mp");
+	uint32_t uid[4];
+	int len;
 
-	for (i = 0; i < UNIQUE_ID_NUM; i++)
-		if (imx_ocotp_read_field(OCOTP_UNIQUE_ID(i),
-					 &unique_id_parts[i]))
+	if (is_imx8mp) {
+		if (imx_ocotp_read_field(IMX8MP_OCOTP_UID(0), &uid[0]))
+			return;
+		if (imx_ocotp_read_field(IMX8MP_OCOTP_UID(1), &uid[1]))
+			return;
+
+		if (imx_ocotp_read_field(IMX8MP_OCOTP_UID_2(0), &uid[2]))
+			return;
+		if (imx_ocotp_read_field(IMX8MP_OCOTP_UID_2(1), &uid[3]))
 			return;
+		len = sizeof(uid);
+	} else {
+		if (imx_ocotp_read_field(OCOTP_UNIQUE_ID(0), &uid[0]))
+			return;
+		if (imx_ocotp_read_field(OCOTP_UNIQUE_ID(1), &uid[1]))
+			return;
+
+		len = sizeof(uid) / 2;
+	}
 
-	machine_id_set_hashable(unique_id_parts, sizeof(unique_id_parts));
+	machine_id_set_hashable(uid, len);
 }
 
 static int imx_ocotp_probe(struct device *dev)

-- 
2.47.3



