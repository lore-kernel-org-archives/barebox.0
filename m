Delivery-date: Mon, 12 Feb 2024 14:29:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZWNc-003PjI-0u
	for lore@lore.pengutronix.de;
	Mon, 12 Feb 2024 14:29:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZWNb-0004Qs-My
	for lore@pengutronix.de; Mon, 12 Feb 2024 14:29:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IXM9YU3hxWvFZccg1yJADkDlVpc+1SFPrQYZjPdA6Q=; b=zrKIjVxUHYKpct
	MrNJx6b9EkKf9jAD9npGf6JYIzSXioxcg+MNcweqNMW+geEDKJ+P4/pILNl7t+QJ5wulG1a4yVVJc
	CR4EJx+5lJQa11y1E4YsL1EWv2x2C/wQ4aI3+4ZLkEBA4b0OryCfSoXYOuTTgla4TuQZnHnXXv32N
	G7HiVPybFDziDyo2RXxhzgMTPR+/jzBMdoktFjaSL7JsgP+/soOHSNcqiy60TjWoG3nzbCG+66MnN
	VHkNQ+7sznrz2ITQgNTtI+25MMDQRBNf8gMAJulOZ0kTVX3L4Qf5/3utT+4GnoqqNJ6DKBe/R1Ln0
	9lRBVd6AuMlVfxkUdauw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZWN0-00000005Vrh-2sPS;
	Mon, 12 Feb 2024 13:29:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZWMv-00000005Vne-1Ogx
	for barebox@lists.infradead.org;
	Mon, 12 Feb 2024 13:29:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1rZWMs-0004B8-H1
	for barebox@lists.infradead.org; Mon, 12 Feb 2024 14:29:06 +0100
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1rZWMs-000ISO-44
	for barebox@lists.infradead.org; Mon, 12 Feb 2024 14:29:06 +0100
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id BE3DD28C4C2
	for <barebox@lists.infradead.org>; Mon, 12 Feb 2024 13:29:05 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 8987928C4BE;
	Mon, 12 Feb 2024 13:29:05 +0000 (UTC)
Received: from blackshift.org (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id c80bc095;
	Mon, 12 Feb 2024 13:29:04 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: sha@pengutronix.de
Date: Mon, 12 Feb 2024 14:27:51 +0100
Message-ID: <20240212132901.1641599-2-mkl@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240212132901.1641599-1-mkl@pengutronix.de>
References: <20240212132901.1641599-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_052909_448967_B31E6BA7 
X-CRM114-Status: GOOD (  11.44  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] habv4: convert comments to common coding style
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/hab/habv4.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index c60a658b89af..6440ef7f5196 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -147,9 +147,11 @@ struct hab_header {
 typedef enum hab_status hab_loader_callback_fn(void **start, size_t *bytes, const void *boot_data);
 typedef void hab_image_entry_fn(void);
 
-/* This table is constructed from the NXP manual "High Assurance Boot Version 4
- * Application Programming Interface Reference Manual", section 4.5 ROM vector
- * table. Revision 1.4 */
+/*
+ * This table is constructed from the NXP manual "High Assurance Boot
+ * Version 4 Application Programming Interface Reference Manual",
+ * section 4.5 ROM vector table. Revision 1.4
+ */
 struct habv4_rvt {
 	struct hab_header header;
 	enum hab_status (*entry)(void);
@@ -169,9 +171,11 @@ struct habv4_rvt {
 
 #define FSL_SIP_HAB 0xC2000007
 
-/* These values correspondent to the jump table found in the upstream TF-A
- * version 2.10 `imx_hab_handler`, not all HAB rom functions are supported yet.
- * */
+/*
+ * These values correspondent to the jump table found in the upstream
+ * TF-A version 2.10 `imx_hab_handler`, not all HAB rom functions are
+ * supported yet.
+ */
 enum hab_sip_cmd {
 	FSL_SIP_HAB_AUTHENTICATE = 0x00,
 	FSL_SIP_HAB_ENTRY = 0x01,
-- 
2.43.0




