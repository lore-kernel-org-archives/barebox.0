Delivery-date: Mon, 09 Jan 2023 14:10:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pErur-006gFv-9I
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 14:10:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEruo-0001Vm-Vk
	for lore@pengutronix.de; Mon, 09 Jan 2023 14:10:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oBnPm/YX+ZVxBpUg7VGwguulclD0xzNmRh/RpUp6GEY=; b=knJ2UHk7zlgfm13vAbeIZvWyL/
	1NVzevNH3kvvuKHR7fnlRDF/ZOkCGDnb94AyuC3D954fuibwuohrVxbsag03HEyQs8TsWYNGJO+Zq
	yC05Jtd3SSqlz+mcp+BbqibXFrggEGXmiCkjU1lu1wJgneNlb/uj+rqaaI7+RrmUPegdS7H5oxxO3
	crYDDDFd5kLiW09VDu8KIkW07jW1EKUKPHv/NDnZXVGjKWih5Dlvnz8cZZRvnPmHpX+vzHKwKyFRe
	A1ZjMP9sJ50C/Z8CdTNo3rb6k/6xQ1bsgoe9pQgiO9dAK4851IQZCOmG1NOwbdRbGm7icY6Wm9IG5
	1j4saMEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErtM-001RS2-KO; Mon, 09 Jan 2023 13:08:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErt9-001RLZ-Fc
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 13:08:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt5-0000qf-9m; Mon, 09 Jan 2023 14:08:27 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt4-004qvj-FA; Mon, 09 Jan 2023 14:08:26 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt3-006zGc-F3; Mon, 09 Jan 2023 14:08:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 14:08:15 +0100
Message-Id: <20230109130822.1657470-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
References: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_050831_716768_BEB146E3 
X-CRM114-Status: UNSURE (   9.28  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/11] net: macb: match atmel,sama5d4-gem compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

After adjustments for SAMA5D2, driver readily works on SAMA5D4 if we
have the appropriate of_device_id entry. Add it.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/macb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 29d62b4f105d..3d7627fed828 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -935,6 +935,7 @@ static const struct of_device_id macb_dt_ids[] = {
 	{ .compatible = "cdns,at91sam9260-macb",},
 	{ .compatible = "atmel,sama5d2-gem",},
 	{ .compatible = "atmel,sama5d3-gem",},
+	{ .compatible = "atmel,sama5d4-gem",},
 	{ .compatible = "cdns,zynq-gem",},
 	{ .compatible = "cdns,zynqmp-gem",},
 	{ .compatible = "sifive,fu540-c000-gem", .data = &fu540_c000_config },
-- 
2.30.2



