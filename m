Delivery-date: Mon, 16 Feb 2026 10:18:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukQ-002H2h-2Y
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:18:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukI-0008MA-Ng
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:18:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bjZH1WQXZybcTqWpKSIImM8fsyKwdliRLk/eT4Qw9EU=; b=gyDSW5NcFqAlDhhjoLP1vK94Qf
	7CtmlAJtOrG5gyV0KgbEIrEbpbGWT/p0R6dkMAQEGq7zjYScGcoQYPT3FbALFDAyeLluQrBbx33S8
	ToP2LsRYRCDp2t/l1iz5vjLRsq6mURxw6hlIHjp4q1w9i3fEzIjtm9/tPOHkW3ck3p7NXIeuraopY
	+4O2VTBz36euEYuBL5bmwm0qfeHKuXXDd9QYp8Y7fwAU/ItimlMyLyuntKf9zTwXzWkkozvOELeod
	poCHxGGMiLfgc1pegvjfCTkfk8JrdbO+JRNJAF3mpwj/EswSUEnytImgiTWfU3ja54Df6rnGrdzYr
	nmwIlj6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruj6-00000006Ezg-3RG9;
	Mon, 16 Feb 2026 09:17:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruio-00000006Eap-25Mw
	for barebox@bombadil.infradead.org;
	Mon, 16 Feb 2026 09:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=bjZH1WQXZybcTqWpKSIImM8fsyKwdliRLk/eT4Qw9EU=; b=UCWBmiH5UR/CGgj3T4PyakuE/o
	2Wh/g7DO4tj5hZL3xY1lFlcMni6v6BqeTpxyVW5T7Bg0FlhNCNiJWXt26pCW6IOAfWrugL/YxV98K
	X6RIxRWr0bL0gxau9l/an/7uHK+pq2831lnyb76Jk+eNPRtH+Hy81ZL3C4a+bbqRj6dR/or+Fi7Bf
	OSiWbQyQ53UrcxoZu27JiDK297mfF3Cf2Nhl9Ch8pgaY7xVBHF5YD4ZO9HaqNbTJCY92Fuo8yM61D
	vyQtnj1k97MRf94VNU4/OSvaWvbuJ9ewX1Q2YSP86HnLbR5MK3Cad5nUPBZ8P0PTexWTRFSlVxPWv
	BnckdrDw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruij-0000000EIEq-3rOU
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruig-0006ZO-O5; Mon, 16 Feb 2026 10:16:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruif-0012YC-0U;
	Mon, 16 Feb 2026 10:16:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH1-0000000Eudd-1hVi;
	Mon, 16 Feb 2026 09:48:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Feb 2026 09:44:37 +0100
Message-ID: <20260216084758.3548990-38-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_091646_845323_04831658 
X-CRM114-Status: GOOD (  12.83  )
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
Subject: [PATCH master 37/39] efi: payload: register dummy device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI payload support can enabled on top of an existing multi-image build
and thus runs into problems when the SoC specific initcalls implicitly
assume a device tree to be available.

Register a tentative empty device tree in this case to avoid issues.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c       |  8 ++++++--
 efi/payload/boarddata.c | 11 +++++++++++
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 4e83a757a4e9..8a17b0853ad4 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2103,8 +2103,12 @@ of_populate_initcall(barebox_of_populate);
 
 int barebox_register_of(struct device_node *root)
 {
-	if (root_node)
-		return -EBUSY;
+	if (root_node) {
+		if (!list_empty(&root->children))
+			return -EBUSY;
+		/* Not necessarily safe to free, so leak it.. */
+		root_node = NULL;
+	}
 
 	of_set_root_node(root);
 	of_fix_tree(root);
diff --git a/efi/payload/boarddata.c b/efi/payload/boarddata.c
index a2f4b8d21b4a..ec6ee7bbd98f 100644
--- a/efi/payload/boarddata.c
+++ b/efi/payload/boarddata.c
@@ -14,6 +14,7 @@
 #include <linux/printk.h>
 #include <debug_ll.h>
 #include <init.h>
+#include <of.h>
 #include <pbl/handoff-data.h>
 
 static int handle_efi_boarddata(void)
@@ -46,3 +47,13 @@ static int handle_efi_boarddata(void)
 	return 0;
 }
 pure_initcall(handle_efi_boarddata);
+
+static __maybe_unused int efi_register_of(void)
+{
+	if (!BS)
+		return 0;
+	return barebox_register_of(of_new_node(NULL, NULL));
+}
+#ifdef CONFIG_OFDEVICE
+core_initcall(efi_register_of);
+#endif
-- 
2.47.3



