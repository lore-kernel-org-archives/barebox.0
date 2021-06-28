Delivery-date: Mon, 28 Jun 2021 08:46:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2X-0001cD-1S
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 08:46:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2W-0004DE-2N
	for lore@pengutronix.de; Mon, 28 Jun 2021 08:46:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ch1lnQcvlTPAGMxVQNJln2GjkjF146Hn1z3NRf4BRyc=; b=wbMiEGrgGk0o42
	UUTo2rGuIxxfiIWy9IFnzzOnabCduYkV/Vp7FDSeeyKsb8jqiXFSm14/NH0VAMqGv9nCgEtnrY42c
	uzpLBFGBpLEgoPcp4gOk2O2SFrdlVukDbSVqjGGBeI2NojNJ1jG1moHVqZkRUyUaEVaF9ocm73Odc
	f2CCQk32oP+h5LQ8Tl/NzlGlnjoSJyFFki1t2haTun1Qy6AbOYtjoPlYkn990HQMaRNHbkV0inxjM
	VNMEi6EjajgDtcrlSWo9WLsRDTMRF7rP/B94r7VvGomxAplB2uFo6FXaWcGFQVYA0uYZeoMWUszWU
	+D17K6wp4iBBEnLI+9sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxl1J-0074hM-M5; Mon, 28 Jun 2021 06:45:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxl1F-0074fp-3T
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 06:45:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxl1D-0003ih-Mz; Mon, 28 Jun 2021 08:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxl1D-0007VW-7m; Mon, 28 Jun 2021 08:45:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 08:45:16 +0200
Message-Id: <20210628064517.28636-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628064517.28636-1-a.fatoum@pengutronix.de>
References: <20210628064517.28636-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_234521_186763_0194AD99 
X-CRM114-Status: GOOD (  12.31  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] sandbox: turn into deep probe platform
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With previous commits sorting out the few remaining issues holding
sandbox back from using deep probe, we can now enable it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/board.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/sandbox/board/board.c b/arch/sandbox/board/board.c
index 45b7c7deff5e..43e355afe89c 100644
--- a/arch/sandbox/board/board.c
+++ b/arch/sandbox/board/board.c
@@ -20,6 +20,7 @@
 #include <mach/linux.h>
 #include <init.h>
 #include <errno.h>
+#include <deep-probe.h>
 #include <fb.h>
 
 struct fb_videomode mode = {
@@ -44,7 +45,7 @@ static struct device_d devrandom_device = {
 	.name     = "devrandom",
 };
 
-static int devices_init(void)
+static int devices_init(struct device_d *dev)
 {
 	platform_device_register(&tap_device);
 
@@ -61,4 +62,15 @@ static int devices_init(void)
 	return 0;
 }
 
-device_initcall(devices_init);
+static struct of_device_id sandbox_dt_ids[] = {
+	{ .compatible = "barebox,sandbox" },
+	{ /* sentinel */ }
+};
+BAREBOX_DEEP_PROBE_ENABLE(sandbox_dt_ids);
+
+static struct driver_d sandbox_board_drv = {
+	.name  = "sandbox-board",
+	.of_compatible = sandbox_dt_ids,
+	.probe = devices_init,
+};
+device_platform_driver(sandbox_board_drv);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

