Delivery-date: Fri, 04 Aug 2023 10:13:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRpw8-006vs3-2f
	for lore@lore.pengutronix.de; Fri, 04 Aug 2023 10:13:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRpw6-0006TZ-6X
	for lore@pengutronix.de; Fri, 04 Aug 2023 10:13:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zLMpky2VFsoorZ170BrN290V2qT5cXPpS52hSduVSoA=; b=x8ZlMcTF7VA67rKOz27Ko2SMYV
	XOv4IjS+Ert7fkJz/QMgzUnohMQsooPY95Y1CC7CT042v1A4Rp6GYiCdH/leEvdRpEE/v99ztu/Vd
	hBrjLggWN5aTLEH0/Up4tUZzDSAsbY0kaJVoi+HbIUrspd1bQHZH6RAC3h9rOkUjuh6pqdhEPrVnu
	DFptxP0d6WEVfrF4AZmhXcHLPcYoX8vYg0WPe2NfsEVorPerI11qGGtBCGg/1RHlBG+mQTM1nl0j1
	RAIDc1RVcTjksklInj9cth60YvFj6XvYe7O+cTjLGjVJQeWJLHtU5KtpwX4VnZpF6Nu+11AhtPclw
	6B0SDpvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRpug-00BqxN-15;
	Fri, 04 Aug 2023 08:11:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRpud-00Bqvn-2L
	for barebox@lists.infradead.org;
	Fri, 04 Aug 2023 08:11:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qRpuY-0006Ld-SI; Fri, 04 Aug 2023 10:11:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qRpuY-0011qq-8I; Fri, 04 Aug 2023 10:11:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qRpuY-002OBl-00;
	Fri, 04 Aug 2023 10:11:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Aug 2023 10:11:46 +0200
Message-Id: <20230804081147.559379-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230804_011155_763167_54B97305 
X-CRM114-Status: UNSURE (   8.43  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] linux/printk.h: drop unused log_entry::dummy member
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The pointer is used no where, so let's save that space.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/printk.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/linux/printk.h b/include/linux/printk.h
index 978e853bab48..76cdb15d5b4c 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -149,7 +149,6 @@ int __pr_memory_display(int level, const void *addr, loff_t offs, unsigned nbyte
 struct log_entry {
 	struct list_head list;
 	char *msg;
-	void *dummy;
 	uint64_t timestamp;
 	int level;
 };
-- 
2.39.2



