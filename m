Delivery-date: Thu, 11 Dec 2025 21:31:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnK9-00AQ9w-01
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:31:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnK7-0006ki-8b
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:31:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8Qm/WI41cJlBocK5HtRu5ZTY7ufsi7MeaAHSMoqpGAo=; b=PfCjS/pys1etHavgzoHIE3Y/Fc
	ShPXb0tsrdnUuh2hrEiS49Kyy3tcBSj+A+Oalv75GO8ZrUs4ZTYQ+A56djD1Q5S+OsZWMFp+dDwxn
	J1bOkypzXGmbrfhodqlGPlkBayS2w6N67BzSbh8F2S3BTwsV6fcwR44pryvh6LV2wHlhILC3eSJmC
	Lw2wkwRvFVDnyQdlt8bcUTl7hiKeyWXPWKd3IOENgr0XSS4VVK7EjSDfK6dTA8U+JYFw9DaaTwYMK
	j359G1j9IHSCvDQ2eu6NcSoix8eomqndA0XNoZYMgOva8s+EU08Pji/FMHowFoXd23m6P2Vg23ogM
	v9QkdaSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJe-0000000HEBv-2smF;
	Thu, 11 Dec 2025 20:31:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJZ-0000000HE6p-35G6
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8Qm/WI41cJlBocK5HtRu5ZTY7ufsi7MeaAHSMoqpGAo=; b=DqUwchWPO31i84Lw+X0NiR13z1
	l5EYwpeKqTxRpFJB4kvvqRAw1UbTje/7ksd2YJ8812JD+mxFEpejOs6/BOI/u8yFRXY3v5XcS8WN2
	qSIQq2SnNN3nMgJoagCUIz0EOp3D64UhpEMwOKcbo1bAXsTQ3fWwBW1hJ8sp6sqMqmVu9dPDXsyXo
	xe3AtUt0WbhV4Ie5dQjBSBo0wnvXyHw+2GL/DkY/9e9qF1PSHrQIp85xiQ01wYIU/8q/aONFwgA0i
	dyPVYyxy87STZ2MUhW4dLgTxmtN3Lx1/fTEQmEAgja6tep6x0WXxjzwM0qZrTKtzhikAt48iWKPZt
	usGsWtWg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmS0-0000000FZ9W-1q60
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:35:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-0006JS-R5; Thu, 11 Dec 2025 21:30:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-005BR6-1x;
	Thu, 11 Dec 2025 21:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-23T5;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:29:57 +0100
Message-ID: <20251211203056.2014710-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_193544_549905_C3F3715C 
X-CRM114-Status: UNSURE (   9.18  )
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
Subject: [PATCH 06/16] efi: handle: build for both EFI payload and loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since commit 387d6f9ed9a1 ("commands: provide efi_handle_dump in both
payload and loader"), drivers/efi/efi-handle.c is usable outside payload
as well, so move it into the efi/ directory.

While at it, drop the common.h header as it's only included header you
actually needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/efi/Makefile                     | 2 +-
 efi/Makefile                             | 2 +-
 drivers/efi/efi-handle.c => efi/handle.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)
 rename drivers/efi/efi-handle.c => efi/handle.c (97%)

diff --git a/drivers/efi/Makefile b/drivers/efi/Makefile
index 4e3c39e14486..8f0b43e70e45 100644
--- a/drivers/efi/Makefile
+++ b/drivers/efi/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-y += efi-handle.o
+
 obj-$(CONFIG_EFI_PAYLOAD) += efi-device.o
diff --git a/efi/Makefile b/efi/Makefile
index 508c07c9b536..6693564f7071 100644
--- a/efi/Makefile
+++ b/efi/Makefile
@@ -3,4 +3,4 @@
 obj-$(CONFIG_EFI_PAYLOAD)	+= payload/
 obj-$(CONFIG_EFI_GUID)		+= guid.o
 obj-$(CONFIG_EFI_DEVICEPATH)	+= devicepath.o
-obj-y				+= errno.o efivar.o efivar-filename.o
+obj-y				+= errno.o handle.o efivar.o efivar-filename.o
diff --git a/drivers/efi/efi-handle.c b/efi/handle.c
similarity index 97%
rename from drivers/efi/efi-handle.c
rename to efi/handle.c
index 6485e97ded3f..d091d9e16514 100644
--- a/drivers/efi/efi-handle.c
+++ b/efi/handle.c
@@ -3,11 +3,11 @@
  * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  */
 
-#include <common.h>
 #include <efi.h>
 #include <efi/efi-util.h>
 #include <efi/efi-device.h>
 #include <efi/efi-mode.h>
+#include <malloc.h>
 
 int __efi_locate_handle(struct efi_boot_services *bs,
 			enum efi_locate_search_type search_type,
-- 
2.47.3



