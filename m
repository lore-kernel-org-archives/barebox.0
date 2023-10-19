Delivery-date: Thu, 19 Oct 2023 13:29:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtRD6-00E9Mb-KO
	for lore@lore.pengutronix.de; Thu, 19 Oct 2023 13:29:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtRD5-00054f-AJ
	for lore@pengutronix.de; Thu, 19 Oct 2023 13:29:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zabgfzdj1irYSriyuHX3UH7oeF8qSkD72tAMK4miYao=; b=VBZoeSPshA2fMBygyNDHuRu/RW
	ntz0SbYtqITIHO2T+VTl4R/OqgbjIKIRwADcYhPVTbiZRify6BMtFhVRrQBlIDG4mA8YWn5ehIkst
	2gGscw0iVo8IEx4bF/49YOHCVQLi52klPDLsWZIYJrVp/a2u98cpYYuzRlXkD+X9etVwxFGa51qcL
	F8S0Wz/rbH4Sg7nZO08DcLLCjjhqfOrC7cwwZxtQZf0B+/P3p12CQVMKRoqfAWejuTklJeP3VYeEi
	gLsWRlHbduH1v3DLPruZG9nz2Tuj4R+LveuOGYovRuuto+/6lvbzZA1Hj3eBDH6WTo9CMjqf7dT5z
	5lXclhJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRBg-00H9pn-26;
	Thu, 19 Oct 2023 11:27:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRBa-00H9oB-0L
	for barebox@lists.infradead.org;
	Thu, 19 Oct 2023 11:27:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qtRBY-0004Zc-NQ; Thu, 19 Oct 2023 13:27:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qtRBY-002mHL-AX; Thu, 19 Oct 2023 13:27:28 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qtRBY-00GGSg-0s;
	Thu, 19 Oct 2023 13:27:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 19 Oct 2023 13:27:25 +0200
Message-Id: <20231019112727.3876442-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231019112727.3876442-1-s.hauer@pengutronix.de>
References: <20231019112727.3876442-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_042730_167663_C852DA71 
X-CRM114-Status: GOOD (  15.99  )
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
Subject: [PATCH 2/4] bootm: print memreserve map in verbose mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There currently is no way to print the /memreserve/ map barebox boots
the kernel with. As this contains useful debugging information sometimes
print it along with the device tree when booting with -vv.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c   |  4 +++-
 drivers/of/fdt.c | 23 +++++++++++++++++++++++
 include/of.h     |  1 +
 3 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 2469d43441..29ea13e28c 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -468,8 +468,10 @@ int bootm_load_devicetree(struct image_data *data, void *fdt,
 	memcpy((void *)data->oftree_res->start, fdt, fdt_size);
 
 	of_print_cmdline(data->of_root_node);
-	if (bootm_verbose(data) > 1)
+	if (bootm_verbose(data) > 1) {
 		of_print_nodes(data->of_root_node, 0, ~0);
+		fdt_print_reserve_map(fdt);
+	}
 
 	return 0;
 }
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 734dbfc92a..223abe9375 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -585,3 +585,26 @@ void fdt_add_reserve_map(void *__fdt)
 	of_write_number(&fdt_res->address, 0, 2);
 	of_write_number(&fdt_res->size, 0, 2);
 }
+
+void fdt_print_reserve_map(const void *__fdt)
+{
+	const struct fdt_header *fdt = __fdt;
+	const struct fdt_reserve_entry *fdt_res =
+		__fdt + be32_to_cpu(fdt->off_mem_rsvmap);
+	int n = 0;
+
+	while (1) {
+		uint64_t size = fdt64_to_cpu(fdt_res->size);
+		uint64_t address = fdt64_to_cpu(fdt_res->address);
+
+		if (!size)
+			break;
+
+		printf("/memreserve/ #%d: 0x%08llx - 0x%08llx\n", n, address, address + size - 1);
+
+		n++;
+		fdt_res++;
+		if (n == OF_MAX_RESERVE_MAP)
+			return;
+	}
+}
diff --git a/include/of.h b/include/of.h
index a7a1ce125f..5686709fcf 100644
--- a/include/of.h
+++ b/include/of.h
@@ -61,6 +61,7 @@ struct of_reserve_map {
 int of_add_reserve_entry(resource_size_t start, resource_size_t end);
 void of_clean_reserve_map(void);
 void fdt_add_reserve_map(void *fdt);
+void fdt_print_reserve_map(const void *fdt);
 
 struct device;
 struct driver;
-- 
2.39.2



