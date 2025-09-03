Delivery-date: Wed, 03 Sep 2025 12:01:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utkIV-007baa-1d
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 12:01:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utkIU-0007XS-DA
	for lore@pengutronix.de; Wed, 03 Sep 2025 12:00:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=j10BhL/K9ozt2wDmJfJH0fOoaSwkvgKgDyh/dGeIhkw=; b=fh9JvzpJH91bMpsVEu+mhyXjja
	ai3A5wLYRF3T8bHfv5YABUs26cuWs6OkC5Mtm+N22nMJya6QDrmKYJcwGAPtvJ8sKzGHX3YwLqKwN
	i2nHZQKn525QApqzvlxeerXJP2XbIIiYrlXur8/cUASPFdaRPoO2uDTGEbNurAdBLWICnBMVr2xvp
	EiYQmm8F52HSWQXqQzs4Qe7/lVUP7655rxGr+NY4965y4vSQ/j8iZh8ml3ZRQXjPXm3KjGGFPjHU7
	HPQALJbhilIzDQIwcxxIUDNrsePb92HQ6AJ7WVqiJ0LgbH4XJN2VLzYW7CWMSbdO7M78BkIxHi0U/
	v2tUjYsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utkHe-000000061gW-1fEN;
	Wed, 03 Sep 2025 10:00:06 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utjBi-00000005jfj-2yST
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 08:49:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C628C4405D;
	Wed,  3 Sep 2025 08:49:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A710CC4CEFC;
	Wed,  3 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756889393;
	bh=TpS2p69w/zTF0yP8j7KK2tPl5LubpQ+IPWazkEgfZuw=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=tz2TnsllnU1IiZfNKRcbQrRaSfveI7b3JW54X9F0abhhXTIHgVZdrFvKAgLsboqKN
	 SUXipB3gJyIuSOsA4hrPGkbUYYH5cmc1ODO3OqDy2UQzI+QyeGvJqdTsUdtjyyXjvT
	 e9GYZsa0iprCAlbaF5pcUAo/y4RK42V9Lb1U8HIhRWx8Jwe+urgAblsDpxwo7gkeHY
	 vb8rE3zXjiiRLLxi7tUUIHt9AtCid3wOiPigc0UVO0ps3bvMhduhFHgfEhcPJFURgO
	 +MQ0+oq10dQyfYeH+EpdI/Q+epI3RqnvSAz7UKQwBZxDFU0jtZYy7rB41P//hy220L
	 RsOwgM7ODwLVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F02CA1013;
	Wed,  3 Sep 2025 08:49:53 +0000 (UTC)
From: =?utf-8?q?Christian_Thie=C3=9Fen_via_B4_Relay?= <devnull+christian.thiessen.airbus.com@kernel.org>
Date: Wed, 03 Sep 2025 10:49:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250903-mtd-erase-enosys-v1-1-967a95172c4e@airbus.com>
X-B4-Tracking: v=1; b=H4sIACQBuGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDSwMj3dySFN3UosTiVN3UvPziymJdoxQLg1STpGRz82QLJaC2gqLUtMw
 KsJHRsbW1ACHdSEViAAAA
X-Change-ID: 20250902-mtd-erase-enosys-2d80e4bc77c8
To: BAREBOX <barebox@lists.infradead.org>
Cc: =?utf-8?q?Christian_Thie=C3=9Fen?= <christian.thiessen@airbus.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756889391; l=1624;
 i=christian.thiessen@airbus.com; s=20250902; h=from:subject:message-id;
 bh=4QnaLa8ImGaHF9cT+Hdr3X2rr4xAoEVL/kTlt4wW/5o=;
 b=GEClXZbYMcm2g8wWRwNxPGKvDyigmJM1PtzW8VxfS69osKhicGENjbJn5mgVJFpHB6VrLCEaB
 HT8Z+XSFZ0NAczbComRqdZ7q7bh8Wby9FIodocXG2dYbCFhY2ZrKSgL
X-Developer-Key: i=christian.thiessen@airbus.com; a=ed25519;
 pk=NCvzeydU+5OZKp2shtC3Zp/OS1LfbLmhNZNws46FeWk=
X-Endpoint-Received: by B4 Relay for christian.thiessen@airbus.com/20250902
 with auth_id=508
X-Original-From: =?utf-8?q?Christian_Thie=C3=9Fen?= <christian.thiessen@airbus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_014954_789771_9376824D 
X-CRM114-Status: GOOD (  11.29  )
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
Reply-To: christian.thiessen@airbus.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-105.3 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: Make mtd_erase fail gracefully if CONFIG_MTD_WRITE is
 off
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Christian Thießen <christian.thiessen@airbus.com>

When CONFIG_MTD_WRITE is unset, the mtd->_erase member of partition
devices does not get initialized, so it remains NULL.
However when running ubiattach on an UBI partition, mtd_erase() still
gets called, tries to call mtd->_erase and crashes. Make it fail
gracefully by returning ENOSYS ("Function not implemented") instead.

---
As discussed in https://github.com/barebox/barebox/issues/39 this patch
enables ubiattach-ing a NAND partition even if CONFIG_MTD_WRITE is
turned off, by making mtd_erase fail gracefully.

Signed-off-by: Christian Thießen <christian.thiessen@airbus.com>
---
 drivers/mtd/core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 6162ec450fc1c3a0fa6339042c4d627e0f9567d0..7ca8fc900af4666070b03ef5f945748d60e6a6e7 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -436,6 +436,7 @@ int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 {
 	if (instr->addr >= mtd->size || instr->len > mtd->size - instr->addr)
 		return -EINVAL;
+#ifdef CONFIG_MTD_WRITE
 	if (!(mtd->flags & MTD_WRITEABLE))
 		return -EROFS;
 	instr->fail_addr = MTD_FAIL_ADDR_UNKNOWN;
@@ -443,6 +444,9 @@ int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 		return 0;
 
 	return mtd->_erase(mtd, instr);
+#else
+	return -ENOSYS;
+#endif
 }
 
 int mtd_read_oob(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops)

---
base-commit: b5561f3bdd4845b478e5b35aab04f1d8e71ea93b
change-id: 20250902-mtd-erase-enosys-2d80e4bc77c8

Best regards,
-- 
Christian Thießen <christian.thiessen@airbus.com>




