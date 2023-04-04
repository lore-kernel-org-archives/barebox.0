Delivery-date: Tue, 04 Apr 2023 12:21:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjdmz-009bjb-6S
	for lore@lore.pengutronix.de; Tue, 04 Apr 2023 12:21:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjdmz-0002UR-1J
	for lore@pengutronix.de; Tue, 04 Apr 2023 12:21:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kgLUDLKzZFwv5x/zKFkm+IIdbX3gy5IyPmVEwe9e1Jc=; b=0ho0walWxXcBKzGlnma8ido17V
	xhI15OcVIm/4NW90ImxoYDH90qDYS2aqxZrwuI64d9xmKyIzIyIAB3ffkbTG8Dpt8hXK7yHfFCHAD
	3VTFlaEDToPTQfWq9kTwVppdyqHEAAK7EbpQv3tlxkIYfFW/uEJKUY+Ll79yc4XyxyKYZg7rRpyU8
	0r6qZtyrpg0QbfZTFHV3cP16nSLn++Kz4+cm35Q6xCOPv5cfNW77inKL2zBC0BPlUPI1r7FQAN9Pn
	MBlwKDiip1JwdMEkqBOShQiGgN27/rDk3U8ZPPbXF3bJHdXUqwLuLcbowNFuVbEWFFpQG+QXcowuk
	AmPkscWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjdl4-000r47-07;
	Tue, 04 Apr 2023 10:19:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjdl1-000r3K-1X
	for barebox@lists.infradead.org;
	Tue, 04 Apr 2023 10:19:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pjdl0-0001WN-5S; Tue, 04 Apr 2023 12:19:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pjdkz-008tSC-7Z; Tue, 04 Apr 2023 12:19:17 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pjdky-009PnA-KG; Tue, 04 Apr 2023 12:19:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Apr 2023 12:19:14 +0200
Message-Id: <20230404101914.2244083-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_031919_514025_43D33E2F 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clock: implement CLOCKSOURCE_MASK in terms of GENMASK_ULL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Clang doesn't like our implementation of CLOCKSOURCE_MASK:

  common/clock.c:33:10: warning: shift count >= width of type [-Wshift-count-overflow]
	.mask = CLOCKSOURCE_MASK(64),
                ^~~~~~~~~~~~~~~~~~~~
  include/clock.h:8:63: note: expanded from macro 'CLOCKSOURCE_MASK'
	 #define CLOCKSOURCE_MASK(bits) (uint64_t)((bits) < 64 ? ((1ULL<<(bits))-1) : -1)

So the bits < 64 check we have is apparently not enough to suppress the
warning when built with clang.

Let's do what the kernel does and use GENMASK_ULL instead to get rid of
the last remaining warning when building ARCH=sandbox targettools_defconfig
with clang version 16.0.1.

Not functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/clock.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/clock.h b/include/clock.h
index 8e07c35d374e..03a38911a7a7 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -4,8 +4,9 @@
 
 #include <types.h>
 #include <linux/time.h>
+#include <linux/bitops.h>
 
-#define CLOCKSOURCE_MASK(bits) (uint64_t)((bits) < 64 ? ((1ULL<<(bits))-1) : -1)
+#define CLOCKSOURCE_MASK(bits) GENMASK_ULL((bits) - 1, 0)
 
 struct clocksource {
 	uint32_t	shift;
-- 
2.39.2



