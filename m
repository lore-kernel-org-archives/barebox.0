Delivery-date: Wed, 13 Jul 2022 12:10:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZKX-005vpu-Pz
	for lore@lore.pengutronix.de; Wed, 13 Jul 2022 12:10:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZKV-0002fW-H2
	for lore@pengutronix.de; Wed, 13 Jul 2022 12:10:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pnnxWHOEOTwisUUAV7ZUR0e7j+EDgGXuUpLwcokHb2w=; b=Xkg/gS6rWFsc1ig6bQ4+1NDMFE
	KwSUgnBWsPhtKLlqcjw4zkyxFUP2lJLgnhfzbpIXNR8tzseXU65G3lLDXL+q2iQrOxuz26LeIZPsM
	XZknSUdkyqyItbWOq0lrZiWtozg+BVPo8w9y5/lKLhcMtAuAT1v7fehqIjy2LeIEQ+46R1eZkKVaH
	c87HxnIIyoMzfdYR2jeCKI1n/UcdSTGMOZsMaKb5hU3255rIjl6UzgnCag86QpaLzudNk5mgMepUY
	pfenuHBYWGMTsa6/7l1fm6FH+vL3yke0yyMJT60kKT1ppMW4PwiH7J0zXINTx2zl7PGNdHtNc0vs0
	8WHFCOEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZJL-002aEQ-B6; Wed, 13 Jul 2022 10:09:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZJ9-002a7o-BW
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 10:09:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZJ8-0002GZ-5p; Wed, 13 Jul 2022 12:09:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZJ7-000gVz-DX; Wed, 13 Jul 2022 12:09:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZJ6-008ChY-A9; Wed, 13 Jul 2022 12:09:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Jul 2022 12:09:21 +0200
Message-Id: <20220713100922.1880282-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220713100922.1880282-1-a.fatoum@pengutronix.de>
References: <20220713100922.1880282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_030927_407261_DA7ED118 
X-CRM114-Status: GOOD (  10.92  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/5] ARM: cpu: uncompress: increase early malloc pool to 256K
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

struct ZSTD_DCtx_s, the zstd workspace, has a size of 161320 bytes, which
is more than our early malloc pool of 128K can allocate. Double the pool
size, so we can uncompress a zstd barebox proper in PBL.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 8240cce9bf5b..8795c89d515b 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -125,7 +125,7 @@ static inline unsigned long arm_mem_ttb(unsigned long membase,
 static inline unsigned long arm_mem_early_malloc(unsigned long membase,
 						 unsigned long endmem)
 {
-	return arm_mem_ttb(membase, endmem) - SZ_128K;
+	return arm_mem_ttb(membase, endmem) - SZ_256K;
 }
 
 static inline unsigned long arm_mem_early_malloc_end(unsigned long membase,
-- 
2.30.2



