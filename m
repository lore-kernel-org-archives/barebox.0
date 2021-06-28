Delivery-date: Mon, 28 Jun 2021 08:46:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2f-0001e0-US
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 08:46:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2e-0004Gj-UM
	for lore@pengutronix.de; Mon, 28 Jun 2021 08:46:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kzi0chDm9CucmYhMj1hURf3Y5D+y78GZ+ZI4b3qW2UU=; b=O7Scyx0DS+95Tb
	bheMUGD65kU3JeqLCHNJw72P5fBZ8YS8LT2rgk8ErV4fXPFtrpVQcL5bc6hZyrXiGO2OdhLRErbeM
	SIMs/3lhtu9G6twZA5w/i1wM+eUa3F6UvMlJPvqi9ZX2B5M9ljc+gOo1CMuzTmm3Taumr56mO8UP4
	OeS4roulLkv9rvH7+O186zkaNnyAGwzjQw9G+91+msBzHrGJ0V96MBh3S1gTp0TNgnQv0Z8mUtFn7
	/duYMlZa/Y91/e7QCGRaqnuOTihH5tXBQIbHbKB15ehGVH5MXWy3r49ScNKUsuUEbaXmFTjHVs5OW
	QgM9atbuf81OEhmPNMig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxl1V-0074m0-Kc; Mon, 28 Jun 2021 06:45:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxl1F-0074fn-3W
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 06:45:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxl1D-0003ic-Jo; Mon, 28 Jun 2021 08:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxl1D-0007VF-5a; Mon, 28 Jun 2021 08:45:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 08:45:11 +0200
Message-Id: <20210628064517.28636-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628064517.28636-1-a.fatoum@pengutronix.de>
References: <20210628064517.28636-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_234521_345533_B0FD249A 
X-CRM114-Status: GOOD (  14.26  )
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
Subject: [PATCH 1/7] sandbox: power: set $global.system.reset=POR on poweroff
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that the stickypage is a regular hostfile, it survives poweroff.
This $global.system.reset will only be POR on first boot. For subsequent
boots, the power driver must itself take care to write POR to the nvmem
cell.

While at it remove two minor issues:

  - src_offset is unused
  - len is used to store a length into. Its original value is unused

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/power.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
index 3112c80348e7..aa778792c155 100644
--- a/arch/sandbox/board/power.c
+++ b/arch/sandbox/board/power.c
@@ -8,12 +8,15 @@
 
 struct sandbox_power {
 	struct restart_handler rst_hang, rst_reexec;
+	struct poweroff_handler poweroff;
 	struct nvmem_cell *reset_source_cell;
-	u32 src_offset;
 };
 
 static void sandbox_poweroff(struct poweroff_handler *poweroff)
 {
+	struct sandbox_power *power = container_of(poweroff, struct sandbox_power, poweroff);
+
+	nvmem_cell_write(power->reset_source_cell, &(u8) { RESET_POR }, 1);
 	linux_exit();
 }
 
@@ -36,10 +39,15 @@ static void sandbox_rst_reexec(struct restart_handler *rst)
 static int sandbox_power_probe(struct device_d *dev)
 {
 	struct sandbox_power *power = xzalloc(sizeof(*power));
-	size_t len = 1;
+	size_t len;
 	u8 *rst;
 
-	poweroff_handler_register_fn(sandbox_poweroff);
+	power->poweroff = (struct poweroff_handler) {
+		.name = "exit",
+		.poweroff = sandbox_poweroff
+	};
+
+	poweroff_handler_register(&power->poweroff);
 
 	power->rst_hang = (struct restart_handler) {
 		.name = "hang",
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

