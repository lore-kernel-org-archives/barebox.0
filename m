Delivery-date: Thu, 09 Apr 2026 14:11:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wAoE5-00AHyO-1h
	for lore@lore.pengutronix.de;
	Thu, 09 Apr 2026 14:11:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wAoE4-0006ja-Ub
	for lore@pengutronix.de; Thu, 09 Apr 2026 14:11:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7dVObN3M8R/MdbDHez4pCQSmjs9nM8CilufNkug1g4w=; b=wPsFWQQc8uXBX/o904dpdsRiAN
	toUfmOH0BxG71Ny1R0pB1lXSOwMg9wFzoIWMsEiLd9xJmn1hOv+ivpXKiurYQJyCoJgyOg5iODsFy
	Wbit1EokyoDnU9DQq/7V3CMyTBhjOtOxaV7hp0zTc7CzSaKxFzvX9Wpmnk8+sfoMAtQ9x4w8C1mQD
	N8PvxpWBMe/tI3emAIeSxKC1Gj4Kj5ZFoxOfUHEhtbhtXjt4JGYNaULrTKXFRY80qffagX5WSNcJq
	jIPZg0RBNXPK/jasp1BnM9ctp92ZDGO1NjrDp4ZiR0Lq22DGNSjrnB6AfEqc3pZqL+rY0Z0Y1D7Mz
	xMG+DPbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAoDN-0000000ALiA-0xDB;
	Thu, 09 Apr 2026 12:10:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAoDK-0000000ALhr-2DAo
	for barebox@lists.infradead.org;
	Thu, 09 Apr 2026 12:10:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1wAoDH-0006cV-Hv; Thu, 09 Apr 2026 14:10:23 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1wAoDH-004WHc-19;
	Thu, 09 Apr 2026 14:10:23 +0200
Received: from [::1] (helo=dude04.red.stw.pengutronix.de)
	by dude04 with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1wAoDH-000000018Qf-3JWt;
	Thu, 09 Apr 2026 14:10:23 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 09 Apr 2026 14:10:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-simple-fixup-v1-1-5c4f16de17bd@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIACmX12kC/x2MQQqAIBAAvyJ7TlDLwr4SHSLXWigTpQjEvycdh
 2EmQ8JImGBkGSI+lOjyFWTDYN0XvyEnWxmUUL3ohOGJznAgd/TegVstzSC1a1E7qEmIWMW/m+Z
 SPnMusBleAAAA
X-Change-ID: 20260409-simple-fixup-d519715f3e5f
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1125;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=aqWH2h70ZYLZNxnM27WqzjnAlv1o+86wiTFlIjTzd40=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBp15crUcP0I7b6pXU+/7z6ZqpsM6X0wyVNOTau6
 is68KKhd3qJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCadeXKwAKCRC/aVhE+XH0
 qwtcEACvL9godsMECgKP61BXxaTQ2/3SNip/xkPp+sBQ8SFl4d/6o/GJo6OGVWJ6p9fYn/wA6lV
 eTN0yqGX6yNZZxhMRB+5VX0H6gUFi6xoo9v/bo4MdITA5Fg6NwnM5Hq47hZ9pRQyPbNj5oWCvc/
 bQlFsV+7wtIvW1CVpMSrbeyiiJF1GFOG8od97cDrPNzYcATEV79AU7f97dKUvyLfua5KHUsBMAx
 UQ6WEVr/beyLGKfwALsaMmwPbOVOrXtQ4lnmb5nGQ6DmCDKIx9iL5l45RRV53Hsl8gHnccNA4BR
 kD3AJqWSFgYj8KGC5MCCzXVF6p6hWAGr85GdcpdL0aG/qxFLsz4jP5EyMdNU8Oc6LfWWEeVq6pX
 jLbhs63OQO8c75ZqWV1HJeBNiCLubiueVahd/UNHjbLBryJX6FETSpp2hoB1H4gdVd9OtFzksUt
 iaA6rzp+JuIQ2okNYjYT0UQi90dwpo1FRCJBu7b3b0lC8Iza95vRrmVWufPMCUpLCQKHvvU+Yl+
 iw+w23HkbnFLz9a63v+WKBNt577fFsancG/4Snm/03ZMb5I7pDQqy5sq8NAccAjJKppdBSefq5h
 1D6sfdl8mh7I4wx9bAfGpn5q21pf5XStAK6ugTWtHxaakUPLyZtyzzr9kBclwzJlRfuUT/pzvp+
 YOteRRjkk6DOi6w==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_051026_592329_9F2FE81F 
X-CRM114-Status: UNSURE (   9.41  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] video: simplefb-fixup: IORESOURCE_BUSY is deprecated use
 reserve_resource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since the IORESOURCE_BUSY was retired, the simple-fixup driver was
missed to be changed. We fix this and also mark the driver memory as
reserved.

Fixes: 191b639dd53d ('resource: retire IORESOURCE_BUSY in favor of resource::type')
Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/video/simplefb-fixup.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/simplefb-fixup.c b/drivers/video/simplefb-fixup.c
index e20f2922445bddcb13a049b2581c4c632289d6ee..94cf5a7884504a2dad80768ebedb413b171be868 100644
--- a/drivers/video/simplefb-fixup.c
+++ b/drivers/video/simplefb-fixup.c
@@ -124,8 +124,8 @@ static int simplefb_create_node(struct device_node *root,
 		return ret;
 
 	res.name = "simple-framebuffer";
-	res.flags |= IORESOURCE_BUSY;
 	resource_set_range(&res, screen_base, fbi->screen_size);
+	reserve_resource(&res);
 
 	of_fixup_reserved_memory(root, &res);
 

---
base-commit: 86269eff785a915cfb96f09d9c7ec81a89d33012
change-id: 20260409-simple-fixup-d519715f3e5f

Best regards,
-- 
Michael Grzeschik <m.grzeschik@pengutronix.de>



