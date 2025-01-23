Delivery-date: Thu, 23 Jan 2025 16:01:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tayiH-003URv-34
	for lore@lore.pengutronix.de;
	Thu, 23 Jan 2025 16:01:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tayiG-00030U-FJ
	for lore@pengutronix.de; Thu, 23 Jan 2025 16:01:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lTadBLrwA2thYT8oqRdWpD6K0kSDASDNyRJfM/xvTLM=; b=V7dso9F60QYqQRbtuE4Eyvi6cw
	KIQxqXmg+cjf8IGg6Uc2pO3tTZGTWez33tOnqC+rddHgiq+qSkxTlMrF5h2R5LP7CZbaampfVVv8y
	AqUDem4eo0xOAZK49CGOefuiFQ/mXnijlAtnjDkb0uEZyPuwX2Fmj6JAWZ+qm7/qvB7dP1Dr4oxBG
	qrV3yWX21jAlbmB0apGpoWbZmbLPziY6LAOMCFKe3IXFvrn8ZXihKtMnNkSW3yEcWlqzcwJ8dkm+U
	I4d54Wep+Kol/iHshA2jmV9Hi1zV85FDf7BbwEm2pu7How1Eh1HEso9/dYCTStarFaJWvcc38L6Fh
	SHPR6TFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tayhn-0000000Ceh1-20kK;
	Thu, 23 Jan 2025 15:01:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tayhi-0000000CecQ-0GiD
	for barebox@lists.infradead.org;
	Thu, 23 Jan 2025 15:01:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-0002I2-M9; Thu, 23 Jan 2025 16:01:00 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-001Thq-0W;
	Thu, 23 Jan 2025 16:01:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-006Chv-05;
	Thu, 23 Jan 2025 16:01:00 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 23 Jan 2025 15:56:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250123-v2024-05-0-topic-hab-v3-6-e90d0e43c2de@pengutronix.de>
References: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
In-Reply-To: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_070110_124417_EEA838A2 
X-CRM114-Status: UNSURE (   9.82  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 06/10] i.MX8M: HABv4: add an option to allow key
 revocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

The HAB code needs an special [Unlock] instruction to keep the
SRK_REVOKE fuse bank unlocked. This is required if a key needs to be
revoked.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig            | 8 ++++++++
 include/mach/imx/habv4-imx8-gencsf.h | 6 ++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index d1f8dc795b578fafd2bd2b4c1e59b85430668af7..c8a439b8a0b11fa168419ce77d7ee83fa86f2298 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -830,6 +830,14 @@ config HABV4_QSPI
 	help
 	  Enable this option to build signed QSPI/FlexSPI images.
 
+config HABV4_CSF_SRK_REVOKE_UNLOCK
+	depends on HABV4
+	bool "Unlock SRK revocation"
+	help
+	  Enable this option to instruct the HAB code to not lock
+	  the SRK_REVOKE_LOCK sticky bit. This is required for key
+	  revocation. Don't enable this if you are unsure.
+
 config HAB_CERTS_ENV
 	depends on HAB
 	bool "Specify certificates in environment"
diff --git a/include/mach/imx/habv4-imx8-gencsf.h b/include/mach/imx/habv4-imx8-gencsf.h
index 5f92ceceab00bcb740fc288c050be23e1ed307c2..b3d29f5896881ba2abeaa6d4b297a031240fac99 100644
--- a/include/mach/imx/habv4-imx8-gencsf.h
+++ b/include/mach/imx/habv4-imx8-gencsf.h
@@ -36,6 +36,12 @@ hab [Unlock]
 hab Engine = CAAM
 hab Features = RNG, MID
 
+#if defined(CONFIG_HABV4_CSF_SRK_REVOKE_UNLOCK)
+hab [Unlock]
+hab Engine = OCOTP
+hab Features = SRK REVOKE
+#endif
+
 hab [Install Key]
 /* verification key index in key store (0, 2...4) */
 hab Verification index = 0

-- 
2.39.5



