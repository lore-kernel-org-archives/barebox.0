Delivery-date: Thu, 11 Jan 2024 12:50:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNta2-00Cw5O-2v
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 12:50:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNta0-0002Op-9Y
	for lore@pengutronix.de; Thu, 11 Jan 2024 12:50:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cH8p+jHWAiw9yRMQ80i7wuHMQdD9mGYJ0ydZSm0DU9o=; b=j4W3LRYmXECb4ujDZAECaty7ji
	eQ5SI0vp/pAGeve2XqEqpygdjmSLqj/DFTX4YZVONxDaoHK6n5OwyLuOUxTIBOmQxMdHnBCJO1vo/
	oK2Q/fa31evC7WUA1mtnlj5rfFEJCDHcukSCKtE8m43keIBsQgdu4LoErk9FWSwTxM1Rq+jvR+ApZ
	912Hzt3Tbn3MDVIAN2Ytvr4YQtc1ZGc60qd4M8U2KPvnfcXxvOpSFK4lpREGEWFDOKbAbmZNFv487
	1HDRv6t3x7Gz3w41tJY5gbIUEwZhEbjl2AxrfbwsuNjp37IhsB/Y7DBYbwlLE/ushc4yYGF9tXKTm
	sSfWzPIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYf-00HSoe-0U;
	Thu, 11 Jan 2024 11:49:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYQ-00HSap-2q
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 11:49:03 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNtYK-000137-Pu
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 12:48:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jan 2024 12:48:33 +0100
Message-Id: <20240111114841.2676939-11-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111114841.2676939-1-m.felsch@pengutronix.de>
References: <20240111114841.2676939-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034858_914386_EBE19A7E 
X-CRM114-Status: UNSURE (   9.90  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/18] optee: add helper functions to set/get the optee memory base
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Provide helper functions to set/get the optee memory base address
gathered previously from the builtin optee binary header.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/optee.c      | 27 +++++++++++++++++++++++++++
 include/tee/optee.h |  2 ++
 2 files changed, 29 insertions(+)

diff --git a/common/optee.c b/common/optee.c
index 6a8084839619..2ae28b172bbb 100644
--- a/common/optee.c
+++ b/common/optee.c
@@ -6,8 +6,13 @@
 #include <linux/printk.h>
 #include <linux/errno.h>
 
+static u64 optee_membase = U64_MAX;
+
 int optee_verify_header(struct optee_header *hdr)
 {
+	if (!hdr)
+		return -EINVAL;
+
 	if (hdr->magic != OPTEE_MAGIC) {
 		pr_err("Invalid header magic 0x%08x, expected 0x%08x\n",
 			   hdr->magic, OPTEE_MAGIC);
@@ -32,3 +37,25 @@ int optee_verify_header(struct optee_header *hdr)
 
 	return 0;
 }
+
+int optee_get_membase(u64 *membase)
+{
+	if (optee_membase == U64_MAX)
+		return -EINVAL;
+
+	*membase = optee_membase;
+
+	return 0;
+}
+
+void optee_set_membase(const struct optee_header *hdr)
+{
+	int ret;
+
+	ret = optee_verify_header(hdr);
+	if (ret)
+		return;
+
+	optee_membase = (u64)hdr->init_load_addr_hi << 32;
+	optee_membase |= hdr->init_load_addr_lo;
+}
diff --git a/include/tee/optee.h b/include/tee/optee.h
index b5ba0a71d7c9..7bd6638f8559 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -32,6 +32,8 @@ struct optee_header {
 };
 
 int optee_verify_header (struct optee_header *hdr);
+void optee_set_membase(const struct optee_header *hdr);
+int optee_get_membase(u64 *membase);
 
 #ifdef __PBL__
 
-- 
2.39.2



