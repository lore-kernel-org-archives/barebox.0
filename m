Delivery-date: Thu, 04 May 2023 10:19:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBa-004LOR-PY
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBW-00025w-63
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PndB2Zz9t9wn4FZ1I43jhYVnhXIS2ZfHWuvWYTLnH4c=; b=0bpQRcZM4wAhn7Ruh7GwMVlFmm
	QTe/pvqs2llbjqM5JBBHB4ALrbP56RgFBgV8m4+iWQQluQHQ/LWNelmpkzIHWfzIfdb82a/Vbl0+2
	VOATG6ji9p5TRq6+gsGOY5r+avdz4MvXfVZP1gVUVPZ3jXo1Cy2cCmKN2CMxc1CG3ys9IGUzpBSyU
	1xrDVQwPk/pHl0q2bk0xSR/X2flGa9Ct9wTpMg+5cz7ych63aNz72BFuRQQfHxQmDEI0/dOwYRU2P
	BvQTn479PYWTV4ygEEaMSQkM51pI1sPe4xq7wv8TRjxlacFGD4Ha9nCIrP8x5Q+M96CxWxxf04ig6
	tUDDj/fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAL-0074nC-1f;
	Thu, 04 May 2023 08:18:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAI-0074ju-25
	for barebox@bombadil.infradead.org;
	Thu, 04 May 2023 08:18:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PndB2Zz9t9wn4FZ1I43jhYVnhXIS2ZfHWuvWYTLnH4c=; b=bzhJds3JJvz16g90ONsnM8Elp9
	Yw2yiu+5mFRV+A30f4zO7o9Ac47OQ39zwOLmbvp5L/8GnMLfrtVc1Mv9fvhZ0Wn9D2SEBtC4nvr1y
	rz6tp6k7s7MTnowNZ1WP0KFUCBA72Cca0ZoQ7pZ3N7kH817G/1cUfZl66lTZ1NRAuTUdFPt+qMWkf
	mbqrzfg1orcf6oM3gACphNCW1csrr8xCzQEasmnnkZvCxLsXAMdDjPwMDs5qUUU74NZBcEhIXwH2m
	UZ+gpiD4O705LtXI4KG2C65FNCSe71aco6C9TQQDOOA1RVR3tsfIYUvdpl+1PR9mu5wvvxz/j6OUt
	vaOlH7sQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAB-001gZF-29
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:18:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9t-0001Gw-S6; Thu, 04 May 2023 10:17:49 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9t-0011Et-5d; Thu, 04 May 2023 10:17:49 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9q-001Hb0-L2; Thu, 04 May 2023 10:17:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:29 +0200
Message-Id: <20230504081745.305841-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504081745.305841-1-s.hauer@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_091808_917941_DA84795D 
X-CRM114-Status: UNSURE (   9.93  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/18] stddef: add sizeof_field()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/stddef.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index 5429a7b582..1044571c3f 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -24,4 +24,12 @@ typedef unsigned short wchar_t;
 #undef offsetof
 #define offsetof(TYPE, MEMBER) ((size_t) &((TYPE *)0)->MEMBER)
 
+/**
+ * sizeof_field() - Report the size of a struct field in bytes
+ *
+ * @TYPE: The structure containing the field of interest
+ * @MEMBER: The field to return the size of
+ */
+#define sizeof_field(TYPE, MEMBER) sizeof((((TYPE *)0)->MEMBER))
+
 #endif
-- 
2.39.2



