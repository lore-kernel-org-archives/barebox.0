Delivery-date: Wed, 02 Jun 2021 12:01:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNgc-0000gC-KK
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:01:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNgW-0001Wf-HZ
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:01:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2osvao7dQLAtvnDATXdGRnR1tjv+XqgACfWI/vjPFI8=; b=oxtRX8ACl05nJ0
	2LdT5kVxSzfhVX1HsnkSUKuVbUM3T8X3/2UZ+jEC/98xwwBhpD24YRQRSooZPtTBWzHD/7c8sNHzJ
	TsybPeKfFVGDF7o9wWiITLsf3bphIuWHVfQBBC8RWt2BGrAGUrJrCp53Uap4ED/UKJpagVLhQDman
	FpWt84aI9vsBnqwTsYlg/ZUA5XdIcNY5YhYn45KR+KX1KqTfcLkQqB6ovyIjhJxvBHn0ek5FteodW
	avYKQjgVi078l/XPsUtB/lJJ0GLlMoDjuaD2Kz6XJ6T3wEhdykanU4bWBghpRS1lRdzWQRSHird02
	spzgvGTIlJowZ5OcSTsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNem-0037Ww-GO; Wed, 02 Jun 2021 09:59:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNal-0036Fd-Bo
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MP-Nk; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNah-0003AJ-0d; Wed, 02 Jun 2021 11:55:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:55:05 +0200
Message-Id: <20210602095507.24609-23-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025515_506941_4AB7921C 
X-CRM114-Status: GOOD (  12.61  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 22/24] regmap: Add regmap_read_poll_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/regmap.h | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/include/regmap.h b/include/regmap.h
index b43cd936fa..057370afc7 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -116,4 +116,28 @@ int regmap_write_bits(struct regmap *map, unsigned int reg,
 int regmap_update_bits(struct regmap *map, unsigned int reg,
 		       unsigned int mask, unsigned int val);
 
+/**
+ * regmap_read_poll_timeout - Poll until a condition is met or a timeout occurs
+ *
+ * @map: Regmap to read from
+ * @addr: Address to poll
+ * @val: Unsigned integer variable to read the value into
+ * @cond: Break condition (usually involving @val)
+ * @timeout_us: Timeout in us, 0 means never timeout
+ *
+ * Returns 0 on success and -ETIMEDOUT upon a timeout or the regmap_read
+ * error return value in case of a error read. In the two former cases,
+ * the last read value at @addr is stored in @val. Must not be called
+ * from atomic context if sleep_us or timeout_us are used.
+ *
+ * This is modelled after the readx_poll_timeout macros in linux/iopoll.h.
+ */
+#define regmap_read_poll_timeout(map, addr, val, cond, timeout_us) \
+({ \
+	int __ret, __tmp; \
+	__tmp = read_poll_timeout(regmap_read, __ret, __ret || (cond), \
+			timeout_us, (map), (addr), &(val)); \
+	__ret ?: __tmp; \
+})
+
 #endif /* __REGMAP_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

