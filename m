Delivery-date: Mon, 01 Jul 2024 20:13:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOLWj-000aTG-0P
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 20:13:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOLWi-0000Ce-Fb
	for lore@pengutronix.de; Mon, 01 Jul 2024 20:13:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ljlc0PntI2Mo+ae6Y2poULx76nKvV26boi0AqMOAouQ=; b=0ppvNRKTbauwv0Ss9lwSVPpMSw
	i2PISIk8LPmuAvuKqUme7EZdeu5rIEhHA9iFF0EGZhFqhCSgqi7cT41e5fpqBEIM4Moxq6Hj86BEW
	XbP3V8heHGLfFjA3txSt33GqBALSkySgsrCVeToTdaoiaC3DnYJTvMVpuQv/2SgLEg1rytzJ7cvzM
	q8TGkBWyaOGKSKO54zjcPpB38SZF5WXOX0T3WG+7Vp7qG+o0SWIqCNHywlIKCU80Ven8S4Deq8pt6
	HP9k+pg2XKYgG9R+8ospE/rnzlxOyn+crJmdUfuNLrOYnF7bflVym+BlZ4scWd9zrBv9jFDvFaJmC
	+MFlZr6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOLW9-00000004PXj-3wEY;
	Mon, 01 Jul 2024 18:12:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOLW6-00000004PWV-1DWl
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 18:12:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOLW5-00007y-3M; Mon, 01 Jul 2024 20:12:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOLW4-006QZ6-Mx; Mon, 01 Jul 2024 20:12:40 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOLW4-004zVv-20;
	Mon, 01 Jul 2024 20:12:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 20:12:39 +0200
Message-Id: <20240701181239.1189755-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_111242_351299_A300A9D9 
X-CRM114-Status: GOOD (  10.33  )
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
Subject: [PATCH] fixup! regulator: Add Fairchild FAN53555 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

GCC reports:

drivers/regulator/fan53555.c:362:17: warning: ‘mode_reg’ may be used
uninitialized [-Wmaybe-uninitialized]
362 |                 regmap_update_bits(di->rdev.regmap, mode_reg, mode_mask, 0);

Fix this by returning -EINVAL in that case, which is the error code used
earlier if the vendor is an unexpected value.

Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/fan53555.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
index d406d0b54a3e..f73511b36b20 100644
--- a/drivers/regulator/fan53555.c
+++ b/drivers/regulator/fan53555.c
@@ -315,6 +315,8 @@ static int fan53555_device_setup(struct fan53555_device_info *di)
 		case FAN53555_VSEL_ID_1:
 			mode_reg = FAN53555_VSEL0;
 			break;
+		default:
+			return -EINVAL;
 		}
 		break;
 	case FAN53526_VENDOR_TCS:
-- 
2.39.2



