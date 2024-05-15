Delivery-date: Wed, 15 May 2024 08:08:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s77oX-00FPZW-00
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 08:08:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s77oW-0005Lp-F0
	for lore@pengutronix.de; Wed, 15 May 2024 08:08:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HT+umGvrzI++dZarP8pAXAY9xso4M3Cwr6UUpmtOqAg=; b=Sqfe2pRbYJR6XxNt10dft9izQq
	hZwd2q3nAsFyJXxaZ0KqVBzLi8Rg6IQESGuGEHe+mGyRQ3DElg3YDBxWYrqQwUHS1zsrpcmYmprRh
	cQTlhGFKf5CXUTegb8hERJ+msM77WealWjo1Xir06QIij8JQSATrRy21nvL3LTUxFo/jZ06cD/s0J
	2sMKRddaV+JORMV6XvmXo2BzcT/K0X0/Jc6yEvzAVq2LfLUZ/EiLPyENKF0LluWBdM+ITE/X4WBli
	B3rl+5SeqAA9MyapYAvFEYeAuLEYTaM0I1MtNBvKbcT1CA1oyRix1oTFqg+HMMYGcW46bHA9GQjwP
	OT49ZZWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s77o6-00000000c20-2E6Z;
	Wed, 15 May 2024 06:08:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s77o1-00000000c0b-3aGF
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 06:08:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s77o0-00056n-A0; Wed, 15 May 2024 08:08:00 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s77nz-001UGI-Tk; Wed, 15 May 2024 08:07:59 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s77nz-00F1W3-2h;
	Wed, 15 May 2024 08:07:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 08:07:57 +0200
Message-Id: <20240515060758.3580734-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_230801_925837_06988B58 
X-CRM114-Status: GOOD (  11.09  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] list: fix CONFIG_DEBUG_LIST link failure in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the addition of PBL handoff data, we now use <linux/list.h> in PBL.
This works fine with CONFIG_DEBUG_LIST disabled, because all functions are
inlined, but when building with the option enabled, references to the
out-of-line sanity checking functions breaks the build.

Fix this by omitting these references when building for PBL.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/list.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/list.h b/include/linux/list.h
index 2b3a39ea81e8..e47a8188e807 100644
--- a/include/linux/list.h
+++ b/include/linux/list.h
@@ -36,7 +36,7 @@ static inline void INIT_LIST_HEAD(struct list_head *list)
 	list->prev = list;
 }
 
-#ifdef CONFIG_DEBUG_LIST
+#if defined(CONFIG_DEBUG_LIST) && !defined(__PBL__)
 extern bool __list_add_valid_or_report(struct list_head *new,
 				       struct list_head *prev,
 				       struct list_head *next);
-- 
2.39.2



