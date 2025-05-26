Delivery-date: Mon, 26 May 2025 16:19:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYgG-000Xul-0I
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 16:19:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYgE-0002Jq-Pf
	for lore@pengutronix.de; Mon, 26 May 2025 16:19:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nnag6SjjgdBcqj2nc4U3Cmg8A07UpGNqi4LG8+npQ/Q=; b=aTGgLvaa3v7gxRzKgVuK0ZcOvL
	bIj9bEy/wnAdLd8SgKGbToz9hg32yM58n9Gg26NbjQ8XnmKFsAXYNSh/WjF2GTbf++y6S0inQLV+E
	cHyEH5UeMQYPXIgzCmCGJbSFoVpW9BdX3TSSmEHkzWCgf19wQb0d1qAEU7kEran0bjibnJ5Hnins8
	3jv6GEyp9RfPlI0GfWsdhMZir8S1AUIa7ArPGXgLfsKFQHlKicMpwFc8pLS8MkJj9lSyyfbe0Gm8K
	EDkdTNsn25zj7i3vmHYrX99WhVYoN4EQvZLP1P/kOCKFBQ8LmLTDchDBirKTW2ZKFu1zpK3d6YArs
	LR7+yEQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYfk-00000008zCo-2aLt;
	Mon, 26 May 2025 14:19:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYfh-00000008z9F-1trT
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 14:19:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uJYfe-0001p8-Io; Mon, 26 May 2025 16:19:18 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 26 May 2025 16:19:12 +0200
Message-Id: <20250526141914.185212-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250526141914.185212-1-a.fatoum@barebox.org>
References: <20250526141914.185212-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_071921_490209_E2BA587B 
X-CRM114-Status: GOOD (  10.54  )
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
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/6] drivers: tee: optee: separate local variables for each resource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Not reusing the same local variable makes the code arguably clearer and
ensures we don't inherit flags by mistake from the previous use of the
variable.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/tee/optee/of_fixup.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/tee/optee/of_fixup.c b/drivers/tee/optee/of_fixup.c
index 045b5a0bb754..e801c4c95070 100644
--- a/drivers/tee/optee/of_fixup.c
+++ b/drivers/tee/optee/of_fixup.c
@@ -10,7 +10,7 @@ int of_optee_fixup(struct device_node *root, void *_data)
 {
 	struct of_optee_fixup_data *fixup_data = _data;
 	const char *optee_of_path = "/firmware/optee";
-	struct resource res = {};
+	struct resource res_core = {}, res_shm = {};
 	struct device_node *node;
 	u64 optee_membase;
 	int ret;
@@ -31,16 +31,16 @@ int of_optee_fixup(struct device_node *root, void *_data)
 		return ret;
 
 	if (!optee_get_membase(&optee_membase)) {
-		res.start = optee_membase;
-		res.end = optee_membase + OPTEE_SIZE - fixup_data->shm_size - 1;
+		res_core.start = optee_membase;
+		res_core.end = optee_membase + OPTEE_SIZE - fixup_data->shm_size - 1;
 	} else {
-		res.start = arm_mem_endmem_get() - OPTEE_SIZE;
-		res.end = arm_mem_endmem_get() - fixup_data->shm_size - 1;
+		res_core.start = arm_mem_endmem_get() - OPTEE_SIZE;
+		res_core.end = arm_mem_endmem_get() - fixup_data->shm_size - 1;
 	}
-	res.flags = IORESOURCE_BUSY;
-	res.name = "optee_core";
+	res_core.flags = IORESOURCE_MEM | IORESOURCE_BUSY;
+	res_core.name = "optee_core";
 
-	ret = of_fixup_reserved_memory(root, &res);
+	ret = of_fixup_reserved_memory(root, &res_core);
 	if (ret)
 		return ret;
 
@@ -48,14 +48,14 @@ int of_optee_fixup(struct device_node *root, void *_data)
 		return 0;
 
 	if (!optee_get_membase(&optee_membase)) {
-		res.start = optee_membase + OPTEE_SIZE - fixup_data->shm_size;
-		res.end = optee_membase + OPTEE_SIZE - 1;
+		res_shm.start = optee_membase + OPTEE_SIZE - fixup_data->shm_size;
+		res_shm.end = optee_membase + OPTEE_SIZE - 1;
 	} else {
-		res.start = arm_mem_endmem_get() - fixup_data->shm_size;
-		res.end = arm_mem_endmem_get() - 1;
+		res_shm.start = arm_mem_endmem_get() - fixup_data->shm_size;
+		res_shm.end = arm_mem_endmem_get() - 1;
 	}
-	res.flags &= ~IORESOURCE_BUSY;
-	res.name = "optee_shm";
+	res_shm.flags = IORESOURCE_MEM;
+	res_shm.name = "optee_shm";
 
-	return of_fixup_reserved_memory(root, &res);
+	return of_fixup_reserved_memory(root, &res_shm);
 }
-- 
2.39.5



