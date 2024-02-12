Delivery-date: Mon, 12 Feb 2024 14:29:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZWNf-003PkB-0W
	for lore@lore.pengutronix.de;
	Mon, 12 Feb 2024 14:29:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZWNe-0004SS-Eo
	for lore@pengutronix.de; Mon, 12 Feb 2024 14:29:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15LNTX2J34Jmly+IiWT5xZyIBJYUFEg+42FknstUmeI=; b=wMMwIiHvZRiEcW
	jfa86QlSkqVDsp51Bdl9fXKsNiD/4FiIksvp64qbv+RcH9YIQHU/AjQUkBExqLwwPRu2W8wGPTi4r
	OQ0QItf6Ni0SqE/u8MRWLnF6YETTUhhbBDKbHzYEi7cjXt1ef7o6l5kt5NkM4k63HhO68UTkTFVok
	uq1mOGGGiTDglprN0+Zxfoy5+iGfMq93H2ws4J4cHAISybpCLRa0yR1weh9tckM5o1TVUaXHNunUQ
	TVp88m1Y88hK/4aRGAPzKuedupQNegan/xYXlXyDL01eoPY+yzoq+/eT1fsH9JWWgqNqI+Rv4KsdX
	XCE2VOcAksBDQiPL4EKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZWN1-00000005Vs6-1Fwg;
	Mon, 12 Feb 2024 13:29:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZWMv-00000005Vnf-1Ukl
	for barebox@lists.infradead.org;
	Mon, 12 Feb 2024 13:29:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1rZWMs-0004B9-Jt
	for barebox@lists.infradead.org; Mon, 12 Feb 2024 14:29:06 +0100
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1rZWMs-000ISP-6V
	for barebox@lists.infradead.org; Mon, 12 Feb 2024 14:29:06 +0100
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id D83F428C4C3
	for <barebox@lists.infradead.org>; Mon, 12 Feb 2024 13:29:05 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 98B0D28C4BF;
	Mon, 12 Feb 2024 13:29:05 +0000 (UTC)
Received: from blackshift.org (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 0ef28143;
	Mon, 12 Feb 2024 13:29:04 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: sha@pengutronix.de
Date: Mon, 12 Feb 2024 14:27:52 +0100
Message-ID: <20240212132901.1641599-3-mkl@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240212132901.1641599-1-mkl@pengutronix.de>
References: <20240212132901.1641599-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_052909_472752_7A566AA2 
X-CRM114-Status: GOOD (  10.60  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] nvmem: ocotp: use tab for indention only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace space+tabs by tabs only for indention.

Fixes: 1c2d1d4e5985 ("ARM: i.MX8MP: enhance support for ocotp driver")
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 50 ++++++++++++++++++++++---------------------
 1 file changed, 26 insertions(+), 24 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 28c121152e8b..16d2a6be9fce 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -53,12 +53,12 @@
 #define OCOTP_READ_CTRL			0x30
 #define OCOTP_READ_FUSE_DATA		0x40
 
-#define MX7_OCOTP_DATA0 		0x20
-#define MX7_OCOTP_DATA1 		0x30
-#define MX7_OCOTP_DATA2 		0x40
-#define MX7_OCOTP_DATA3 		0x50
-#define MX7_OCOTP_READ_CTRL 		0x60
-#define MX7_OCOTP_READ_FUSE_DATA0 	0x70
+#define MX7_OCOTP_DATA0			0x20
+#define MX7_OCOTP_DATA1			0x30
+#define MX7_OCOTP_DATA2			0x40
+#define MX7_OCOTP_DATA3			0x50
+#define MX7_OCOTP_READ_CTRL		0x60
+#define MX7_OCOTP_READ_FUSE_DATA0	0x70
 #define MX7_OCOTP_READ_FUSE_DATA1	0x80
 #define MX7_OCOTP_READ_FUSE_DATA2	0x90
 #define MX7_OCOTP_READ_FUSE_DATA3	0xA0
@@ -67,27 +67,29 @@
 #define DEF_STROBE_PROG			10000	/* IPG clocks */
 
 /* OCOTP Registers bits and masks */
-#define OCOTP_CTRL_ADDR		  GENMASK(7, 0)
-#define OCOTP_CTRL_BUSY		  BIT(8)
-#define OCOTP_CTRL_ERROR	  BIT(9)
-#define OCOTP_CTRL_RELOAD_SHADOWS BIT(10)
-#define OCOTP_CTRL_WR_UNLOCK	  GENMASK(31, 16)
-#define OCOTP_CTRL_WR_UNLOCK_KEY  0x3E77
+#define OCOTP_CTRL_ADDR			GENMASK(7, 0)
+#define OCOTP_CTRL_BUSY			BIT(8)
+#define OCOTP_CTRL_ERROR		BIT(9)
+#define OCOTP_CTRL_RELOAD_SHADOWS	BIT(10)
+#define OCOTP_CTRL_WR_UNLOCK		GENMASK(31, 16)
+#define OCOTP_CTRL_WR_UNLOCK_KEY	0x3E77
 
-/* i.MX8MP OCOTP CTRL has a different layout. See RM Rev.1 06/2021 Section
-	* 6.3.5.1.2.4 */
-#define OCOTP_CTRL_ADDR_8MP	      GENMASK(8, 0)
-#define OCOTP_CTRL_BUSY_8MP	      BIT(9)
-#define OCOTP_CTRL_ERROR_8MP	      BIT(10)
-#define OCOTP_CTRL_RELOAD_SHADOWS_8MP BIT(11)
-#define OCOTP_CTRL_WR_UNLOCK_8MP      GENMASK(31, 16)
+/*
+ * i.MX8MP OCOTP CTRL has a different layout. See RM Rev.1 06/2021
+ * Section 6.3.5.1.2.4
+ */
+#define OCOTP_CTRL_ADDR_8MP		GENMASK(8, 0)
+#define OCOTP_CTRL_BUSY_8MP		BIT(9)
+#define OCOTP_CTRL_ERROR_8MP		BIT(10)
+#define OCOTP_CTRL_RELOAD_SHADOWS_8MP	BIT(11)
+#define OCOTP_CTRL_WR_UNLOCK_8MP	GENMASK(31, 16)
 
-#define OCOTP_TIMING_STROBE_READ GENMASK(21, 16)
-#define OCOTP_TIMING_RELAX	 GENMASK(15, 12)
-#define OCOTP_TIMING_STROBE_PROG GENMASK(11, 0)
-#define OCOTP_TIMING_WAIT	 GENMASK(27, 22)
+#define OCOTP_TIMING_STROBE_READ	GENMASK(21, 16)
+#define OCOTP_TIMING_RELAX		GENMASK(15, 12)
+#define OCOTP_TIMING_STROBE_PROG	GENMASK(11, 0)
+#define OCOTP_TIMING_WAIT		GENMASK(27, 22)
 
-#define OCOTP_READ_CTRL_READ_FUSE BIT(1)
+#define OCOTP_READ_CTRL_READ_FUSE	BIT(1)
 
 #define OCOTP_OFFSET_TO_ADDR(o) (OCOTP_OFFSET_TO_INDEX(o) * 4)
 
-- 
2.43.0




