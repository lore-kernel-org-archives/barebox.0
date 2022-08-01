Delivery-date: Mon, 01 Aug 2022 14:20:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUPG-007eN1-SS
	for lore@lore.pengutronix.de; Mon, 01 Aug 2022 14:20:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUPE-0008Va-Qg
	for lore@pengutronix.de; Mon, 01 Aug 2022 14:20:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3GgcM7P34j/GOKgpCqZoJmzsWSLxwIqHVPXFLi8SCYE=; b=HOSn3rkY8C5P8e9hhZzLzYV+i9
	/sQ6t8M7guda6PBpjues9XSsJ3qRMEfYfvWJ/0r+kweALfW+bvIDL3BDG4S3tOSZc46ODPiFQO1xm
	CsS9cPegDaZ+gw2K6ogk6ipCwnN5ggWU88H8dZlxKIqlfKxPjyI15JES8Esft6BFePFIJa+vE6wS4
	oarfGfWE7GLXeM0PbRAKDSaZf22Ve95DgCfo0RgaxVhN0Bq4m+bb6Kkx4Xf5/6/cvbJxSq4ZyXHdd
	4k78Jj1/sdLZaOiLtXsnSExUBmaDYCZ3+2z70kXppLIv4fPwTAHXtvZvovhusEwvZle4gA6JjtaRu
	BmadZahQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUNe-006469-Uw; Mon, 01 Aug 2022 12:18:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUCf-005trl-Ng
	for barebox@lists.infradead.org; Mon, 01 Aug 2022 12:07:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCb-0005zo-Kx; Mon, 01 Aug 2022 14:07:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCa-0016gK-RA; Mon, 01 Aug 2022 14:07:16 +0200
Received: from str by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCZ-00AXmj-QL; Mon, 01 Aug 2022 14:07:15 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  1 Aug 2022 14:07:05 +0200
Message-Id: <20220801120708.2511165-5-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
References: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220801_050721_890519_5AE5993E 
X-CRM114-Status: GOOD (  11.73  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 5/8] ARM: socfpga: achilles: replace use of magicvalue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of using a magic value in the board code, use the define from
arria10-system-manager.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/board.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/reflex-achilles/board.c b/arch/arm/boards/reflex-achilles/board.c
index 43e3a69be7..0fbb967ff9 100644
--- a/arch/arm/boards/reflex-achilles/board.c
+++ b/arch/arm/boards/reflex-achilles/board.c
@@ -4,6 +4,7 @@
 #include <init.h>
 #include <io.h>
 #include <bbu.h>
+#include <mach/arria10-system-manager.h>
 
 static int achilles_init(void)
 {
@@ -14,7 +15,7 @@ static int achilles_init(void)
 	if (!of_machine_is_compatible("reflex,achilles"))
 		return 0;
 
-	pbl_index = readl(0xFFD06210);
+	pbl_index = readl(ARRIA10_SYSMGR_ROM_INITSWLASTLD);
 
 	pr_debug("Current barebox instance %d\n", pbl_index);
 
-- 
2.30.2



