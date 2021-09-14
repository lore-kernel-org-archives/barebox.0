Delivery-date: Tue, 14 Sep 2021 08:50:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ2Gx-0008J5-HT
	for lore@lore.pengutronix.de; Tue, 14 Sep 2021 08:50:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ2Gw-0001gP-Lg
	for lore@pengutronix.de; Tue, 14 Sep 2021 08:50:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DLpLOl12TSF41+UwiBOGybmevzaBDn5z1SAj3HDtDnw=; b=43WHbAoBiO5Dkz
	wXzO1+8UYE2h0dAW+1nN0nU4aWFkRNS4w3l2pRcZF1m7TeSHWqWY5zLSQgHoWJaaYf0g6/aboDbxN
	hoUTOSNu9pBZTj8PBYaFBSdvC5wuuokWJSjfy49OhP5x3icPLOllJ5Iv/+Ti0qMy+b4B5Rtq9XpNH
	gGpulV5msF6LU5ccFRPOOTu2Saqc3gi7cb/PKwlTjzJdwxa2gcuhlZjzUwIqLmVt9WHor0YJfc39a
	us6HV4+UgcbpGmFDFPhr3kuObNPyt+8iFaxRzf/mtfQJVehQZmWsuRp09gd0ErmzZSx2GB+IoKc6l
	uRT8htzwPUxPV5mcvFWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ2Fe-004K57-Ku; Tue, 14 Sep 2021 06:49:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ2FV-004K4T-2g
 for barebox@lists.infradead.org; Tue, 14 Sep 2021 06:48:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mQ2FT-0001OD-EF; Tue, 14 Sep 2021 08:48:55 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mQ2FS-0005Ut-TE; Tue, 14 Sep 2021 08:48:54 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1mQ2FS-00Bmhe-M6; Tue, 14 Sep 2021 08:48:54 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 14 Sep 2021 08:48:53 +0200
Message-Id: <20210914064853.2808775-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_234857_157898_BE12D9F1 
X-CRM114-Status: UNSURE (   9.13  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] net: dhcp: set default DHCP vendor ID to "barebox"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To make debugging of DHCP related issues easier, set DHCP vendor ID to
"barebox" by default.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 net/dhcp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/dhcp.c b/net/dhcp.c
index 427985eca..d28c37c69 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -640,6 +640,8 @@ static int dhcp_global_init(void)
 {
 	globalvar_add_simple_string("dhcp.bootfile", &global_dhcp_bootfile);
 	globalvar_add_simple_string("dhcp.rootpath", &global_dhcp_rootpath);
+
+	global_dhcp_vendor_id = strdup("barebox");
 	globalvar_add_simple_string("dhcp.vendor_id", &global_dhcp_vendor_id);
 	globalvar_add_simple_string("dhcp.client_uuid", &global_dhcp_client_uuid);
 	globalvar_add_simple_string("dhcp.client_id", &global_dhcp_client_id);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

