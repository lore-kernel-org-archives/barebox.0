Delivery-date: Fri, 28 Nov 2025 18:22:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2Ab-005rEh-0i
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 18:22:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2Aa-0001Ox-0Q
	for lore@pengutronix.de; Fri, 28 Nov 2025 18:22:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T+CtzmBbTCGZh0yQy4KdCPfGKn9UlTTNYWspkd9hj8I=; b=qz8zavvDEt5cSpjt7kIlZqlBpO
	t0Zkm0TUudBfZjbYlyQlIdNK5cAVILGigUOIwPv7S2v8nQzT66l5gAIbEGx8FVXOJM25J/uU5xBW1
	9ut4X7fB31bbQOUbhDFgKPtiN/KEWSVtjJp7T8oqft4j9Dsuo+6EPiUCGCR5VbDV+7dSkwAQ5ADoE
	hU66G23nJ7uVrF3dJeLPw/xhwP+elTFRurC1jrPnt2SjoUsnVhBpLjSxO8V7gxaAUfUmKAwPwF0CB
	abF6XV7F/SlP4UoLu1WdhvWeN6Yod3zrfIRBg+z4ZwFqyK+9RCbgKbav8YsvoRKawrebLskocR0/l
	V5+58H4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2A9-00000000ipm-45P1;
	Fri, 28 Nov 2025 17:21:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2A8-00000000ioa-2pXY
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 17:21:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2A7-000199-6I; Fri, 28 Nov 2025 18:21:39 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2A7-002zV9-00;
	Fri, 28 Nov 2025 18:21:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2A6-000000009Kr-3n99;
	Fri, 28 Nov 2025 18:21:38 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 18:21:36 +0100
Message-ID: <20251128172138.35867-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128172138.35867-1-a.fatoum@pengutronix.de>
References: <20251128172138.35867-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_092140_714949_5DB3200A 
X-CRM114-Status: GOOD (  13.24  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] usb: add support for barebox,dr_mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's not rare to have barebox configure a USB-A port as peripheral or
OTG, because it's used for initial bootstrap of the system with a
non-spec compliant cable.

Allow for this reason to set a barebox,dr_mode that barebox will use
instead of dr_mode if available and Linux will ignore.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/core/of.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/core/of.c b/drivers/usb/core/of.c
index bfe0ae315763..3c2ba5a64ae2 100644
--- a/drivers/usb/core/of.c
+++ b/drivers/usb/core/of.c
@@ -36,9 +36,9 @@ static enum usb_dr_mode usb_get_dr_mode_from_string(const char *str)
  * usb_get_dr_mode - Get dual role mode for given device
  * @dev:	Pointer to the given device
  *
- * The function gets phy interface string from property 'dr_mode',
- * in the given device's device tree node and returns the correspondig
- * enum usb_dr_mode
+ * The function gets phy interface string from property 'barebox,dr_mode'
+ * or 'dr_mode' in the given device's device tree node and returns the
+ * correspondig enum usb_dr_mode
  */
 enum usb_dr_mode usb_get_dr_mode(struct device *dev)
 {
@@ -46,7 +46,9 @@ enum usb_dr_mode usb_get_dr_mode(struct device *dev)
 	const char *dr_mode;
 	int err;
 
-	err = of_property_read_string(np, "dr_mode", &dr_mode);
+	err = of_property_read_string(np, "barebox,dr_mode", &dr_mode);
+	if (err < 0)
+		err = of_property_read_string(np, "dr_mode", &dr_mode);
 	if (err < 0)
 		return USB_DR_MODE_UNKNOWN;
 
-- 
2.47.3



