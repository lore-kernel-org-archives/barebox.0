Delivery-date: Mon, 04 Mar 2024 20:06:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDe8-008dLr-2b
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:06:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDe6-0001r0-9I
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:06:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OHtYW7CC7T1P0UgpFb/JwfZoT0LMX3xrokoymxUeAug=; b=TY1r3hg1znnvU3gJL07bj7TbJQ
	ezsHk2D+Ey8Ls8T8BPFKKY8BuJQFv7z7veXxmmc3sdrXDwVMAx8tinc8GqCUwBqPQ9MQhbv3AESXz
	MZd4xkZO6rK8QSoHHRH13V9jNhuJajWsiCwVOoM0G0dsdYUT1SW//bAzvmSSsQtO//RzKhjdYoOsW
	AQnthZQyOGEu6nwrITWeAAOiLiLb7A+Xl359Jep63FZTCFxIFfd4R6D/nkY40DI6oFh0YBnlAOOdc
	BS2paFvwZDUsYEmfdNLney5m44CXVft50ukuP7SDGipo/5JkruvoTdyMimOxp5BHhGSwby5qjxZ86
	w1u/63+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDdY-0000000AKgK-3gUC;
	Mon, 04 Mar 2024 19:06:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaR-0000000AISx-2rxo
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OHtYW7CC7T1P0UgpFb/JwfZoT0LMX3xrokoymxUeAug=; b=IWquXRQfhnW0ckY1NGvlVhM+gE
	/58bEcDJW3JTVEuRUuE4oh5+tuevQn2hWgc+FkytDK77XBUsZ+jRRekVuPNriXMsQiC+o2zmlPsaE
	6lVU+ViZjJiY1M5hMVSXMrLh8lhwpgT7qhpAUSefowPyAmafeOyyXY/KLNj4WUk/1QUFgg2qfTHmH
	PWoooseBjlDrc3DtfJeiYN3Jha5RS9UzAvvY8U/a0HoQxhFI2ebqs4iBdwtWnW1A1PAuXpr3QQOOx
	RrCn9eBHxYrOGCrk8nVZhp9kqc5HNDJr6r7xH1TDSZsnndAEtkXf27qY8ARnuL/L7sQ0oosnY6Qv7
	qXjm7kJw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaK-000000051vj-2Oq7
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-00061v-EC; Mon, 04 Mar 2024 20:02:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-004PHZ-Vq; Mon, 04 Mar 2024 20:02:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYL-00Ed9V-2a;
	Mon, 04 Mar 2024 20:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:46 +0100
Message-Id: <20240304190038.3486881-62-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190248_710289_5E40BD7A 
X-CRM114-Status: GOOD (  11.95  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 061/113] efi: add efi_is_loader/efi_is_payload helpers
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



