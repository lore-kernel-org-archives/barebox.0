Delivery-date: Thu, 11 Jan 2024 12:50:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNta7-00Cw6X-1T
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 12:50:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNta6-0002Uq-4z
	for lore@pengutronix.de; Thu, 11 Jan 2024 12:50:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9AT4mDsY8wBFIIvBZHRAEgLYqgxwiJeONm/4KIhPmiE=; b=ZFiSLF6qqbcS8DDaGbYv+bTKUa
	GL4Oi6IIbnvnW+8/3gEkw7ZCkX+JwxltGUkc+n9tNcCMZKHzzOqOXrOodiz8pJZ4x6qUI0MZQk1ro
	cW2K+d/Z4z9Lvye9dtEJvDFv2WrrB7yib+Fc1AszJ0twxfwKPz5hvUoJk91ReqaEHgseIcXuA8pmp
	qgqLcUaRuzk+uulo0WomOqTsTHBh6BN7mWKHOevg9k0z5lBPMp365ExqSqE8Z9KcFgKx5b4KN9Jlt
	lb3/Ab+mUrxs/AsImj65Q4e+36+uKO43ElRO5c/ks5VgLDi+pSeuzkzxc0iG4Ni2hmZZKCEgzW4u9
	hmGMzn+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYu-00HT5G-0m;
	Thu, 11 Jan 2024 11:49:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYT-00HSeq-1L
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 11:49:05 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNtYK-000137-Tp
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 12:48:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jan 2024 12:48:37 +0100
Message-Id: <20240111114841.2676939-15-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111114841.2676939-1-m.felsch@pengutronix.de>
References: <20240111114841.2676939-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034901_478841_6E67FAD3 
X-CRM114-Status: GOOD (  10.95  )
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
Subject: [PATCH 14/18] drivers: tee: optee: add support for dynamic optee memory base address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make use of the platform provided optee memory base address. Fallback to
the current behaviour if the platform doesn't provide the optee memory
base.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/tee/optee/of.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/tee/optee/of.c b/drivers/tee/optee/of.c
index 8295a1751c52..cdf650592e90 100644
--- a/drivers/tee/optee/of.c
+++ b/drivers/tee/optee/of.c
@@ -4,12 +4,14 @@
 #include <linux/ioport.h>
 #include <asm/barebox-arm.h>
 #include <asm/optee.h>
+#include <tee/optee.h>
 
 int of_optee_fixup(struct device_node *root, void *_data)
 {
 	struct of_optee_fixup_data *fixup_data = _data;
 	struct resource res = {};
 	struct device_node *node;
+	u64 optee_membase;
 	int ret;
 
 	node = of_create_node(root, "/firmware/optee");
@@ -24,8 +26,13 @@ int of_optee_fixup(struct device_node *root, void *_data)
 	if (ret)
 		return ret;
 
-	res.start = arm_mem_endmem_get() - OPTEE_SIZE;
-	res.end = arm_mem_endmem_get() - fixup_data->shm_size -1;
+	if (!optee_get_membase(&optee_membase)) {
+		res.start = optee_membase;
+		res.end = optee_membase + OPTEE_SIZE - fixup_data->shm_size - 1;
+	} else {
+		res.start = arm_mem_endmem_get() - OPTEE_SIZE;
+		res.end = arm_mem_endmem_get() - fixup_data->shm_size - 1;
+	}
 	res.flags = IORESOURCE_BUSY;
 	res.name = "optee_core";
 
@@ -33,8 +40,13 @@ int of_optee_fixup(struct device_node *root, void *_data)
 	if (ret)
 		return ret;
 
-	res.start = arm_mem_endmem_get() - fixup_data->shm_size;
-	res.end = arm_mem_endmem_get() - 1;
+	if (!optee_get_membase(&optee_membase)) {
+		res.start = optee_membase + OPTEE_SIZE - fixup_data->shm_size;
+		res.end = optee_membase + OPTEE_SIZE - 1;
+	} else {
+		res.start = arm_mem_endmem_get() - fixup_data->shm_size;
+		res.end = arm_mem_endmem_get() - 1;
+	}
 	res.flags &= ~IORESOURCE_BUSY;
 	res.name = "optee_shm";
 
-- 
2.39.2



