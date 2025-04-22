Delivery-date: Tue, 22 Apr 2025 07:27:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A6-003uqk-0V
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:27:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A4-00049d-Nl
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:27:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1MwXPOnSvCPLi7OZh/DTwB9ek3VlANCTd/ZxRDf+CaY=; b=xYMBC/Nk+xAUe0a+1em/CCf916
	DKTzKatzJy6BkHb+gUSSRfUxnTj69tXQSZh6GHlY+CdAKv8iBY10XrnJRXzo6AuqsVVWUTxz78hYo
	Iz8JnehcdcQkbCz4QRXPjEYHx+ufgFTzdMfYpOADZNvsz2uN778XBS8Ks3rM+hAUMZVxxbTUGj3Yq
	BA2B/4GvHZJI/CLWzAUVMBm38VQudFI8Kw4tmPBBWD4wiR08NzVaetasaT4rqRsUF8oha0QG5G+6S
	0JLDtPrVEEn8YCyrepXRxgPrLwV6xcRDc/IQ1rXjZhOMVYTytYDrSGGdx05Z9dbO77fXjSRx4RGLg
	vslmP8Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769c-00000005rEP-2kAB;
	Tue, 22 Apr 2025 05:26:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769X-00000005r9V-0PkM
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:26:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-0003ir-Pe; Tue, 22 Apr 2025 07:26:37 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-001Uv4-1u;
	Tue, 22 Apr 2025 07:26:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-00EN4R-1c;
	Tue, 22 Apr 2025 07:26:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 07:26:29 +0200
Message-Id: <20250422052635.3423961-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
References: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_222639_161975_D0A20EA4 
X-CRM114-Status: GOOD (  10.40  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/9] mci: move mci_setup_cmd definition into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use outside of mci-core, e.g. in PBL drivers, move the helper
function into the header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 15 ---------------
 include/mci.h          | 16 ++++++++++++++++
 2 files changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 5ab07d09c546..9a8e1ce656b5 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -97,21 +97,6 @@ static int mci_send_cmd_retry(struct mci *mci, struct mci_cmd *cmd,
 	return ret;
 }
 
-/**
- * @param p Command definition to setup
- * @param cmd Valid SD/MMC command (refer MMC_CMD_* / SD_CMD_*)
- * @param arg Argument for the command (optional)
- * @param response Command's response type (refer MMC_RSP_*)
- *
- * Note: When calling, the 'response' must match command's requirements
- */
-static void mci_setup_cmd(struct mci_cmd *p, unsigned cmd, unsigned arg, unsigned response)
-{
-	p->cmdidx = cmd;
-	p->cmdarg = arg;
-	p->resp_type = response;
-}
-
 /**
  * configure optional DSR value
  * @param mci_dev MCI instance
diff --git a/include/mci.h b/include/mci.h
index 43a0b0131572..10bba878a8f9 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -480,6 +480,22 @@ struct mci_cmd {
 	unsigned response[4];	/**< card's response */
 };
 
+/**
+ * @param p Command definition to setup
+ * @param cmd Valid SD/MMC command (refer MMC_CMD_* / SD_CMD_*)
+ * @param arg Argument for the command (optional)
+ * @param response Command's response type (refer MMC_RSP_*)
+ *
+ * Note: When calling, the 'response' must match command's requirements
+ */
+static inline void mci_setup_cmd(struct mci_cmd *p, unsigned cmd,
+				 unsigned arg, unsigned response)
+{
+	p->cmdidx = cmd;
+	p->cmdarg = arg;
+	p->resp_type = response;
+}
+
 /** data information to be used with some SD/MMC commands */
 struct mci_data {
 	union {
-- 
2.39.5



