Delivery-date: Wed, 15 May 2024 13:27:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7CnG-00Fjo2-3C
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 13:27:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7CnG-00069C-Ay
	for lore@pengutronix.de; Wed, 15 May 2024 13:27:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/7IMRDa/sGX7tHJwBMc887FGFTbxlRcXaMbxgJ5G+e8=; b=o6wMHOiPU8xWc9qIrnx36Q+ugl
	HrKWIxwsX4Np6P/sksCS46gZOp39sXtNuD5vcwRX6zdE719Ok+gMwcjp/cSUjXzj0FR+KHgUBpI9q
	6cdGdBxY0nepRadi+PtVA7OjTaFhyLQ9pEtywwQTze7zvVPffVEEk8P+gXZHXmlEyXp5XOUTIVOSM
	/W3ioqisBJbcc1fcu4kRgnxDllE0VO7EMoEfqqUczy0Wk9UXGLVOqFeNUawdnK/pmW759iHY7y4zA
	qCJD+I+Mu82XCDGZSqOocdEXolUukMTrUVryk+92MNI5Cet/qnMLlVaBdFymFqZZS8rOpwkXd8Pyn
	zrTiubxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Cmr-00000001Nyp-1LKB;
	Wed, 15 May 2024 11:27:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Cmo-00000001NxX-3e9v
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 11:27:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7Cmn-00061J-BF; Wed, 15 May 2024 13:27:05 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7Cmm-001WXn-Ul; Wed, 15 May 2024 13:27:04 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7Cmm-001DhI-2m;
	Wed, 15 May 2024 13:27:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 13:27:03 +0200
Message-Id: <20240515112703.290968-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_042706_973828_3F873D79 
X-CRM114-Status: GOOD (  10.50  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] include/linux/kernel.h: fix mult_frac() multiple argument evaluation bug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a port of Linux commit 048a9883267f9b8f8e05dca9e9e8e6f991eea61e:

| Author:     Alexey Dobriyan <adobriyan@gmail.com>
| AuthorDate: Sat May 20 21:25:19 2023 +0300
|
| include/linux/math.h: fix mult_frac() multiple argument evaluation bug
|
| mult_frac() evaluates _all_ arguments multiple times in the body.
|
| Clarify comment while I'm at it.
|
| Link: https://lkml.kernel.org/r/f9f9fdbb-ec8e-4f5e-a998-2a58627a1a43@p183
| Signed-off-by: Alexey Dobriyan <adobriyan@gmail.com>
| Signed-off-by: Andrew Morton <akpm@linux-foundation.org>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/kernel.h | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index c411ac0860dd..cd7dac73f93a 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -107,17 +107,17 @@ extern long long simple_strtoll(const char *,char **,unsigned int);
 }							\
 )
 
-/*
- * Multiplies an integer by a fraction, while avoiding unnecessary
- * overflow or loss of precision.
- */
-#define mult_frac(x, numer, denom)(			\
-{							\
-	typeof(x) quot = (x) / (denom);			\
-	typeof(x) rem  = (x) % (denom);			\
-	(quot * (numer)) + ((rem * (numer)) / (denom));	\
-}							\
-)
+/* Calculate "x * n / d" without unnecessary overflow or loss of precision. */
+#define mult_frac(x, n, d)	\
+({				\
+	typeof(x) x_ = (x);	\
+	typeof(n) n_ = (n);	\
+	typeof(d) d_ = (d);	\
+				\
+	typeof(x_) q = x_ / d_;	\
+	typeof(x_) r = x_ % d_;	\
+	q * n_ + r * n_ / d_;	\
+})
 
 extern const char hex_asc[];
 #define hex_asc_lo(x)	hex_asc[((x) & 0x0f)]
-- 
2.39.2



