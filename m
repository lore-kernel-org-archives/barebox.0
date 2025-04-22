Delivery-date: Tue, 22 Apr 2025 07:37:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76Jr-003v3Y-2F
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:37:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76Jr-0005fo-4o
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:37:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oKa1yY83wOAdu1GCupQIKh/bZP/qGwaaK9I39Iclvpo=; b=4c74REqmtGVF0957NPovCr3pIQ
	5uakATEtR+qk6Y1LT4XMvZ0U7Pyq2lLWGCFTWhsYXvitUBDTbvzOUg5UtyXnxpjbyrNG/t+c0tzDs
	o/q16eTMBTn9dZgEbqm+obzhrYf2+6GxGSOFxuhdVkgZt13WaAkoP1hXLpdwLtJ/kDuJ9sQcjFztD
	aC6eOKhdcoZfddlbliO0Drry2frFHPLs4jTQ5NiehPSQbnJnspbspkkPCuA8uzDw7irIP5X2EtQ96
	CqnLQg2wFX4y+WoSR4dysIsIV8dyzaR3nzJLEWmWh9TuKmuvahUQAsjM6RjwPqBgd8jt9UJ/eOTS+
	nlHOKciA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u76JL-00000005sQH-0XbF;
	Tue, 22 Apr 2025 05:36:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u76JI-00000005sPu-2DoI
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:36:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u76JH-0005a1-2H; Tue, 22 Apr 2025 07:36:43 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u76JG-001V10-2p;
	Tue, 22 Apr 2025 07:36:42 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u76JG-00EPmn-2X;
	Tue, 22 Apr 2025 07:36:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 07:36:41 +0200
Message-Id: <20250422053641.3435585-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_223644_563753_4E017DF0 
X-CRM114-Status: GOOD (  10.68  )
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
Subject: [PATCH master] font: fbconsole: fix underflow when printing non-ASCII characters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With signed characters, non-ASCII characters (i.e. valued >= 128)
are negative and remain so when casted to int.

find_font_index will thus multiply the index with a negative number and
look for font data before the actual start of the font.

A cast to unsigned fixes this, because all fonts that trigger this if
clause's branch have 256 characters.

Fixes: 27f79c05ab42 ("video: implement framebuffer console")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/fonts/fonts.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/fonts/fonts.c b/lib/fonts/fonts.c
index b3bdaa21a2aa..6047b4cbe223 100644
--- a/lib/fonts/fonts.c
+++ b/lib/fonts/fonts.c
@@ -37,7 +37,7 @@ int find_font_index(const struct font_desc *font, int ch)
 	if (font->index == NULL) {
 		index  = DIV_ROUND_UP(font->width, 8);
 		index *= font->height;
-		index *= ch;
+		index *= (unsigned char)ch;
 	} else {
 		/*
 		* FIXME: use binary search instead!
-- 
2.39.5



