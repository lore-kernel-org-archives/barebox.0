Delivery-date: Thu, 13 Nov 2025 10:35:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjQ-000UqL-1C
	for lore@lore.pengutronix.de;
	Thu, 13 Nov 2025 10:35:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjP-0007LQ-41
	for lore@pengutronix.de; Thu, 13 Nov 2025 10:35:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=//kDjh+JeV3YnI0nQfSmwZ9dn3tifTYXWXU8x8b5Pig=; b=Sysxu2ODs5ENQ8yOmZtpVY5wjA
	IMZf7PWeATbjaoXUerv9mIAQZthMVD0TDB3nHwd/yJFQ78eM63JLlFCETKWaGcywTqYY6I9mLaWqa
	z8exluiRtpIZkQ2nos3Ld+sV4SwgccPCDaZZQpaKhIlqRdvOn3OlhpA3UJAFAacXiDoRskDdiGmtJ
	Aii4zT4DCQv4PQot6BRnmDhy6TvWsQOIYhyS9kqsFUr1uzriazk3j2AkktKDsqj1gbf7rlF/axZuX
	xiz3SDxaf1ZMil7/U4lyR8E1zyxbXQEl8zWDYE0p9g4XYmUZduPjFZvWv+xPGgx+NdCg/dQ097GUQ
	UDF2Leew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTj0-0000000ACWS-0GKK;
	Thu, 13 Nov 2025 09:34:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTix-0000000ACTg-3Mug
	for barebox@lists.infradead.org;
	Thu, 13 Nov 2025 09:34:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00070E-Ak; Thu, 13 Nov 2025 10:34:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTin-000EXv-3A;
	Thu, 13 Nov 2025 10:34:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00000008Q1y-1KHp;
	Thu, 13 Nov 2025 10:34:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Nov 2025 10:34:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251113-soc-uid-v1-7-29a256e07144@pengutronix.de>
References: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
In-Reply-To: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763026469; l=1725;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1eyW7djSCxe6hy3ohjzLou3jRoRFT6I41A8aPxbhUto=;
 b=4Z96Gtpj0Ob2JaY8bYgQ6+9fMWKmopV6Gd7CM4z9/mYF29DiqLXiWAF14S1uTnuOV4xHXEk7w
 eV54yJ3wZuuDEHXxlj2xMQt+lVeNJaQcO8n+SMv2SK8qqi0PP4kTQHK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_013439_853737_095C4BED 
X-CRM114-Status: GOOD (  11.24  )
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
Subject: [PATCH 7/9] nvmem: imx-ocotp: call barebox_set_soc_uid()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox_set_soc_uid() calls barebox_set_soc_uid() the same way as done
previously, but also exposes the SoC ID in the barebox environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index affca938849d0d1a8dc347e3a0e1f3a380f1aab7..4d12426275426acb69f8e8349cf56367a3f1f80d 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -863,6 +863,7 @@ static void imx_ocotp_set_unique_machine_id(void)
 	bool is_imx8mp = of_machine_is_compatible("fsl,imx8mp");
 	uint32_t uid[4];
 	int len;
+	char *uidstr;
 
 	if (is_imx8mp) {
 		if (imx_ocotp_read_field(IMX8MP_OCOTP_UID(0), &uid[0]))
@@ -875,6 +876,7 @@ static void imx_ocotp_set_unique_machine_id(void)
 		if (imx_ocotp_read_field(IMX8MP_OCOTP_UID_2(1), &uid[3]))
 			return;
 		len = sizeof(uid);
+		uidstr = xasprintf("%08X%08X%08X%08X", uid[3], uid[2], uid[1], uid[0]);
 	} else {
 		if (imx_ocotp_read_field(OCOTP_UNIQUE_ID(0), &uid[0]))
 			return;
@@ -882,9 +884,11 @@ static void imx_ocotp_set_unique_machine_id(void)
 			return;
 
 		len = sizeof(uid) / 2;
+		uidstr = xasprintf("%08X%08X", uid[1], uid[0]);
 	}
 
-	machine_id_set_hashable(uid, len);
+	barebox_set_soc_uid(uidstr, &uid, sizeof(uid));
+	free(uidstr);
 }
 
 static int imx_ocotp_probe(struct device *dev)
@@ -960,8 +964,7 @@ static int imx_ocotp_probe(struct device *dev)
 				  ethaddr->value, ethaddr);
 	}
 
-	if (IS_ENABLED(CONFIG_MACHINE_ID))
-		imx_ocotp_set_unique_machine_id();
+	imx_ocotp_set_unique_machine_id();
 
 	ret = imx_ocotp_init_dt(priv);
 	if (ret)

-- 
2.47.3



