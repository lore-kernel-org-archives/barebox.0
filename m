Delivery-date: Mon, 26 Jan 2026 14:05:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkMHD-005Xzt-2S
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 14:05:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkMHC-0000mK-Nl
	for lore@pengutronix.de; Mon, 26 Jan 2026 14:05:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NDK1ix504yziARRmt/FXwIBJU9JPzZLawL66c6efWQU=; b=r+3H/9qjV5Fxb005sL5Hpha6Gz
	HxymDoO9nWnjGG4PNMa6w0UavPLGq/IOWRfYuHkZ3BQtC9bjyZx6xURQGAceAuDhaAIW2xLBBZUD2
	W14/A46YS3d16wLl69VNcmwzlBrAQAlFN853w5MlEjxfSH3o7Uf2lV6aPDrc5sShY7piBSvHL1MQT
	RBKnCzV4GGHbihR6qG9TJxpnEjC+3NmK42A1LxC3llypY1IfXgSbm90hYUF72KumNnr2sy5RE/1+u
	8P5w9eH1/FGy60K81TWJSUEzVcZVG2im8i2ztupMRwcUWxOrva27Ty36nZxxcLcSzacPe3mkmMCUV
	xURTKCFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkMGa-0000000CalP-2iul;
	Mon, 26 Jan 2026 13:04:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkMGX-0000000Cal1-2mEJ
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 13:04:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkMGW-0000fM-03; Mon, 26 Jan 2026 14:04:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkMGW-002aLb-1W;
	Mon, 26 Jan 2026 14:04:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkMGW-0000000GLy1-0hpx;
	Mon, 26 Jan 2026 14:04:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 26 Jan 2026 14:04:22 +0100
Message-ID: <20260126130422.3897277-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_050425_704651_297CDF10 
X-CRM114-Status: GOOD (  12.58  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] usb: fastboot: increase max answer size to 256
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Initial fasboot specification allowed at maximum 64 characters as
answer. This has been increased to 256 [1]. Allow for longer answer
sizes.

While at it use a define for the maximum answer length to avoid
repeating the hardcoded number. Also allow the answer to be exactly
the maximum length. Previous implementation used a 64 byte string
which included the '\0' string end and limited the usable size to
63 bytes. Now we can use the full 256 bytes.

[1] https://android.googlesource.com/platform/system/core/+/master/fastboot/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/fastboot.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index b661d610a3..96d7fbd8c7 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -269,11 +269,13 @@ static char *fastboot_msg[] = {
 	[FASTBOOT_MSG_NONE] = "",
 };
 
+#define FASTBOOT_MAX_RESPONSE_SIZE 256
+
 int fastboot_tx_print(struct fastboot *fb, enum fastboot_msg_type type,
 		      const char *fmt, ...)
 {
 	struct va_format vaf;
-	char buf[64];
+	char buf[FASTBOOT_MAX_RESPONSE_SIZE + 1];
 	va_list ap;
 	int n;
 	const char *msg = fastboot_msg[type];
@@ -282,7 +284,7 @@ int fastboot_tx_print(struct fastboot *fb, enum fastboot_msg_type type,
 	vaf.fmt = fmt;
 	vaf.va = &ap;
 
-	n = snprintf(buf, 64, "%s%pV", msg, &vaf);
+	n = snprintf(buf, FASTBOOT_MAX_RESPONSE_SIZE + 1, "%s%pV", msg, &vaf);
 
 	switch (type) {
 	case FASTBOOT_MSG_OKAY:
@@ -302,8 +304,8 @@ int fastboot_tx_print(struct fastboot *fb, enum fastboot_msg_type type,
 
 	va_end(ap);
 
-	if (n > 64)
-		n = 64;
+	if (n > FASTBOOT_MAX_RESPONSE_SIZE)
+		n = FASTBOOT_MAX_RESPONSE_SIZE;
 
 	return fb->write(fb, buf, n);
 }
-- 
2.47.3



