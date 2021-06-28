Delivery-date: Mon, 28 Jun 2021 08:46:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2Z-0001d0-Pa
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 08:46:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2Y-0004Dz-PT
	for lore@pengutronix.de; Mon, 28 Jun 2021 08:46:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlFw5dtlF58TtS+0AnnOsrvvUNSTmDaUX5BdJg4Ja4M=; b=1NYKK1t6PEq0p6
	iPQxlHOLIf+nDfjP+DiPbwuc2pbxHhIjU10bl73VmhDk73N1HwURty1Wr7G/Yv4sFB//G5GLomqWg
	Ogi65Yqg3sWLcasfpTmhkMnGC7Hf7RdmDatkVFYqsB/BPAURQDYN8PGRDY98ghrI4LSZDYDNe82kr
	rWLAg5ygMgoCKnjkfh0xko0wkpPHg5dD1Et3UIE44OHB3rM2RkgZgCW4op8AW22N7Eioe+5oLa8GF
	Sd+dosDz9zCdB5vERWWpMTf3hzM8z0RAaD6BsoFJTTOXM0A5PthhGWKJ+PTKuOGJsCZ3lJG9FyjXU
	JzFsph4Rgiu0wWyBVPDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxl1M-0074iA-7W; Mon, 28 Jun 2021 06:45:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxl1F-0074fo-3V
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 06:45:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxl1D-0003ig-Nh; Mon, 28 Jun 2021 08:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxl1D-0007VT-7N; Mon, 28 Jun 2021 08:45:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 08:45:15 +0200
Message-Id: <20210628064517.28636-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628064517.28636-1-a.fatoum@pengutronix.de>
References: <20210628064517.28636-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_234521_260682_D71C40CE 
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
Subject: [PATCH 5/7] nvmem: support deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With deep probe, drivers referencing nvmem-cells should make sure their
providing nvmem device is already probed. The nvmem cell already takes
care to find out the device node providing the cell. The real provider
that should be probed is then either:

  - If the node is in a nvmem-cells partition, the provider is the
    parent node (skipping a possible fixed-partitions node in-between)

  - Otherwise, the provider is the parent node of the cell

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/core.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 980304a8078b..6af30fc5bae7 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -246,13 +246,26 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 }
 EXPORT_SYMBOL_GPL(nvmem_register);
 
+static int of_nvmem_device_ensure_probed(struct device_node *np)
+{
+	if (of_device_is_compatible(np, "nvmem-cells"))
+		return of_partition_ensure_probed(np);
+
+	return of_device_ensure_probed(np);
+}
+
 static struct nvmem_device *__nvmem_device_get(struct device_node *np,
 					       struct nvmem_cell **cellp,
 					       const char *cell_id)
 {
 	struct nvmem_device *nvmem = NULL;
+	int ret;
 
 	if (np) {
+		ret = of_nvmem_device_ensure_probed(np);
+		if (ret)
+			return ERR_PTR(ret);
+
 		nvmem = of_nvmem_find(np);
 		if (!nvmem)
 			return ERR_PTR(-EPROBE_DEFER);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

