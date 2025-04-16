Delivery-date: Wed, 16 Apr 2025 12:31:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u503D-001QGD-2O
	for lore@lore.pengutronix.de;
	Wed, 16 Apr 2025 12:31:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u503D-0001Ip-4k
	for lore@pengutronix.de; Wed, 16 Apr 2025 12:31:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=obY1B6e//+SttaEanDweHNVBAyStCcRUaWIGCfU2GfM=; b=rNUaACVnyCBplq
	+EvLcEz9W8NicBmBIIU9NbASMwpj8PID7pzCeADB+hl3WM1dnwJKcXaZDKoN8tPhu3cmej8f6qZ/L
	PQKtOUY+ZYGo8tg/CeAP+x5OnBU9LgPRa1guMky2jY8MMGSmEfeAwowHpfA+AVuUKjeQI+lChqsFW
	TKDjJLc9BhUxwbgKJ5FuZZD1TIIvjYX323+atBD4WZ0VCFIwR1AksehAmNcf1KnU5Zkw2FC5Bc0u5
	6Y76UyAuC4OPDXRvqJD16GmoQMha2r5APAd3pVENWK3CpT1D8e42ga1YkcbFMxdm9PzpYs4Nj/tp6
	gZGEVSM+xRR8jcR4/7bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u502M-0000000981a-0OBx;
	Wed, 16 Apr 2025 10:30:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4xxY-00000008mIZ-2w96
	for barebox@lists.infradead.org;
	Wed, 16 Apr 2025 08:17:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4xxU-0002gu-D7; Wed, 16 Apr 2025 10:17:24 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4xxU-000YP8-0i;
	Wed, 16 Apr 2025 10:17:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4xxU-009HZC-0P;
	Wed, 16 Apr 2025 10:17:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 16 Apr 2025 10:16:47 +0200
Message-Id: <20250416081646.2201914-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_011728_733073_016AE201 
X-CRM114-Status: GOOD (  11.61  )
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
Cc: Lars Schmidt <lsc@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH] net: dhcp: mention that eth0 is the default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dhcp has always defaulted to eth0 when called without arguments, which
is not a good default for systems where eth0 is the management port of a
DSA switch.

Point out that eth0 is used by default when dhcp is called without
arguments and while at it make ignored positional arguments an error.

In general, users probably should use ifup -a (or -a1) instead.

Cc: Lars Schmidt <lsc@pengutronix.de>
Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/dhcp.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/commands/dhcp.c b/commands/dhcp.c
index 97e9b03e4adf..79ab546fc7a9 100644
--- a/commands/dhcp.c
+++ b/commands/dhcp.c
@@ -49,10 +49,17 @@ static int do_dhcp(int argc, char *argv[])
 		}
 	}
 
-	if (optind == argc)
+	switch (argc - optind) {
+	case 0:
 		edevname = "eth0";
-	else
+		puts("Defaulting to eth0\n");
+		break;
+	case 1:
 		edevname = argv[optind];
+		break;
+	default:
+		return COMMAND_ERROR_USAGE;
+	}
 
 	edev = eth_get_byname(edevname);
 	if (!edev) {
-- 
2.39.5



