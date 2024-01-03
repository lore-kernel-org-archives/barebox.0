Delivery-date: Wed, 03 Jan 2024 19:35:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65i-002O3b-1D
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:35:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65a-0006t4-OZ
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:35:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OHtYW7CC7T1P0UgpFb/JwfZoT0LMX3xrokoymxUeAug=; b=gi7ZrJqxb7y9CS3ir1hUnn8Xch
	C66Bq73eXZWJfCmKQIQtE5brEG6mVF/yhwDa2KmNaPHnN2BbCdRxHNmKE+q0HxIa7DtiHtoz+VS12
	uiYfbMJu/V15l08jZNxPC9X4tFMaZhYw8KKBsInktMxIULQPVkmTAfSPDz/ExjPQ/P3jE7hJN0+1K
	7OCYlRHpmqv0no023wGczSDIxXcbwSYHRmkz+QkLr4ifJqjd60wJjKpqxRIg+Tg1mCVAlJCGkvxN0
	evYRBFR99L3HSimaibxQbCuqqBojPn/D6u4TIQ9S3dGKtNbXbVh25mVR96VvpyK1/hdQRUYKmtYSI
	D9iMGcuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL63y-00BkZT-2C;
	Wed, 03 Jan 2024 18:33:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61D-00Bh68-27
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-0001ba-Pw; Wed, 03 Jan 2024 19:30:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000Awf-D6; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-2F;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:21 +0100
Message-Id: <20240103181312.409668-62-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103107_711759_1DEB4710 
X-CRM114-Status: GOOD (  11.68  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 061/112] efi: add efi_is_loader/efi_is_payload helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, whether we are running under EFI was a compile-time decision.
This will change with ARM support, where the same barebox binary can
either probe from DT or from EFI. Prepare for this by adding helpers
to determine whether barebox is acting as EFI loader or as payload.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/efi-mode.h | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)
 create mode 100644 include/efi/efi-mode.h

diff --git a/include/efi/efi-mode.h b/include/efi/efi-mode.h
new file mode 100644
index 000000000000..a917c038a1b0
--- /dev/null
+++ b/include/efi/efi-mode.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __EFI_MODE_H
+#define __EFI_MODE_H
+
+#include <linux/stddef.h>
+#include <linux/types.h>
+
+struct efi_boot_services;
+extern struct efi_boot_services *BS;
+
+static inline bool efi_is_payload(void)
+{
+	return IS_ENABLED(CONFIG_EFI_PAYLOAD) && BS;
+}
+
+static inline bool efi_is_loader(void)
+{
+	return false;
+}
+
+static inline struct efi_boot_services *efi_get_boot_services(void)
+{
+	if (efi_is_payload())
+		return BS;
+
+	return NULL;
+}
+
+#endif
-- 
2.39.2



