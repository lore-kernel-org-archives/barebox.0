Delivery-date: Fri, 13 May 2022 07:47:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npO9A-00BcvT-1t
	for lore@lore.pengutronix.de; Fri, 13 May 2022 07:47:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npO99-0002qR-3B
	for lore@pengutronix.de; Fri, 13 May 2022 07:47:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oAoHIbDnqsTdfLYoZpDkmpD2Z8LKcCEy1YyAab9cFMc=; b=OKazX8AhFgyFNr
	+v5sgOsbbVEauqrntjtqaKntSMgLYxjaIv6PK3aw4GOfN1qmKSaKAgeFIJ9bBobyHacUromLKba/3
	t4qZcLXqz9kQ6zbuWzR06n+WQ3WKrAJOixdEqDHF46IjDhzEYIREuo/G2GuDxUI3snDzkIEaZ1IHL
	b+7xbHvWRxhQLByMK2i5SqesjcmT7oSW3XxrBzjAthj9BeJEQtB8s6gy+mY2wCaKdoxK1gX0XD7kc
	B8ow+4rqvTupZIcVmVVXIMGIBMTFt2Mrqs5jvvjA2iUQjfRTP80t/qnzLlf5HoSRT73p0PEbi29sH
	uWbmKPf5UgS7uvGx88OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npO7Q-00EabP-MM; Fri, 13 May 2022 05:45:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npO7L-00EaZw-BB
 for barebox@lists.infradead.org; Fri, 13 May 2022 05:45:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1npO7E-0002a5-58; Fri, 13 May 2022 07:45:28 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1npO7E-0021Pr-PS; Fri, 13 May 2022 07:45:27 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1npO7C-000Byl-Nk; Fri, 13 May 2022 07:45:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 May 2022 07:45:25 +0200
Message-Id: <20220513054525.45999-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_224535_422491_CE62AA2F 
X-CRM114-Status: GOOD (  10.49  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ARM: i.MX7: esdctl: fix out-of-bounds read on memory
 size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

addrmap[] has 9 elements on i.MX8M platforms and 7 elements on i.MX7.
Checking unconditionally for addrmap[8] is thus out-of-bounds on the
i.MX7. As this code was added for the i.MX8, skip it for i.MX7.

Fixes: 42d45ef380c5 ("ARM: imx: Add imx8 support for SDRAM with two or more bank groups")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index b2f8fd0e39c6..23663406b70e 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -421,7 +421,7 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 	if (FIELD_GET(DDRC_ADDRMAP1_BANK_B2, addrmap[1]) != 0b11111)
 		banks++;
 
-	if (addrmap[8]) {
+	if (is_imx8 && addrmap[8]) {
 		if (FIELD_GET(DDRC_ADDRMAP8_BG_B0, addrmap[8]) != 0b11111)
 			banks++;
 		if (FIELD_GET(DDRC_ADDRMAP8_BG_B1, addrmap[8]) != 0b111111)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

