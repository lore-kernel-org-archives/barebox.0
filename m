Delivery-date: Tue, 27 May 2025 23:31:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tt-000yN3-27
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:31:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tr-0005mH-52
	for lore@pengutronix.de; Tue, 27 May 2025 23:31:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cnrMgAA7TS8i7Dgl3WrO/3M6+n//8v1Ed2ZYO5vgrGo=; b=kd2nrr96TsBW2patJs76CiklFX
	EAmiEM8WRmAfElDHaOU61LdaE3cOuws5Bnklr5k0jYAz1ZNuPjUj3DX7HzeI6n/dduHi/WAX798bx
	q4ZUn20hMF954GYOBECH0gA4BaRre+cSW6gLtUozGyo3Ho1mzAAHAWj1OAOe4X8sMa+OtZ5fPtesh
	CDDbkkADlnsMXhKQ/YQ9R6P9F9c7MHOds2jP3Ej8Bv7VJMqnSpa9Dcpwpq38g7QpPu1hJhBRQg12p
	oODg3EZ/JIT2x60zO2yVksxviZ62H5lNSV6hzi8uPzsHt32EUeqtn1A5a+oTiPv8gFlcElfWRU88y
	m9kPjmjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tI-0000000Bbkg-0hpE;
	Tue, 27 May 2025 21:31:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lO-0000000BaxZ-0mcO
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lM-00015n-Pn; Tue, 27 May 2025 23:23:09 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 27 May 2025 23:22:52 +0200
Message-Id: <20250527212300.575031-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142310_224293_C05FC508 
X-CRM114-Status: UNSURE (   8.65  )
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
X-Spam-Status: No, score=-7.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/15] efi: types: implement efi_phys_to_virt/efi_virt_to_phys helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

We shouldn't have any physical addresses exceeding 32-bit on 64-bit
systems, especially as barebox doesn't implement ARM32 LPAE.

Add helpers to convert between the types to be able to drop casts and
checks in the code.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/efi/types.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/include/efi/types.h b/include/efi/types.h
index c845d08d62b6..85aaf32f8f1d 100644
--- a/include/efi/types.h
+++ b/include/efi/types.h
@@ -2,7 +2,11 @@
 #ifndef _EFI_TYPES_H_
 #define _EFI_TYPES_H_
 
+#ifndef __ASSEMBLY__
+
 #include <linux/types.h>
+#include <linux/limits.h>
+#include <linux/stddef.h>
 #include <linux/compiler.h>
 #include <linux/uuid.h>
 
@@ -65,4 +69,17 @@ union efi_ip_address {
 	struct efi_ipv6_address v6;
 };
 
+static inline void *efi_phys_to_virt(efi_physical_addr_t addr)
+{
+	if (addr > UINTPTR_MAX)
+		__builtin_trap();
+
+	return (void *)(uintptr_t)addr;
+}
+
+static inline efi_physical_addr_t efi_virt_to_phys(const void *addr)
+{
+	return (uintptr_t)addr;
+}
+
 #endif
-- 
2.39.5



