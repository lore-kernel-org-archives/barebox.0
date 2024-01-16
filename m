Delivery-date: Tue, 16 Jan 2024 18:09:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw3-002FRt-0E
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:09:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw3-0007cJ-LO
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:09:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AjDFaV3w8b+ycyVGYA891P+3yXHl9M3pavKRy2vYZo0=; b=JPPo+Fo8zfgkt0JMrcnQq7Gb3g
	P6sCBDjnp+3YjdU71phnhjfpI+fcCCT9M/7F2B64DLm8V2gE/4qIUzm9grH8XVjytNHOJqL4xENnv
	hpFS52r1VA6zbNu27MW8xBH8mdQ5mOkeXoUj5j5HerwP1D5LST+Q5eJ0F3B5GyKw92/NTvOpwne5F
	abXSRYraowNJoSy671VVbLtqsAgJE9a6JxLNobt7DU+j5vOkhSd9hZPRg3zGa//8NdL5J8LpcWFMb
	n6js7OlsPgMVcVy5sWRHDFdfxCKFzTiX6aHCAzoB12wGibr7jVkOYJEbHqbV9uFlhAs6Zu5pVJCZl
	/ZoI49qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmv5-00CiCI-1U;
	Tue, 16 Jan 2024 17:08:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmuu-00Ci2M-2R
	for barebox@bombadil.infradead.org;
	Tue, 16 Jan 2024 17:08:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=AjDFaV3w8b+ycyVGYA891P+3yXHl9M3pavKRy2vYZo0=; b=u16Mb91L9k+IF+XdNR56ykxSoX
	F2Ef7qpihbKsPuOeQsSlXY5t4yK+nMebOOkPQVXO+LD0c4TNfRhUj2HSi61eqLsRHopaHwpX5sMEp
	wRqSW6QLQ5qGOkvYxP/9+eJodSPG6n9bkpObPVLBDszsQw/l1WdDl51Dqas6VfK8A5OtxL2MCiRto
	7Z0jFKSn9g6wQ91QVVK1yZrocoEg8Obvc7doPvq8eemyxYwzqxVv0D6LrmY7btqEhP8k8ysyWl9iZ
	dVYokaI80hqPeQgA8sJmXH7JqwFef26g0fo5FqzhMzuYY15b5sNBCAjGq1aF39/9U9tqMyNucn83q
	vHxv9asA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rPmuo-00Ddwu-Tr
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 17:07:59 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmuf-0006lg-9A
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:30 +0100
Message-Id: <20240116170738.209954-11-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_170755_051575_B703497A 
X-CRM114-Status: GOOD (  10.87  )
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
Subject: [PATCH v2 10/18] optee: add helper functions to set/get the optee memory base
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Provide helper functions to set/get the optee memory base address
gathered previously from the builtin optee binary header.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/optee.c      | 27 +++++++++++++++++++++++++++
 include/tee/optee.h | 18 ++++++++++++++++++
 2 files changed, 45 insertions(+)

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
index b5ba0a71d7c9..0cdf828a6d3a 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -33,6 +33,24 @@ struct optee_header {
 
 int optee_verify_header (struct optee_header *hdr);
 
+#ifdef CONFIG_HAVE_OPTEE
+
+void optee_set_membase(const struct optee_header *hdr);
+int optee_get_membase(u64 *membase);
+
+#else
+
+static inline void optee_set_membase(const struct optee_header *hdr)
+{
+}
+
+static inline int optee_get_membase(u64 *membase)
+{
+	return -ENOSYS;
+}
+
+#endif /* CONFIG_HAVE_OPTEE */
+
 #ifdef __PBL__
 
 int start_optee_early(void* fdt, void* tee);
-- 
2.39.2



