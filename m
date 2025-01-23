Delivery-date: Thu, 23 Jan 2025 16:01:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tayiJ-003USc-28
	for lore@lore.pengutronix.de;
	Thu, 23 Jan 2025 16:01:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tayiH-00031X-I2
	for lore@pengutronix.de; Thu, 23 Jan 2025 16:01:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8Z5I1As71yu+4VrY2w3bNTourS4QApns+aIKzOeHaLs=; b=IVm4p6TwQLq9zfea1cisaf2o+B
	kjF9EAHm8RzB5y8HbtLvXsKbY15PvjFCvx3KHPaBNkqBSQFBDHT3ZkIrgt8Yu702/0vRAqxIjKMxi
	ZYDHg0dl2wjAJW7A5oNWwHtA8q215Ui4nTmlq1DfdtdCym9YTiD+pvFzt5NfXZXesuqzBWogfnzO3
	LN9OfqkvXJL9BWHiZdQrl/muPZjg3q42EWLn6eMXnlrRvPtMMojkwxK2tE7BdZg4A4XAOEi0IUMVE
	xB7gLOTwfF5lpXQL0NrNphBzRP54nXcVQvoHP2oiAKXoDd+gxiLyhesWdgNGcQzgC7jNw+z64oI8v
	tE/8LnOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tayhi-0000000CedO-1k1b;
	Thu, 23 Jan 2025 15:01:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tayhb-0000000CeZD-2K83
	for barebox@lists.infradead.org;
	Thu, 23 Jan 2025 15:01:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-0002I1-MK; Thu, 23 Jan 2025 16:01:00 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-001Tht-0V;
	Thu, 23 Jan 2025 16:01:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-006Chv-08;
	Thu, 23 Jan 2025 16:01:00 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 23 Jan 2025 15:56:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250123-v2024-05-0-topic-hab-v3-9-e90d0e43c2de@pengutronix.de>
References: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
In-Reply-To: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_070103_604291_AB920EB0 
X-CRM114-Status: UNSURE (   8.42  )
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
Subject: [PATCH v3 09/10] i.mx8: ocotp: add GPx_LOCK defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The GPx_LOCK registers changed position in the fuse map from the i.MX6
series and derivates to the i.MX8 series with i.MX8MP being different
again.

The defines have been derived from:

IMX8MNRM Rev. 2 (i.MX8MN)
IMX8MPRM Rev. 3 (i.MX8MP)
IMX8MMRM Rev. 3 (i.MX8MM)

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 include/mach/imx/ocotp-fusemap.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
index 37f1ee8298c2ae47406c6ae58b73f1eba9effed8..3c961998b0fc4bd374331342baaa2051163309ae 100644
--- a/include/mach/imx/ocotp-fusemap.h
+++ b/include/mach/imx/ocotp-fusemap.h
@@ -12,6 +12,22 @@
 #define OCOTP_MAC_ADDR_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(8) | OCOTP_WIDTH(2))
 #define OCOTP_GP1_LOCK			(OCOTP_WORD(0x400) | OCOTP_BIT(10) | OCOTP_WIDTH(2))
 #define OCOTP_GP2_LOCK			(OCOTP_WORD(0x400) | OCOTP_BIT(12) | OCOTP_WIDTH(2))
+
+/* available on i.MX8 */
+#define MX8M_OCOTP_GP1_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(20) | OCOTP_WIDTH(2))
+#define MX8M_OCOTP_GP2_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(22) | OCOTP_WIDTH(2))
+#define MX8M_OCOTP_GP5_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(24) | OCOTP_WIDTH(2))
+
+/* available on i.MX8MP */
+#define MX8MP_OCOTP_GP1_LOCK	MX8M_OCOTP_GP1_LOCK
+#define MX8MP_OCOTP_GP2_LOCK	MX8M_OCOTP_GP2_LOCK
+#define MX8MP_OCOTP_GP4_LOCK	(OCOTP_WORD(0x410) | OCOTP_BIT(4)  | OCOTP_WIDTH(2))
+#define MX8MP_OCOTP_GP5_LOCK	(OCOTP_WORD(0x410) | OCOTP_BIT(8)  | OCOTP_WIDTH(2))
+#define MX8MP_OCOTP_GP6_LOCK	(OCOTP_WORD(0x410) | OCOTP_BIT(10) | OCOTP_WIDTH(2))
+#define MX8MP_OCOTP_GP7_LOCK	(OCOTP_WORD(0x410) | OCOTP_BIT(12) | OCOTP_WIDTH(2))
+#define MX8MP_OCOTP_GP8_LOCK	(OCOTP_WORD(0x410) | OCOTP_BIT(14) | OCOTP_WIDTH(2))
+#define MX8MP_OCOTP_GP9_LOCK	(OCOTP_WORD(0x410) | OCOTP_BIT(16) | OCOTP_WIDTH(2))
+
 #define OCOTP_SRK_LOCK			(OCOTP_WORD(0x400) | OCOTP_BIT(14) | OCOTP_WIDTH(1))
 #define OCOTP_ANALOG_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(18) | OCOTP_WIDTH(2))
 #define OCOTP_MISC_CONF_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(22) | OCOTP_WIDTH(1))

-- 
2.39.5



