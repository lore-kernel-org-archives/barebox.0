Delivery-date: Mon, 13 Nov 2023 12:19:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2UyQ-009uOY-1m
	for lore@lore.pengutronix.de;
	Mon, 13 Nov 2023 12:19:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2UyQ-0003z1-K7
	for lore@pengutronix.de; Mon, 13 Nov 2023 12:19:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+fl/+U4pEdKZmaIFsGeMLETonkeYlWL69aQJS/uNSk4=; b=gIGfbr1t52NkIq6aP0o0Elo1yC
	ODNQ5iGj5ZJDeT3dVxRnsCZ4QBrOjm3guecmo+ctIpNTqq4qcGYGMU3ZjXmAaejZ8BH60CUAoztBa
	6JH437We8geQsakUufay5NpBvqME0HXpJ1qMUjoDADfuw/6qzT6LgpVa1ElGnh7lj6YpuNCyzuA32
	B4S7H5rJBGT2pBArEG8rYR/nRMIWV0wFzbT3+SP9mB5kX/iDLOseaCz9BTXPxKLAmOhVX/Bb5ntVq
	cubZ79UYSoUlwFeO4HWs2/h1ssnwcvndMSTeqbM+o0kbsmwcTEgEt/s1DkFShqsvdfLep2DC6ULx3
	Z6LP1X8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2Ux0-00DiOg-28;
	Mon, 13 Nov 2023 11:17:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2Uwv-00DiNp-18
	for barebox@lists.infradead.org;
	Mon, 13 Nov 2023 11:17:52 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1r2Uwp-0003n2-Bc
	for barebox@lists.infradead.org; Mon, 13 Nov 2023 12:17:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 13 Nov 2023 12:17:40 +0100
Message-Id: <20231113111740.2119800-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_031749_412217_C7867260 
X-CRM114-Status: GOOD (  10.91  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ARM: i.MX8M: bootrom: fix load image size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Without the proper aligned image size we may encounter host load errors
like:

| found i.MX8MP USB device [1fc9:0146]
| No dcd table in this ivt
| dl_command err=-1, last_trans=-1
| 4 in err=-4, last_trans=0  00 00 00 00

The reason for this is that we asked only for the required bytes while
the host tries to send the complete image which may contain alignment
bytes at the end.

Fix this by request always 4K aligned sizes.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/romapi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index aef0ff0534c9..972a1bf427de 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -4,6 +4,7 @@
 
 #include <common.h>
 #include <asm/sections.h>
+#include <linux/sizes.h>
 #include <mach/imx/romapi.h>
 #include <mach/imx/atf.h>
 #include <mach/imx/imx8m-regs.h>
@@ -16,6 +17,12 @@
 
 static int imx8m_bootrom_load(struct rom_api *rom_api, void *adr, size_t size)
 {
+	/*
+	 * The imx-image tool align the final image size to 4K so we need to
+	 * take this into account.
+	 */
+	size = ALIGN(size, SZ_4K);
+
 	while (size) {
 		size_t chunksize = min(size, (size_t)1024);
 		int ret;
-- 
2.39.2



