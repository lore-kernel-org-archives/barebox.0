Delivery-date: Sun, 16 Jan 2022 22:34:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9DAs-0040iM-N0
	for lore@lore.pengutronix.de; Sun, 16 Jan 2022 22:34:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9DAq-0000c2-OV
	for lore@pengutronix.de; Sun, 16 Jan 2022 22:34:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EV152k3s4o76NwG6iktBjlIYUrvS9eRXtbWzY6LVmI=; b=KnSdbSB6jO8WQg
	LQNZsCr7MHeQPLx263I3Uw0c+LWqZ729m25dcwWpnCLsGuysgSZ+r9QFWSgDGDMtEuDwtwE4saULN
	mU1FknHPDBi3XuUNwfOs77xxB5UEfn/PIzv0Gj3QuyjYvlfo6XqmPDWRiTRNHo7F6MKueMpx/K+Iv
	ETQ5H8OaD1QJlt7RG2utwlx6Kegv7in466TMToSAK7uvSuW35jKK5XjVuturyv8+1B2RHPsbkunbc
	gCVewWkRbBForAMwN3iqtaYuxIQREmi4HNdl+8Ma1kCM9jmVw17wuy+kpH91XesrdUsrv0wzOaYU3
	9D64dMqaUGRkYfaIdDSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9D9I-00D1vb-Fb; Sun, 16 Jan 2022 21:33:16 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9D9D-00D1tb-9A
 for barebox@lists.infradead.org; Sun, 16 Jan 2022 21:33:12 +0000
Received: by lynxeye.de (Postfix, from userid 501)
 id 6FAC9E74225; Sun, 16 Jan 2022 22:32:36 +0100 (CET)
Received: from astat.fritz.box (a89-183-97-132.net-htp.de [89.183.97.132])
 by lynxeye.de (Postfix) with ESMTPA id 870EEE74217
 for <barebox@lists.infradead.org>; Sun, 16 Jan 2022 22:32:34 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Sun, 16 Jan 2022 22:32:21 +0100
Message-Id: <20220116213221.3466936-3-dev@lynxeye.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220116213221.3466936-1-dev@lynxeye.de>
References: <20220116213221.3466936-1-dev@lynxeye.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220116_133311_517367_6AE38113 
X-CRM114-Status: GOOD (  11.50  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: mnt-reform: switch to deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that all drivers used on this platform properly handle deep-probe,
we can switch it on.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/mnt-reform/board.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/mnt-reform/board.c b/arch/arm/boards/mnt-reform/board.c
index feb874c0a0ef..010690ecbd6c 100644
--- a/arch/arm/boards/mnt-reform/board.c
+++ b/arch/arm/boards/mnt-reform/board.c
@@ -5,6 +5,7 @@
 
 #include <bootsource.h>
 #include <common.h>
+#include <deep-probe.h>
 #include <init.h>
 #include <mach/bbu.h>
 
@@ -31,6 +32,7 @@ static const struct of_device_id mnt_reform_of_match[] = {
 	{ .compatible = "mntre,reform2"},
 	{ /* sentinel */ },
 };
+BAREBOX_DEEP_PROBE_ENABLE(mnt_reform_of_match);
 
 static struct driver_d mnt_reform_board_driver = {
 	.name = "board-mnt-reform",
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

