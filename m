Delivery-date: Thu, 14 Sep 2023 11:12:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgiOW-00Eph2-BZ
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 11:12:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgiOU-0005y9-Ek
	for lore@pengutronix.de; Thu, 14 Sep 2023 11:12:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=U9YTG2GFW6MktewrzidHmtMNX7o/+qXE81ntybHOB4M=; b=Ee7Y3G9SdQb71jt74Xdq9bB8q/
	lelxz1Ic9db5DrpzbBPIyz+IQfdaFXU725vbzpEQ2ua+tDVMHsav5v250ZRl0cFSLH/kB+6NUfAm5
	4eMaQ403M5iH4wEYCKSnjae4XzFc+/VhUaAXms1WED+f2M5524W25pt6yB6b5VwDhsZSfYtQtWsuJ
	g3L8+fxV7YHLICCpDSGv5ia3+XHWL+JKQ6D7eljRksyWoF4Fl7zj2YwHaGaBlejNo0yl/QjY5EHDB
	/S5goZDI/7w+eYiRcdAK2eDgc9ZNsqRceCoScYJ2Pi6i42++XkOYIGTYJchqoAaG2tEw3U4ekRMKF
	QBC3gpyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgiNL-007oHf-1O;
	Thu, 14 Sep 2023 09:11:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgiNI-007oHC-1h
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 09:11:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgiNG-0005Cu-HU; Thu, 14 Sep 2023 11:10:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgiNG-006Gjr-57; Thu, 14 Sep 2023 11:10:58 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgiNG-000Vfn-0M;
	Thu, 14 Sep 2023 11:10:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Sep 2023 11:10:53 +0200
Message-Id: <20230914091054.121730-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_021100_559465_23DD0EC9 
X-CRM114-Status: GOOD (  10.23  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] remoteproc: imx: don't re-request reserved SDRAM region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Various remoteproc drivers point at reserved memory regions via a
memory-region property in the device tree. As all reserved memory
regions are requested since 2022.10.0, we shouldn't have code request
them again. Fix that. There's not much use of the memory-region property
for i.MX upstream, so breakage should've been rather limited.

This has only been build-tested.

Fixes: d0b5f6bde15b ("of: reserved-mem: reserve regions prior to mmu_initcall()")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/remoteproc/imx_rproc.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index 68fe8031e5fb..c1f70cf75520 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -422,7 +422,7 @@ static int imx_rproc_addr_init(struct imx_rproc *priv,
 	/* remap optional addresses */
 	for (a = 0; a < nph; a++) {
 		struct device_node *node;
-		struct resource res, *res_cpu;
+		struct resource res;
 
 		node = of_parse_phandle(np, "memory-region", a);
 		err = of_address_to_resource(node, 0, &res);
@@ -434,13 +434,12 @@ static int imx_rproc_addr_init(struct imx_rproc *priv,
 		if (b >= IMX7D_RPROC_MEM_MAX)
 			break;
 
-		res_cpu = request_sdram_region(dev_name(dev), res.start,
-					       resource_size(&res));
-		if (!res_cpu) {
-			dev_err(dev, "remap optional addresses failed\n");
-			return -ENOMEM;
-		}
-		priv->mem[b].cpu_addr = (void *)res_cpu->start;
+		/*
+		 * reserved memory region are automatically requested and
+		 * mapped uncached
+		 */
+
+		priv->mem[b].cpu_addr = phys_to_virt(res.start);
 		priv->mem[b].sys_addr = res.start;
 		priv->mem[b].size = resource_size(&res);
 		b++;
-- 
2.39.2



