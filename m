Delivery-date: Mon, 28 Jun 2021 08:46:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2m-0001es-84
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 08:46:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2l-0004JT-6R
	for lore@pengutronix.de; Mon, 28 Jun 2021 08:46:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L36BAREzFeOsI2YZ0H973lNMFsrTymwai1dQnWOmz5s=; b=t3tqSe+Izo7Er1
	eT9YtnIUD0oZB+LxCzmN8DtI8aoA8nzagWB3NZ8WRtbrnWV0leeo/JD1vhTnN3p9Nv3g7DJc6VhVy
	d2g7wzqIr3NiKizaJ4Tl5c+xYjdSCgVn1RYl2PHFwalZocfNUwJ3pRmTYuOVUlrv0RXdV9y6x+Iab
	Z+udz6aIh8uFZJF3fi51FB/7Yxh2p2TNPoahajpcMM3uPCPA83TID66R/l7fy4ulaiYh5GJh12j/G
	hA/ZReXLhJtKWOz4vgHX5g1mi8K2ucPlRmgyUk/B4qtAJErx/GMgtl4GGhCik/RIVMohDoJzKrNkH
	vXQTpel46VeR43PEAsyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxl1d-0074rp-9y; Mon, 28 Jun 2021 06:45:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxl1M-0074id-US
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 06:45:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxl1D-0003id-MZ; Mon, 28 Jun 2021 08:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxl1D-0007VI-61; Mon, 28 Jun 2021 08:45:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 08:45:12 +0200
Message-Id: <20210628064517.28636-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628064517.28636-1-a.fatoum@pengutronix.de>
References: <20210628064517.28636-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_234529_025464_1883F528 
X-CRM114-Status: GOOD (  14.72  )
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
Subject: [PATCH 2/7] sandbox: fix probe order dependency between watchdog and
 power
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With incoming changes to enable deep probe for sandbox, watchdog driver
may be probed before power driver, which so far didn't happen. Because
the watchdog driver writes the same NVMEM cell read by the power driver,
the original value of the nvmem cell (used for $global.system.reset)
will be lost. Work around this by writing the WDG reset reason only
at first watchdog enable which is guaranteed to happen after power
driver probe. We don't need to reset the nvmem cell on watchdog disable,
because all other reset methods will already overwrite the cell with
the correct value.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/watchdog.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/sandbox/board/watchdog.c b/arch/sandbox/board/watchdog.c
index ff26a2019fac..daaf549642e3 100644
--- a/arch/sandbox/board/watchdog.c
+++ b/arch/sandbox/board/watchdog.c
@@ -12,6 +12,7 @@
 struct sandbox_watchdog {
 	struct watchdog wdd;
 	bool cant_disable :1;
+	struct nvmem_cell *reset_source_cell;
 };
 
 static inline struct sandbox_watchdog *to_sandbox_watchdog(struct watchdog *wdd)
@@ -29,6 +30,8 @@ static int sandbox_watchdog_set_timeout(struct watchdog *wdd, unsigned int timeo
 	if (timeout > wdd->timeout_max)
 		return -EINVAL;
 
+	nvmem_cell_write(wd->reset_source_cell, &(u8) { RESET_WDG }, 1);
+
 	linux_watchdog_set_timeout(timeout);
 	return 0;
 }
@@ -36,7 +39,6 @@ static int sandbox_watchdog_set_timeout(struct watchdog *wdd, unsigned int timeo
 static int sandbox_watchdog_probe(struct device_d *dev)
 {
 	struct device_node *np = dev->device_node;
-	struct nvmem_cell *reset_source_cell;
 	struct sandbox_watchdog *wd;
 	struct watchdog *wdd;
 	int ret;
@@ -56,16 +58,12 @@ static int sandbox_watchdog_probe(struct device_d *dev)
 		return ret;
 	}
 
-	reset_source_cell = of_nvmem_cell_get(dev->device_node, "reset-source");
-	if (IS_ERR(reset_source_cell)) {
-		dev_warn(dev, "No reset source info available: %pe\n", reset_source_cell);
+	wd->reset_source_cell = of_nvmem_cell_get(dev->device_node, "reset-source");
+	if (IS_ERR(wd->reset_source_cell)) {
+		dev_warn(dev, "No reset source info available: %pe\n", wd->reset_source_cell);
 		goto out;
 	}
 
-	nvmem_cell_write(reset_source_cell, &(u8) { RESET_WDG }, 1);
-
-	nvmem_cell_put(reset_source_cell);
-
 out:
 	dev_info(dev, "probed\n");
 	return 0;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

