Delivery-date: Thu, 11 Jun 2026 14:16:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXeKV-004hLh-1T
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 14:16:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXeKT-0008TX-G1
	for lore@pengutronix.de; Thu, 11 Jun 2026 14:16:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CS5kZsL/nI6HOIqGFtef94efPjML/Vsw407ojoA7ayA=; b=dbEPSRYmrcaSXtpeXd6zB5v5IS
	jZcziqKHvAbK0rleYX/F9vQ0eoapohTL/ASpSIZnzJzXYNA+Bop6vpbJg7nrnEDAmnrg8jGj2w5Rl
	6QdvJkMA4Z3T2lmTLKZDl6MAK2xrDIU5PkpLbnF8C4rojOV/N8gCMlpmVZzFLkMJojgw4nx9MACOh
	W21hkVyu3YZAaaw1hMegN/EIW0c+k+TBrjHQD0yhtzNccAdlOOndr7bDUPPc0tV+/eE2wZaF85Rjt
	3rmoT451blj7tQhNQMVZ7bWC82mlirR4YMDdaH47jVxmk4r7fBSWm28CpT1u71SQWIMyL8ImRxHSp
	4IwhXa4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdTO-00000009IcY-1zov;
	Thu, 11 Jun 2026 11:21:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdTK-00000009IZu-3Ijg
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 11:21:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wXdTI-0006lz-67
	for barebox@lists.infradead.org; Thu, 11 Jun 2026 13:21:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wXdTI-002Cuo-0J
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 13:21:16 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jun 2026 13:21:13 +0200
Message-ID: <20260611112115.670073-4-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260611112115.670073-1-l.stach@pengutronix.de>
References: <20260611112115.670073-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_042118_825728_A55249F8 
X-CRM114-Status: UNSURE (   7.45  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] mfd: rn5t618: wait a bit after triggering restart
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The shutdown sequence performed by the PMIC after the
restart is triggered isn't instantaneous. Wait a bit
to allow the PMIC to act on our request.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mfd/rn5t618.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mfd/rn5t618.c b/drivers/mfd/rn5t618.c
index d0c8824489a1..d757802b5363 100644
--- a/drivers/mfd/rn5t618.c
+++ b/drivers/mfd/rn5t618.c
@@ -29,6 +29,8 @@ static void rn5t618_restart(struct restart_handler *rst,
 	struct rn5t618 *rn5t618 = container_of(rst, struct rn5t618, restart);
 
 	regmap_write(rn5t618->regmap, RN5T618_SLPCNT, RN5T618_SLPCNT_SWPPWROFF);
+
+	mdelay(100);
 }
 
 static int rn5t618_reset_reason_detect(struct device *dev,
-- 
2.47.3



