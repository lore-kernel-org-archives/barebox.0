Delivery-date: Tue, 05 Sep 2023 16:27:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdX27-0051Hi-13
	for lore@lore.pengutronix.de; Tue, 05 Sep 2023 16:27:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdX24-0002PX-Vg
	for lore@pengutronix.de; Tue, 05 Sep 2023 16:27:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oq9FXK/K5Q/XW0nCPHAuOIkEcvd0GiYzWJa7GBB2fik=; b=f4pAxU/1HFZc4KkKqRWVBiLEfE
	WM3xqGbLaX2je+SFcjIanEiE7509jgKO6IHREkYxVz6E/9DCzWhWeOs+tqnWHf5chqjoqnYEThdZU
	bwnv0jlU3UoIOURT2bd6KC/Hkrjb+oyAstcUhOHseVe3vD8FQPvEDd+aD55Oa/aZI1e2ijWVPok8N
	JaK5weZP+6f+KH2q5YBhE92fW8AWotmnExXYeQxrXclmnlikRJ370OQpgM5ET4Fu05Wx5NRktSN78
	YqtXOghq3FnUE7Zh3i42H20Dpw+CW7mBOB/F4E6V1oSRgk1Xm2N7DVS4JhAye7/+dJf7+zpiBAcYy
	2/1lOgGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdX13-006Apz-0u;
	Tue, 05 Sep 2023 14:26:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdX10-006ApJ-3C
	for barebox@lists.infradead.org;
	Tue, 05 Sep 2023 14:26:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qdX0z-0001g8-Nc; Tue, 05 Sep 2023 16:26:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qdX0z-004DgZ-BC; Tue, 05 Sep 2023 16:26:49 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qdX0z-00CJrF-0A;
	Tue, 05 Sep 2023 16:26:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 Sep 2023 16:26:48 +0200
Message-Id: <20230905142648.2936237-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_072651_028972_4881D749 
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: i.MX8M: romapi: reserve scratch space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have 32K of RAM at the end of the initial memory, where a
prebootloader can place data for future use. i.MX8M is currently the
only user and currently uses it to save the ROM API log, which is
located in SRAM and is inaccessible by the time barebox proper runs
in EL2. This area was so far not reserved, which can lead to clobbering
it when chainloading barebox. Avoid this by requesting the region.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/romapi.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index 2fd803b0d998..aef0ff0534c9 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -10,6 +10,8 @@
 #include <mach/imx/xload.h>
 #include <asm/barebox-arm.h>
 #include <zero_page.h>
+#include <memory.h>
+#include <init.h>
 #include <pbl.h>
 
 static int imx8m_bootrom_load(struct rom_api *rom_api, void *adr, size_t size)
@@ -84,6 +86,14 @@ const u32 *imx8m_get_bootrom_log(void)
 	return NULL;
 }
 
+static int imx8m_reserve_scratch_area(void)
+{
+	return PTR_ERR_OR_ZERO(request_sdram_region("scratch area",
+				    (ulong)arm_mem_scratch_get(),
+				    sizeof(struct imx_scratch_space)));
+}
+device_initcall(imx8m_reserve_scratch_area);
+
 void imx8m_save_bootrom_log(void *dest)
 {
 	const u32 *rom_log;
-- 
2.39.2



