Delivery-date: Fri, 02 Feb 2024 16:31:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvWD-0002Ry-1L
	for lore@lore.pengutronix.de;
	Fri, 02 Feb 2024 16:31:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvWD-0005n5-G8
	for lore@pengutronix.de; Fri, 02 Feb 2024 16:31:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=16NbRZzxc3/VVeHxLgSXy32Lju3eXBzou0bLtuLKKAQ=; b=rgsFFCFqGBIQagpjqughe+Sa0X
	y3so+LiNnIo8I6YsgKEpLsWuqj6jrJc7xTCKiZjcZd3mzEBEliA33C//2D0z9tcPQs9UqDC5Px5N7
	25/Owdll9vly/9/H8bd0GvhH6tKu80KatU2OvojQfjaiSbSnrnRBcJK+kBmCNXP4yTUt2afuMPoFw
	/PtExAvrcPwxEZH+NjVdxYGYdQykIGF0aYvezEGrpCwirz1mK/uKJrnP9jqFbyirpQfDPFj+WMlXj
	RATSf0v2vDMhXjfc2LDFvkj2a9Li6rh6DqbLtXFJuGMlQIWGJoilJE+FdPzSIonyKIinfr1AgRNKA
	m5fu/eyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvVi-0000000C12N-2T9G;
	Fri, 02 Feb 2024 15:31:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvVc-0000000C0yg-03RT
	for barebox@lists.infradead.org;
	Fri, 02 Feb 2024 15:31:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0005UD-S5; Fri, 02 Feb 2024 16:31:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0045XI-FO; Fri, 02 Feb 2024 16:31:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0015Pr-1C;
	Fri, 02 Feb 2024 16:31:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  2 Feb 2024 16:31:07 +0100
Message-Id: <20240202153113.245488-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240202153113.245488-1-s.hauer@pengutronix.de>
References: <20240202153113.245488-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_073116_195587_3180F961 
X-CRM114-Status: GOOD (  13.54  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/8] i2c: lpi2c: use udelay for timeout loops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In PBL we don't have get_time_ns() and is_timeout() available. In
preparation for adding PBL support to the driver replace the timeout
loops with udelay() which we have available in PBL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx-lpi2c.c | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx-lpi2c.c b/drivers/i2c/busses/i2c-imx-lpi2c.c
index 91203d90be..42f7b37143 100644
--- a/drivers/i2c/busses/i2c-imx-lpi2c.c
+++ b/drivers/i2c/busses/i2c-imx-lpi2c.c
@@ -116,7 +116,7 @@ static void lpi2c_imx_intctrl(struct lpi2c_imx_struct *lpi2c_imx,
 static int lpi2c_imx_bus_busy(struct lpi2c_imx_struct *lpi2c_imx)
 {
 	unsigned int temp;
-	u64 start = get_time_ns();
+	unsigned int timeout = 500000;
 
 	while (1) {
 		temp = readl(lpi2c_imx->base + LPI2C_MSR);
@@ -130,7 +130,8 @@ static int lpi2c_imx_bus_busy(struct lpi2c_imx_struct *lpi2c_imx)
 		if (temp & (MSR_BBF | MSR_MBF))
 			break;
 
-		if (is_timeout(start, 500 * MSECOND)) {
+		udelay(1);
+		if (!timeout--) {
 			dev_dbg(&lpi2c_imx->adapter.dev, "bus not work\n");
 			return -ETIMEDOUT;
 		}
@@ -177,7 +178,7 @@ static int lpi2c_imx_start(struct lpi2c_imx_struct *lpi2c_imx,
 static void lpi2c_imx_stop(struct lpi2c_imx_struct *lpi2c_imx)
 {
 	unsigned int temp;
-	u64 start = get_time_ns();
+	unsigned int timeout = 500000;
 
 	writel(GEN_STOP << 8, lpi2c_imx->base + LPI2C_MTDR);
 
@@ -186,7 +187,8 @@ static void lpi2c_imx_stop(struct lpi2c_imx_struct *lpi2c_imx)
 		if (temp & MSR_SDF)
 			break;
 
-		if (is_timeout(start, 500 * MSECOND)) {
+		udelay(1);
+		if (!timeout--) {
 			dev_dbg(&lpi2c_imx->adapter.dev, "stop timeout\n");
 			break;
 		}
@@ -284,7 +286,7 @@ static int lpi2c_imx_master_disable(struct lpi2c_imx_struct *lpi2c_imx)
 static int lpi2c_imx_txfifo_empty(struct lpi2c_imx_struct *lpi2c_imx)
 {
 	u32 txcnt;
-	u64 start = get_time_ns();
+	unsigned int timeout = 500000;
 
 	do {
 		txcnt = readl(lpi2c_imx->base + LPI2C_MFSR) & 0xff;
@@ -294,7 +296,8 @@ static int lpi2c_imx_txfifo_empty(struct lpi2c_imx_struct *lpi2c_imx)
 			return -EIO;
 		}
 
-		if (is_timeout(start, 500 * MSECOND)) {
+		udelay(1);
+		if (!timeout--) {
 			dev_dbg(&lpi2c_imx->adapter.dev, "txfifo empty timeout\n");
 			return -ETIMEDOUT;
 		}
@@ -326,12 +329,13 @@ static void lpi2c_imx_set_rx_watermark(struct lpi2c_imx_struct *lpi2c_imx)
 static int lpi2c_imx_write_txfifo(struct lpi2c_imx_struct *lpi2c_imx)
 {
 	unsigned int data, remaining;
-	uint64_t start = get_time_ns();
+	unsigned int timeout = 100000;;
 
 	do {
 		u32 cnt = readl(lpi2c_imx->base + LPI2C_MFSR) & 0xff;
 		if (cnt == lpi2c_imx->txfifosize) {
-			if (is_timeout(start, 100 * MSECOND))
+			udelay(1);
+			if (!timeout--)
 				return -EIO;
 			continue;
 		}
@@ -349,12 +353,13 @@ static int lpi2c_imx_read_rxfifo(struct lpi2c_imx_struct *lpi2c_imx)
 {
 	unsigned int remaining;
 	unsigned int data;
-	uint64_t start = get_time_ns();
+	unsigned int timeout = 100000;;
 
 	do {
 		data = readl(lpi2c_imx->base + LPI2C_MRDR);
 		if (data & MRDR_RXEMPTY) {
-			if (is_timeout(start, 100 * MSECOND))
+			udelay(1);
+			if (!timeout--)
 				return -EIO;
 			continue;
 		}
-- 
2.39.2



