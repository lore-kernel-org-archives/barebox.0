Delivery-date: Tue, 25 Feb 2025 13:03:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tmteg-006ks5-0K
	for lore@lore.pengutronix.de;
	Tue, 25 Feb 2025 13:03:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tmtee-0004ZX-Rl
	for lore@pengutronix.de; Tue, 25 Feb 2025 13:03:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lFO+OixCmv5KOFnpNnbGvYXj2zlNQVRYAMQ3Fs4tS00=; b=4tTXwYCGOGMn/d0RAesHur/Q9B
	RRK5RyIhBlsPQQxQKsbA/NnCYMhoiShccYGiK08iRir6VRoRkAHcY86mb4STpFDbBl//aTftraRd0
	+8ifeT/E/S6bTVLTV29EJGEuuVzbMFuCbzOiWDNvMF2ulR3EzrtkdkyAN+T3LiSJ2CpEdSxwZfdNy
	T4xP5UA4CbOaDIA8y3GFvVt+TGHqEZFpNmwKxOChtZ6aQUqzQAA1FEkpLrjZAyu9RCFAQo8JFlIu2
	mjnrOAhhD8JSfyeTrVNRxLBOoIC5or3v/SxkDEu2wvgXrqW2RKvQLN4M0vFYJJGF7TdHy7tcVTlm2
	y6zGO6gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmtdu-0000000H88d-3sYI;
	Tue, 25 Feb 2025 12:02:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmscG-0000000Gv4E-2cMX
	for barebox@lists.infradead.org;
	Tue, 25 Feb 2025 10:56:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tmscC-00034O-TO; Tue, 25 Feb 2025 11:56:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tmscC-002lAR-2K;
	Tue, 25 Feb 2025 11:56:40 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tmscC-009aSv-2A;
	Tue, 25 Feb 2025 11:56:40 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 25 Feb 2025 11:56:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-imx8-ocotp-gp-defines-v1-1-344b291675a7@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAOehvWcC/x2MSQqAMAwAvyI5G4gR16+IB9G05mBbWhFB/LvF4
 zDMPJAkqiQYiweiXJrUuwxVWcC6L84K6pYZmLgh5gb1uHv0qz8D2oCbGHWSkIeBzEI91W0HuQ0
 xi/v/TvP7fhhRJ4lnAAAA
X-Change-ID: 20250225-imx8-ocotp-gp-defines-2990fa080367
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_025644_669394_43EF5AA9 
X-CRM114-Status: UNSURE (   8.45  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] i.mx8: ocotp: add GPx defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The general purpose GPx registers changed position in the fuse map from
the i.MX6 series and derivates to the i.MX8 series. The i.MX8MP has 4
additional 128-bit wide fuse banks which have been added as well.

The defines have been derived from:

IMX8MNRM Rev. 2 (i.MX8MN)
IMX8MPRM Rev. 3 (i.MX8MP)
IMX8MMRM Rev. 3 (i.MX8MM)

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 include/mach/imx/ocotp-fusemap.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
index 3c961998b0fc4bd374331342baaa2051163309ae..74f3a55d182d50046d7d544603110fefd590e368 100644
--- a/include/mach/imx/ocotp-fusemap.h
+++ b/include/mach/imx/ocotp-fusemap.h
@@ -17,6 +17,10 @@
 #define MX8M_OCOTP_GP1_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(20) | OCOTP_WIDTH(2))
 #define MX8M_OCOTP_GP2_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(22) | OCOTP_WIDTH(2))
 #define MX8M_OCOTP_GP5_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(24) | OCOTP_WIDTH(2))
+#define MX8M_OCOTP_GP1_0		(OCOTP_WORD(0x780) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8M_OCOTP_GP1_1		(OCOTP_WORD(0x790) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8M_OCOTP_GP2_0		(OCOTP_WORD(0x7A0) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8M_OCOTP_GP2_1		(OCOTP_WORD(0x7B0) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
 
 /* available on i.MX8MP */
 #define MX8MP_OCOTP_GP1_LOCK	MX8M_OCOTP_GP1_LOCK
@@ -27,6 +31,22 @@
 #define MX8MP_OCOTP_GP7_LOCK	(OCOTP_WORD(0x410) | OCOTP_BIT(12) | OCOTP_WIDTH(2))
 #define MX8MP_OCOTP_GP8_LOCK	(OCOTP_WORD(0x410) | OCOTP_BIT(14) | OCOTP_WIDTH(2))
 #define MX8MP_OCOTP_GP9_LOCK	(OCOTP_WORD(0x410) | OCOTP_BIT(16) | OCOTP_WIDTH(2))
+#define MX8MP_OCOTP_GP6_0		(OCOTP_WORD(0xE40) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP6_1		(OCOTP_WORD(0xE50) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP6_2		(OCOTP_WORD(0xE60) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP6_3		(OCOTP_WORD(0xE70) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP7_0		(OCOTP_WORD(0xE80) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP7_1		(OCOTP_WORD(0xE90) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP7_2		(OCOTP_WORD(0xEA0) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP7_3		(OCOTP_WORD(0xEB0) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP8_0		(OCOTP_WORD(0xEC0) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP8_1		(OCOTP_WORD(0xED0) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP8_2		(OCOTP_WORD(0xEE0) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP8_3		(OCOTP_WORD(0xEF0) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP9_0		(OCOTP_WORD(0xF00) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP9_1		(OCOTP_WORD(0xF30) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP9_2		(OCOTP_WORD(0xF40) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define MX8MP_OCOTP_GP9_3		(OCOTP_WORD(0xF50) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
 
 #define OCOTP_SRK_LOCK			(OCOTP_WORD(0x400) | OCOTP_BIT(14) | OCOTP_WIDTH(1))
 #define OCOTP_ANALOG_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(18) | OCOTP_WIDTH(2))

---
base-commit: a2e7a50e3417b93effd9cce56ea94fec8b40f814
change-id: 20250225-imx8-ocotp-gp-defines-2990fa080367

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



