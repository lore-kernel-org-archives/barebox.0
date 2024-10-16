Delivery-date: Wed, 16 Oct 2024 11:09:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1021-0050M9-2O
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:09:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1021-00075Q-31
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:09:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IiX082g2k/Q7LsxC4+nzdcuVyHDJb0y3ex/S6zqZLzw=; b=XBU7AFiIgS7G5coGOS8KZCxsMg
	DBTYXbhtBBXqGS2Ki0txyZRqHoDbe+jxdH3FEcfOP4rqgPZ3lmr+OWWa0gNrlD5bARtGZU3GSkSEn
	6TwZAUfou739qEoXDGrpG0AEZDbMSTMEvLvH7yA9dzZ0pJRi3bp3XoA0jfVO1cjfsMksr11NZlKP8
	uUXuF6AREelx1QioZ5Mmsw4/blzccKxNNej8m2H0SQZndtQMzjg0ugsUg4R66cP2ur38m/f2n4Z6U
	MRz+atfdPihHodGnSHlDYICaSftLqQ0c8PbAO+pFWYFPHVd4pIraWXmJsLgDO/VHWP5Vq8pTepX6N
	B+fmrALg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t101W-0000000BAjx-2jJE;
	Wed, 16 Oct 2024 09:08:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t101T-0000000BAiK-1OuG
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:08:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t101R-0006qD-Ud; Wed, 16 Oct 2024 11:08:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t101R-002EQ6-Hr; Wed, 16 Oct 2024 11:08:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zuh-00GdhR-0W;
	Wed, 16 Oct 2024 11:01:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2024 11:01:49 +0200
Message-Id: <20241016090150.3963002-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
References: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_020851_510967_E8B21EA8 
X-CRM114-Status: UNSURE (   8.46  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/13] memory: stub out request_barebox_region for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To optimize out calls to undefined functions in PBL at compile-time
instead of link time, let's define stubs for the functions that
are referenced in obj-pbl-y files, but inside function sections
that are ultimately unreferenced.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/memory.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/memory.h b/include/memory.h
index 571effd3b0d6..d5934e3ec533 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -63,8 +63,18 @@ static inline u64 memory_sdram_size(unsigned int cols,
 
 void register_barebox_area(resource_size_t start, resource_size_t size);
 
+#ifndef __PBL__
 struct resource *request_barebox_region(const char *name,
 					resource_size_t start,
 					resource_size_t size);
+#else
+static inline struct resource *request_barebox_region(const char *name,
+					resource_size_t start,
+					resource_size_t size)
+{
+
+		return ERR_PTR(-ENOSYS);
+}
+#endif
 
 #endif
-- 
2.39.5



