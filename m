Delivery-date: Mon, 15 Dec 2025 08:59:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3Ui-00BfQh-1r
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:59:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3Ui-0005qp-1J
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:59:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vHSgGN3iXTOIiK3TI4JRd0Dy0R02fdMqi1VtI4XHuQg=; b=JntxhsWnNxK1SLpcEdQqwPoZRZ
	uGa2jjXkK78YWS69v5CugaEe192mORZ76czUA60cIeewLa+ehXC8RSvYHrcnH4as+9sQ5RPHrPJuI
	eKtnpaq35vEzWSKICHT3tWEZtu47cHeU89GUT4dytlo2zQ2i3XoA0QiFRMh6Gf6mJLbMrpxhhCsHC
	i1R5V1UpqMGG/IDQXcwlyh702FfLsea9uxpgiS9bE5nlGMKPPFeW68kaBkrbL6X1ycIA+kPEmG1xy
	Liz4nKXQVsHY6CL/Gix/3X42djiDtEsSsY2JPt0AhbsoBjhWfuvNhYoTNebPWX3KvIsRrMw2jKpYm
	keLHnR/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3UF-00000003EZE-2Ztb;
	Mon, 15 Dec 2025 07:59:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3U9-00000003EXD-2cw4
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:59:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-0005a8-Co; Mon, 15 Dec 2025 08:59:10 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-005kAb-0Z;
	Mon, 15 Dec 2025 08:59:10 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-0000000594H-0Kpr;
	Mon, 15 Dec 2025 08:59:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 08:58:59 +0100
Message-ID: <20251215075907.1222551-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251215075907.1222551-1-a.fatoum@pengutronix.de>
References: <20251215075907.1222551-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_235913_699961_E3B388DA 
X-CRM114-Status: GOOD (  10.18  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] reset_source: inline document global.system.reset*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

global.system.reset is documented in the reset reason chapter in the
docs, but not for runtime use. global.system.reset_instance is not
documented at all.

Provide a description text for both.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/reset_source.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/reset_source.c b/common/reset_source.c
index bd1efe073664..77a75a490347 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -9,6 +9,7 @@
 #include <environment.h>
 #include <globalvar.h>
 #include <reset_source.h>
+#include <magicvar.h>
 
 static const char * const reset_src_names[] = {
 	[RESET_UKWN] = "unknown",
@@ -93,3 +94,6 @@ static int reset_source_init(void)
 	return 0;
 }
 coredevice_initcall(reset_source_init);
+
+BAREBOX_MAGICVAR(global.system.reset, "The reason for the last system reset")
+BAREBOX_MAGICVAR(global.system.reset_instance, "The reset reason instance number")
-- 
2.47.3



