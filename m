Delivery-date: Tue, 18 May 2021 13:51:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyG4-0004DN-J4
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:51:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyG2-00026i-Ak
	for lore@pengutronix.de; Tue, 18 May 2021 13:51:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vS7sT7URXA6US/CbprpFSo9tq4pRX4U/EEiScFYiQUk=; b=hUYNMgNmeqpeKe/5qSDPXG6t5
	eIYUvNL2Y5smhzbMsIbaRn90IqmmpZmiVQjfWbd5Ql+28utOICfkg9BZ0xGz0HuESbglqCTPxzcQ+
	IilPSlksBNAZMQigACdzdzgm2k25DjwagXlIJ2rHozTKefP2TV37Bt3eXIZTxu+P53Rg/HHKJ6tyt
	grv0SJDGQmDko76Ka7jA+6cjzfIi4ayI6gG0yjfWbIhT5thkACOvOY3q+PEWXQaLSkAt4oGdoqoRC
	SfzORRnUv4IAfW0Hlv293+1BPYNqDXuB00rd5OkxL6awVsPXXbsM7KAc/ybIPfojXkFSp2SpGJ5Cl
	Ap+INzcRA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyF3-000due-1p; Tue, 18 May 2021 11:50:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEC-000dcc-Gs
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:49:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=/Nwx7vwUqctZr1aIjHgpPhK5iZotnBy5ymzXZ728xCE=; b=lHlvQ96Bj3eUJuCGsOEPz0wwF3
 cp2hVOwfFCeAFgmNg5HQ5FtsyDUeos6F4qu3N/LbkllTIe0bnGO+KRhSZOiPecqg63e7kV13xIA02
 dulTT+DQqyjj1nsHcHeEuJNge3VcL0uavNFoBHAVXfmIPxbHYIIvcny3SUpYjNF7SY7dDOORIGi7u
 2Ptft/pmgeNVd7zYuKaHbgLrAC33IUbQAThwvrsk2AQ4l/gz6GBwAThMwzdH9HNDX2wZFT1urrunQ
 K8WMxmQ6HFFRmT2eiwZP+wJeP4x5m4P9BPlHcJDPzkByhNZ0BoTTaonEL24vnEZoDuVh6RYFpGyFU
 uWHevn0g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyE8-00EcHh-Ln
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:49:35 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE7-0001Gu-Ey; Tue, 18 May 2021 13:49:31 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-00015J-DT; Tue, 18 May 2021 13:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:49:25 +0200
Message-Id: <20210518114929.12964-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114929.12964-1-s.hauer@pengutronix.de>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044932_749040_6B08F9BE 
X-CRM114-Status: GOOD (  10.96  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/14] clk: Add lock to different clock types
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The different clock types in Linux have a spinlock_t *lock field. Add
the same in barebox to ease code porting from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/clk.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index b297dfc4f7..85242b3bbc 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -11,6 +11,7 @@
 #define __LINUX_CLK_H
 
 #include <linux/err.h>
+#include <linux/spinlock.h>
 #include <linux/stringify.h>
 
 struct device_d;
@@ -437,6 +438,7 @@ struct clk_divider {
 	const struct clk_div_table *table;
 	int max_div_index;
 	int table_size;
+	spinlock_t *lock;
 };
 
 #define to_clk_divider(_hw) container_of(_hw, struct clk_divider, hw)
@@ -533,6 +535,7 @@ struct clk_fractional_divider {
 	void		(*approximation)(struct clk *clk,
 				unsigned long rate, unsigned long *parent_rate,
 				unsigned long *m, unsigned long *n);
+	spinlock_t *lock;
 };
 
 #define CLK_FRAC_DIVIDER_ZERO_BASED		BIT(0)
@@ -558,6 +561,7 @@ struct clk_mux {
 	int shift;
 	int width;
 	unsigned flags;
+	spinlock_t *lock;
 };
 
 #define to_clk_mux(_hw) container_of(_hw, struct clk_mux, hw)
@@ -580,6 +584,7 @@ struct clk_gate {
 	int shift;
 	const char *parent;
 	unsigned flags;
+	spinlock_t *lock;
 };
 
 int clk_gate_is_enabled(struct clk_hw *hw);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

