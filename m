Delivery-date: Tue, 10 Jan 2023 16:52:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGvM-007uhU-6k
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 16:52:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGvJ-00017x-Ud
	for lore@pengutronix.de; Tue, 10 Jan 2023 16:52:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Wai7bWyrnD6Y+zlDo81/TF27PZACZ/5daN4wqDgHHM8=; b=ShXa/l4p+fWMl0/n2MZ1F8Kwmq
	2c8SUD1dZTGKbQxtIpp3HeId7zIusHqyTlnD6AsKK18ytvwSh2mE0FFdaB0gutSVIN+xImPD5mcOF
	WnjaOtpcqrefT0M5L4L/qmIWhf/O/ChM4w9501/pgN5bwdAPKBtyGXT0HOg0/vXsE+hmgFWQ48iUr
	PGRBQca1wvVKUR2s/fEyg8sGitCLPJvVXOcegaBGGZYlM3vLnNkRg1oLr6CQMYfEsGvUK57V/53eo
	1S+rwy8xE6efgnhwSM1L1tvc+xuJO9vksYF1hwtTRgNyyuxSiMg0RcriYIRHwVVTM9HkTfKnjD8OV
	7syOaiyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGtx-007er0-Hr; Tue, 10 Jan 2023 15:51:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGtm-007ep3-4Z
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 15:50:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFGti-0000o5-Jw; Tue, 10 Jan 2023 16:50:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pFGti-0056o9-0U; Tue, 10 Jan 2023 16:50:46 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pFGtg-008ZgA-HE; Tue, 10 Jan 2023 16:50:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 10 Jan 2023 16:50:37 +0100
Message-Id: <20230110155039.2039341-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_075050_210292_5B981FC1 
X-CRM114-Status: GOOD (  10.68  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] mci: Add more respone types
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mci.h | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/include/mci.h b/include/mci.h
index d949310fac..d3201e17e6 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -326,6 +326,17 @@
 #define MMC_RSP_BUSY    (1 << 3)                /* card may send busy */
 #define MMC_RSP_OPCODE  (1 << 4)                /* response contains opcode */
 
+#define MMC_CMD_MASK    (3 << 5)                /* non-SPI command type */
+#define MMC_CMD_AC      (0 << 5)
+#define MMC_CMD_ADTC    (1 << 5)
+#define MMC_CMD_BC      (2 << 5)
+#define MMC_CMD_BCR     (3 << 5)
+
+#define MMC_RSP_SPI_S1  (1 << 7)                /* one status byte */
+#define MMC_RSP_SPI_S2  (1 << 8)                /* second byte */
+#define MMC_RSP_SPI_B4  (1 << 9)                /* four data bytes */
+#define MMC_RSP_SPI_BUSY (1 << 10)              /* card may send busy */
+
 #define MMC_RSP_NONE    (0)
 #define MMC_RSP_R1      (MMC_RSP_PRESENT|MMC_RSP_CRC|MMC_RSP_OPCODE)
 #define MMC_RSP_R1b	(MMC_RSP_PRESENT|MMC_RSP_CRC|MMC_RSP_OPCODE|MMC_RSP_BUSY)
@@ -336,6 +347,19 @@
 #define MMC_RSP_R6      (MMC_RSP_PRESENT|MMC_RSP_CRC|MMC_RSP_OPCODE)
 #define MMC_RSP_R7      (MMC_RSP_PRESENT|MMC_RSP_CRC|MMC_RSP_OPCODE)
 
+/*
+ * These are the SPI response types for MMC, SD, and SDIO cards.
+ * Commands return R1, with maybe more info.  Zero is an error type;
+ * callers must always provide the appropriate MMC_RSP_SPI_Rx flags.
+ */
+#define MMC_RSP_SPI_R1  (MMC_RSP_SPI_S1)
+#define MMC_RSP_SPI_R1B (MMC_RSP_SPI_S1|MMC_RSP_SPI_BUSY)
+#define MMC_RSP_SPI_R2  (MMC_RSP_SPI_S1|MMC_RSP_SPI_S2)
+#define MMC_RSP_SPI_R3  (MMC_RSP_SPI_S1|MMC_RSP_SPI_B4)
+#define MMC_RSP_SPI_R4  (MMC_RSP_SPI_S1|MMC_RSP_SPI_B4)
+#define MMC_RSP_SPI_R5  (MMC_RSP_SPI_S1|MMC_RSP_SPI_S2)
+#define MMC_RSP_SPI_R7  (MMC_RSP_SPI_S1|MMC_RSP_SPI_B4)
+
 /** command information to be sent to the SD/MMC card */
 struct mci_cmd {
 	unsigned cmdidx;	/**< Command to be sent to the SD/MMC card */
-- 
2.30.2



