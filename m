Delivery-date: Thu, 22 Aug 2024 13:54:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6Oy-00CEiB-1e
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 13:54:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6Ox-0004dR-TU
	for lore@pengutronix.de; Thu, 22 Aug 2024 13:54:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=e1JGXlaWOuCKXlLo9ofQ8RvBIueR4XWaR75S9dK0r3E=; b=KA19Vkenf3FpZs1THmUDrenCma
	wXXOiOZG9qMAaRK0fLvNZBjY/mGGFo18cXhZT7AlCoNcAeslegyNO0G82E1qhMZX+jJOaTCzmtBhS
	GtJaK9PfqQMesqmHFM7Oi+jg1xXhMVdOoktx1X/TCKwFf//cAGkXymOYNNCkJnqvjpI2isz7Dfsyn
	5KSN6RtAbk9hI8Xpuh65Fp7FtWMcMb9zrsNC8tOV2kxPjSgS9K2BP0kI2M7w/RPnUlqNRvK07aJ8q
	DxPwmmzkw0w27cvVsklERGTIsO+nyYaijyBC94OE5+kQrEeSm1bu9ccoWBxI6SsmJB+aIWZlRPkrQ
	JN4d38Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6OY-0000000CemE-08E7;
	Thu, 22 Aug 2024 11:54:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6OV-0000000Cejv-1OvK
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 11:54:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6OU-0004Ub-5N; Thu, 22 Aug 2024 13:54:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6OT-002ExH-Od; Thu, 22 Aug 2024 13:54:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6OT-004wiC-2A;
	Thu, 22 Aug 2024 13:54:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 22 Aug 2024 13:54:20 +0200
Message-Id: <20240822115420.1178987-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_045423_394586_DFB534C2 
X-CRM114-Status: UNSURE (   9.64  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: socfpga: drop unused Arria 10 barebox-arm-head.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

The file is unreferenced anywhere and it doesn't differ from the default
__barebox_arm_head anyway, except by two additional words with value
0x55555555, which shouldn't matter.

It thus seems that the file wasn't needed when it was first added and
it's surely not needed now as it has been unreferenced for more than a
year.

Fixes: d5c8bc3ff1a7 ("ARM: socfpga: add arria10 support")
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/mach/socfpga/barebox-arm-head.h | 37 -------------------------
 1 file changed, 37 deletions(-)
 delete mode 100644 include/mach/socfpga/barebox-arm-head.h

diff --git a/include/mach/socfpga/barebox-arm-head.h b/include/mach/socfpga/barebox-arm-head.h
deleted file mode 100644
index eff05b0e41fd..000000000000
--- a/include/mach/socfpga/barebox-arm-head.h
+++ /dev/null
@@ -1,37 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-static inline void __barebox_arm_head(void)
-{
-	__asm__ __volatile__ (
-#ifdef CONFIG_THUMB2_BAREBOX
-		".arm\n"
-		"adr r9, 1f + 1\n"
-		"bx r9\n"
-		".thumb\n"
-		"1:\n"
-		"bl 2f\n"
-		".rept 10\n"
-		"1: b 1b\n"
-		".endr\n"
-#else
-		"b 2f\n"
-		"1: b 1b\n"
-		"1: b 1b\n"
-		"1: b 1b\n"
-		"1: b 1b\n"
-		"1: b 1b\n"
-		"1: b 1b\n"
-		"1: b 1b\n"
-#endif
-		".asciz \"barebox\"\n"
-		".word _text\n"				/* text base. If copied there,
-							 * barebox can skip relocation
-							 */
-		".word _barebox_image_size\n"		/* image size to copy */
-
-		".rept 10\n"
-		".word 0x55555555\n"
-		".endr\n"
-		"2:\n"
-	);
-}
-- 
2.39.2



