Delivery-date: Wed, 11 Sep 2024 10:23:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIdg-003QFT-0w
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:23:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIdf-0000wG-8F
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:23:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jKYJZYNdQBJMM3AJY7tq0z2YFJZjmbZe3GQDrusPcb0=; b=i8eYZ6o1QmBrG3PJ93cp4H9Mks
	JY+WfFFtywyvAfY9NJsMWzYsX/pXgkB+H9NVjsJsOvUlCYzGlwHGC64uuT8nCi96Rlv6LNiasYOLk
	sz5YbVDusworFGZIwXDA60bG20f0g0DaBygiq4e4HuEdvW3wsDdbHNIrSCBOJKYYZ72NO03PV1ju1
	7QzIi+zudbx5/dLAQ1q6A4CBLIezgvJo+jguzTo91cTPxjbYiEb1mhDos8rWT2S1klAJFZGMt5ejq
	5mk1g6me9vHoTKmKf78BDQkouycYI4Vb9P0VlNTcHIFd3ipJxVcjsg7tLrvt7/oiSLv7V0woL97gQ
	A5IuWr/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIcw-00000008ccG-0YcA;
	Wed, 11 Sep 2024 08:23:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIXN-00000008b8G-2B1f
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:17:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXL-0006YY-2L; Wed, 11 Sep 2024 10:17:15 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXK-0075kE-Ll; Wed, 11 Sep 2024 10:17:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXK-006ODY-0P;
	Wed, 11 Sep 2024 10:17:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Sep 2024 10:17:11 +0200
Message-Id: <20240911081710.1522975-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_011717_593831_869AE7D8 
X-CRM114-Status: UNSURE (   9.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] font: fbconsole: use DIV_ROUND_UP for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adding X - 1 and then dividing by X is effectively rounding up, so let's
use the macro to make this clearer.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/fonts/fonts.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/lib/fonts/fonts.c b/lib/fonts/fonts.c
index e08b75fbccc0..b3bdaa21a2aa 100644
--- a/lib/fonts/fonts.c
+++ b/lib/fonts/fonts.c
@@ -35,8 +35,7 @@ int find_font_index(const struct font_desc *font, int ch)
 {
 	int index;
 	if (font->index == NULL) {
-		index  = font->width + 7;
-		index /= 8;
+		index  = DIV_ROUND_UP(font->width, 8);
 		index *= font->height;
 		index *= ch;
 	} else {
-- 
2.39.2



