Delivery-date: Thu, 11 Dec 2025 21:31:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnK3-00AQ94-0k
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:31:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnK1-0006gL-RT
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:31:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eAXk/OwfG833+mmj3ME0KvQ4uTApCX61w4x0NBLOHSg=; b=c7hS93cPkuHd2Ues5UnbU+h7XX
	ZhL70JVdGPxW/tAGClYrgaxQ0QQEo5fovkYuij4bvKQExyvWitSIs9GhWAg6zFiC40wZWZ19RjKSB
	7/DgUHv7Q0Rq0u1qALEqtFW8k2/y5nN0K7h/m2FPvhM7HVDqjSI2CcyPlAeor+jeBTzJKvGvzRoi0
	G0KYPMXH/ceYMp5ByQt7yr5ApOQBfc5pekG1ggw9Tq6R+8qK0cp3JJlMf+8ue7E/fNVJZyiXs6e0l
	1O0MmUNvZje0vfM8UQQCpFtNcptF/LS999X7eBOFawLw3x9UI8/7uRCi9vjKaNnp1N/e7qZscQDjp
	wbR9BkvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJW-0000000HE5K-3wlG;
	Thu, 11 Dec 2025 20:31:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJT-0000000HE2y-10vR
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:31:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-0006J3-L7; Thu, 11 Dec 2025 21:30:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-005BQw-1S;
	Thu, 11 Dec 2025 21:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-1NpP;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:29:54 +0100
Message-ID: <20251211203056.2014710-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_123059_276376_3512EDA2 
X-CRM114-Status: UNSURE (   8.85  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 03/16] efi: mode: add efi_get_runtime_services helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Similarly to the existing efi_get_boot_services() helper that replaces
hardcoded BS use to allow code to be usable from both payload and
upcoming loader support, efi_get_runtime_services() can replace RT use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/efi-mode.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/efi/efi-mode.h b/include/efi/efi-mode.h
index a917c038a1b0..696ab78acd50 100644
--- a/include/efi/efi-mode.h
+++ b/include/efi/efi-mode.h
@@ -7,7 +7,9 @@
 #include <linux/types.h>
 
 struct efi_boot_services;
+struct efi_runtime_services;
 extern struct efi_boot_services *BS;
+extern struct efi_runtime_services *RT;
 
 static inline bool efi_is_payload(void)
 {
@@ -27,4 +29,12 @@ static inline struct efi_boot_services *efi_get_boot_services(void)
 	return NULL;
 }
 
+static inline struct efi_runtime_services *efi_get_runtime_services(void)
+{
+	if (efi_is_payload())
+		return RT;
+
+	return NULL;
+}
+
 #endif
-- 
2.47.3



