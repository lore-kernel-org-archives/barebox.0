Delivery-date: Thu, 23 Mar 2023 12:52:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfJUr-00BoOl-TN
	for lore@lore.pengutronix.de; Thu, 23 Mar 2023 12:52:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfJUr-0001R5-N8
	for lore@pengutronix.de; Thu, 23 Mar 2023 12:52:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zxszXiwKUPLVRNg4402tnNbKTM/dbdv1xoKSO8M0n2w=; b=oNwxypgbCTnoB42h9CeXL0DzSn
	DJgHpXS3P8IQAaCxKrhAOPwzCRlzCBd/RVGOnYa0UFnHlr21tQwG8zhMU5/yQDA7U0ahHY3bkKgN0
	JK/JNLhPhJ00yDcbgpGAiLwhno4oEHgpLHifCg62aRzKSTVmfP7iyDap7YDyWAehlzjIC7gz1dbxd
	VXSMpsCfoHIGnsHOVDwerwpkXyO8VtOEoc811vdBqaPin9IjOUZeKq7oZPOn/SfcRBhAwZeLSGblk
	45pz7BMuK51M81hWW0h0IQH2P8e6zcaoxEj0JDRs9oe2qCbFqR1F4+3VKJLpjr99L9ouO2M4un8WF
	u9cPN+HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfJTc-001mgh-0B;
	Thu, 23 Mar 2023 11:51:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfJTZ-001mei-0X
	for barebox@lists.infradead.org;
	Thu, 23 Mar 2023 11:51:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pfJTV-00010F-N1; Thu, 23 Mar 2023 12:51:21 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfJTV-0068cr-2H; Thu, 23 Mar 2023 12:51:21 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfJTU-00Anje-DC; Thu, 23 Mar 2023 12:51:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 23 Mar 2023 12:51:17 +0100
Message-Id: <20230323115117.2574352-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_045125_200353_78807932 
X-CRM114-Status: UNSURE (   8.95  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pbl: Implement dev_printf()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Using dev_err() and friends in PBL results in undefined references.
Implement dev_printf() for PBL to avoid that. Just ignore the dev
argument here as it's likely not intialized in PBL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 pbl/console.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/pbl/console.c b/pbl/console.c
index a147e2a19e..1a6e839c15 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -79,6 +79,21 @@ int pr_print(int level, const char *fmt, ...)
 	return i;
 }
 
+int dev_printf(int level, const struct device *dev, const char *fmt, ...)
+{
+	va_list args;
+	uint i;
+	char printbuffer[CFG_PBSIZE];
+
+	va_start(args, fmt);
+	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
+	va_end(args);
+
+	console_puts(CONSOLE_STDERR, printbuffer);
+
+	return i;
+}
+
 int ctrlc(void)
 {
 	return 0;
-- 
2.30.2



