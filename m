Delivery-date: Tue, 16 Jan 2024 18:09:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw5-002FT2-16
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:09:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw5-0007eD-Vy
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:09:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zXGKLKYCNDxjPGAHUWrOTCBRokajRU+q8Ktp0Af2iTo=; b=0cfSr6LUrbwy+Sps5yx1IOlEIC
	ZJz5zWY4wjrwo6l4wCLeNKURYbHID1Ljovr6Lc+AfL4WN9lw/qEhsQcfjttgxqqUwEXxlbEm6OZiY
	q34zcdhIjwVPDTYO1x4L+mPjjafHCdXvYjQ95B29lPxnU39BUBIF1tOK6eeqfPToEcpFE1ucxMHkG
	H9IKLCZk23oY+B14DLx0F/oI/Y71PPb9dPAUs0m/b7pBrumn//vQlkqGDrz0+9wA2kbnaqt2wfdZu
	HTHrXBh8UBZ3hp54INOm2e1T9CQ0mr8Z9E2mUwlFupL50arXcNJyKRfjm51FsajEs28IOT0zfBK3p
	4R3N3kIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmv7-00CiEx-2N;
	Tue, 16 Jan 2024 17:08:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmuw-00Ci3M-03
	for barebox@bombadil.infradead.org;
	Tue, 16 Jan 2024 17:08:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=zXGKLKYCNDxjPGAHUWrOTCBRokajRU+q8Ktp0Af2iTo=; b=jAEayq5587UPPdgTVujS5I3cO2
	d+jBlQ6lNjiTPvtlNzcpuZmpTme8xDxKXLeAKO6Glr0RJxFlPNWiSwIANe4CAJl5DPbqmub0He3R8
	Kp0Ig1jlGC7fZOejpe3nLENQhVmUHdBfRF8gGzQKqU8vvoWaaeHkwyQe9RR59r2NpZdybgZBLmBfe
	a7b8U1EjDNcaaVXr8F4QROVcHdeSRGCfV1wSL4D/V7Y6JZZcUr1l2ZUkMF4IVjRX9rxYQhHSfMrKw
	OtoMgBeFXU+MJnK0ldoYSR1yDd+MIL9AC1y/9bQfJzku3WgtLzqK5GGBIaR+NmiW48WPkuhFp+gFa
	KuKSEPlw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rPmup-00DdxA-8g
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 17:08:00 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmuf-0006lg-Gk
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:38 +0100
Message-Id: <20240116170738.209954-19-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_170755_341036_5150AC06 
X-CRM114-Status: GOOD (  12.39  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 18/18] ARM: i.MX8M: fix optee of-fixup logic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current code checks only if "/firmware/optee" exist on the builtin
dtb and applys the fixup if not found and if found nothing is done. If a
builtin dts contains the node but an external don't the fixup won't be
applied. Also if the external dts does have a node + the reserved memory
region nodes but the barebox builtin dts don't we do add additional
reserved memory nodes which may conflict due to different name scheme:
<name> vs. <name>@<addr>.

Move the "/firmware/optee" check into the of_optee_fixup() so the check
is done on the correct dtb root nodes.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c    | 3 +--
 drivers/tee/optee/of_fixup.c | 6 +++++-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 6db16f024148..73b420b38697 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -68,8 +68,7 @@ static int imx8m_init(const char *cputypestr)
 	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
 	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
 
-	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled() &&
-	    !of_find_node_by_path_from(NULL, "/firmware/optee")) {
+	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled()) {
 		static struct of_optee_fixup_data optee_fixup_data = {
 			.shm_size = OPTEE_SHM_SIZE,
 			.method = "smc",
diff --git a/drivers/tee/optee/of_fixup.c b/drivers/tee/optee/of_fixup.c
index cdf650592e90..2ff1f01964c8 100644
--- a/drivers/tee/optee/of_fixup.c
+++ b/drivers/tee/optee/of_fixup.c
@@ -9,12 +9,16 @@
 int of_optee_fixup(struct device_node *root, void *_data)
 {
 	struct of_optee_fixup_data *fixup_data = _data;
+	const char *optee_of_path = "/firmware/optee";
 	struct resource res = {};
 	struct device_node *node;
 	u64 optee_membase;
 	int ret;
 
-	node = of_create_node(root, "/firmware/optee");
+	if (of_find_node_by_path_from(NULL, optee_of_path))
+		return 0;
+
+	node = of_create_node(root, optee_of_path);
 	if (!node)
 		return -ENOMEM;
 
-- 
2.39.2



