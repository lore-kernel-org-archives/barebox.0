Delivery-date: Mon, 11 Sep 2023 14:57:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgTs-00BVhr-Cu
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:57:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgTq-0007SX-9V
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:57:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uBjtUvogjk0U4WDY4hyP7NjUKqIKYY8UWrdoT3eYC60=; b=b8I3iFZhbXeScupsGzes7CSEuc
	+/ZTrPp+O3nyCpg7xu2NoGZU1wptUrVP/jlmpEXTGDDvcPIvZAUSpzasRdYegkI6HLrgU2gDFX3kT
	KbUZZrt0oOxkGwOIGAAlBP/36PGb10HPtY700ptkbaFHKn1WWTiMjE72c9ikpJQGaTgfdV4eZOxsR
	M86bFVd5Ihj6Bl6Szxgh7UsZSjHMmRb0QLrYyfGvV2FWKWy5uVnQ2qh5gES8BnLsazKY+pwvC02cb
	nXBTXBwPFKSErzlXJhIyy4/Rzn+jNOioUFY3u9YXBIBdLVxAwTaLUhhfLb0yBcK5sGCrzWvOCgQiL
	9Yl5gZaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgSq-000XCR-2F;
	Mon, 11 Sep 2023 12:56:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgSl-000X9a-2i
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:56:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSk-0007AB-No; Mon, 11 Sep 2023 14:56:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSk-005YTk-Bd; Mon, 11 Sep 2023 14:56:22 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSj-00Bg1S-1z;
	Mon, 11 Sep 2023 14:56:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 14:56:18 +0200
Message-Id: <20230911125619.2782229-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911125619.2782229-1-a.fatoum@pengutronix.de>
References: <20230911125619.2782229-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_055623_887050_B8DCE5F5 
X-CRM114-Status: GOOD (  10.30  )
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
Subject: [PATCH 3/4] KASan: only print to stderr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Part of KASan output, like the stack trace, is already printed to
stderr, while some others are printed to stdout. Let's print everything
to stderr as not to complicate debugging when stdout and stderr go to
different consoles.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/kasan/report.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/kasan/report.c b/lib/kasan/report.c
index a67ba8c108f5..3d8f0c3b5162 100644
--- a/lib/kasan/report.c
+++ b/lib/kasan/report.c
@@ -138,7 +138,7 @@ static void print_shadow_for_address(const void *addr)
 			shadow_buf, SHADOW_BYTES_PER_ROW, 0);
 
 		if (row_is_guilty(shadow_row, shadow))
-			printf("%*c\n",
+			eprintf("%*c\n",
 				shadow_pointer_offset(shadow_row, shadow),
 				'^');
 
-- 
2.39.2



