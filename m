Delivery-date: Mon, 07 Nov 2022 16:01:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os3dN-000W4D-H1
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 16:01:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os3dL-0007Wq-W1
	for lore@pengutronix.de; Mon, 07 Nov 2022 16:01:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UJdvyPw8J07Q2Q/6y9EBF7jmBjfUGJZ741A2xhp1XwA=; b=T1vGQIGHUnHrgC+u9xarP9EF9v
	S56k9QlaKiIlRIEqK3/ILK0G5GkeNLzuFefN17vycAqdcn2i1AnVhcuYvZ8JyVrhv/LK8AmrOz8Cx
	pxKKx1yuSK405pm9NVrsDQjBqvhVskmss8KiGA9DmIW3zsfKSKbkmG2cwNz43CCKHFdVahw0oHVhq
	XYnuNN9ihtRNiIX/XQu2CWUZ2nEF/TnBbskUeDHhrmNs3ycImlV2RZONfg3C4fTjmGBQ46POmKEST
	FTWa3qdbkUj7XxjtDCAMj4zQXMU8ySr5WmxcFTZqXA4TtVDtPEM80FkLnlJnf1XVpWpxVzan1BqjD
	vYxJuhBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3bm-00FTEh-TH; Mon, 07 Nov 2022 15:00:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3NT-00FKtv-N8
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 14:45:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NP-00037d-PI; Mon, 07 Nov 2022 15:45:27 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NO-002sI6-4t; Mon, 07 Nov 2022 15:45:27 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NO-0023fL-3d; Mon, 07 Nov 2022 15:45:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Nov 2022 15:45:23 +0100
Message-Id: <20221107144524.489471-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221107144524.489471-1-s.hauer@pengutronix.de>
References: <20221107144524.489471-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_064531_813808_5AAF5980 
X-CRM114-Status: GOOD (  11.05  )
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
Subject: [PATCH 3/4] bitops: implement assign_bit()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

assign_bit() is a useful shortcut to if (foo) set_bit(); else clear_bit();

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/bitops.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index 84161e43a3..eb5ff37f2f 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -194,6 +194,20 @@ static inline unsigned long __ffs64(u64 word)
 	return __ffs((unsigned long)word);
 }
 
+/**
+ * assign_bit - Assign value to a bit in memory
+ * @nr: the bit to set
+ * @addr: the address to start counting from
+ * @value: the value to assign
+ */
+static inline void assign_bit(long nr, volatile unsigned long *addr, bool value)
+{
+	if (value)
+		set_bit(nr, addr);
+	else
+		clear_bit(nr, addr);
+}
+
 #ifdef __KERNEL__
 
 #ifndef set_mask_bits
-- 
2.30.2



