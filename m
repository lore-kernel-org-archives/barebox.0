Delivery-date: Mon, 20 Mar 2023 16:31:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTl-007zJg-NZ
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:31:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTl-0001q2-AD
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:31:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pip5Ensdu7wZjvVEQGGIjXaqgxs0X2SVif269ngoauA=; b=xVaMp3gO+zpK4PX624xlTWsLds
	7ZMcSNtGOZKR9lVmzY+yA1VxiByuJZdMXgRRkrGZ11fjS5PAp5nn7ByLBmMxnbF4MbMdFbDIJObXs
	k+ngPcH0V5HMbh8yBFMBxsmT3oXucKeRDO74xXMh/2/c6CUkz+IfkElcAVVHBKRcMBv1wPRrwQIfd
	dsThCyLCBlgh1Q3l2W9O7Dd09xXm5dmTm9fiSekcBNYJ2yAInDPlb/JvmTzy87QhpevVFv/loRbBb
	EsyPXqNJK6g63vgGtK9+2iXwgpkT9LQ8aa3ee6jTjOSmeFNRuaE6f/RnS6yPdCL9LaSbrnFe3P3AB
	Dx8QWsIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSd-009XuE-1Y;
	Mon, 20 Mar 2023 15:30:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSN-009XkV-2b
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:30:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSE-0000r1-JF; Mon, 20 Mar 2023 16:29:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSD-005UZH-Tj; Mon, 20 Mar 2023 16:29:45 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSB-00Dc29-Jn; Mon, 20 Mar 2023 16:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Mar 2023 16:29:35 +0100
Message-Id: <20230320152941.3155428-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230320152941.3155428-1-s.hauer@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_082955_856438_44F28B40 
X-CRM114-Status: GOOD (  11.20  )
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
Subject: [PATCH 12/18] Add dev_WARN_ONCE()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

dev_WARN_ONCE() is like WARN_ONCE(), but with a struct device *argument
to print device context.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/printk.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/printk.h b/include/linux/printk.h
index a9d1b05f6f..42c29e04dd 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -205,4 +205,17 @@ static inline void print_hex_dump_debug(const char *prefix_str, int prefix_type,
 #define print_hex_dump_bytes(prefix_str, prefix_type, buf, len)	\
 	print_hex_dump_debug(prefix_str, prefix_type, 16, 1, buf, len, true)
 
+#define dev_WARN_ONCE(dev, condition, format...) ({      \
+        static int __warned;			\
+        int __ret_warn_once = !!(condition);	\
+						\
+        if (unlikely(__ret_warn_once)) {	\
+                if (!__warned) { 		\
+                        __warned = 1;		\
+                        dev_warn(dev, format);	\
+                }				\
+        }					\
+        unlikely(__ret_warn_once);		\
+})
+
 #endif
-- 
2.30.2



