Delivery-date: Tue, 16 Jan 2024 18:09:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw3-002FRu-0L
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:09:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw3-0007ca-Mn
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:09:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J0rV5iScyym1I40iv4Q1lip+309S6I++JNwTY0XYasM=; b=emOqPmk7vqrcMtsSDX0HMfNDFL
	wZ7q31VDcsOwP8slkeDMh9Qj3lSQTO/fgpPDeVxasT/BCtjOErIqrx4MQbxf2RYsA6u45YcdZdfVn
	c9I9TbUeTRFWS31t/tivLR1/jmnqS5vm6tYV/Dr75Df5BaaqjJ0z6RNtLeKxXNdxT20ol7FPJclxy
	EZ9gGsc4Qj0FJhylmReor22LPhYorLznkCxEmGaEuQvK4DmA/RcypHrTJQgVLjpYMnVbrxw2hnO+s
	jkDxDfHRde6JBt80T704BjzAnmhC7YZBd4ubgkmZ40w2wVvoL0+VMlryMY3LCxUhzVTScOxyIMoCW
	2ASA08pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmv3-00Ci9p-2G;
	Tue, 16 Jan 2024 17:08:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmut-00Ci1G-2r
	for barebox@bombadil.infradead.org;
	Tue, 16 Jan 2024 17:07:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=J0rV5iScyym1I40iv4Q1lip+309S6I++JNwTY0XYasM=; b=Zka12GO6OSBXJQOm0jI2NTV3ss
	UB70pFvNyAbBKrzGGUTHeUPu1RE/DGsAiyCOFenY7p9yr/0JOEQpdAo3OR0wOcaOzAMlgoVMzKAR5
	fEw3Y1U2WqmMc6bdLnghUQPk2JhO6ml1fw+7/6F95CLCEs0M30zsTjZHQg3rJ0TS1A1kskYSc3qaX
	zrTFTYsST6sEK45HHv1TBFHLxjWRcrCK7Bo6m8To5ZKk+mzTGl47CqBwSFrAhjrP1fKROdqewxnJs
	sWNc1oacEuUwB5f37tdTjCxe63205pFTBpzmPvWufbeXeqRA7F2xokdlojgyPieupSn+r+G9mG9Pw
	2NnTbpmw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rPmuo-00Ddws-SE
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 17:07:58 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmuf-0006lg-Cl
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:34 +0100
Message-Id: <20240116170738.209954-15-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_170755_002638_AB72BAE0 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH v2 14/18] drivers: tee: optee: add support for dynamic optee memory base address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make use of the platform provided optee memory base address. Fallback to
the current behaviour if the platform doesn't provide the optee memory
base.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/tee/optee/of_fixup.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/tee/optee/of_fixup.c b/drivers/tee/optee/of_fixup.c
index 8295a1751c52..cdf650592e90 100644
--- a/drivers/tee/optee/of_fixup.c
+++ b/drivers/tee/optee/of_fixup.c
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



