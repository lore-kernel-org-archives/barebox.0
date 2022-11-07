Delivery-date: Mon, 07 Nov 2022 11:09:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1orz4H-000L4Y-Nw
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 11:09:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1orz4G-0003Yf-M0
	for lore@pengutronix.de; Mon, 07 Nov 2022 11:09:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IyOWwqSnlHuxR5aWNegGpZ3tEibpRhcBbh3F9wJyVrU=; b=AmnX0MHp6pBDSzH0Z9h41bXOfm
	Pci4uyxdqcHxLZs4pPbIt6iirvqr5E2d3nNpRkPpPFHQZYupxBD28yrPnsnfNmIqGRucUrKuc1S8K
	RY09ZvpMz32kSLC2NY6taM4tA0y9E2+zG3NymDo8rg/dFT4yX1pkI8A1CHcFFB80M6dcLqIL4qSkv
	Cgc04iFxdJMOJ0rulP7wTaIDmVB61N0TdKl/K1nxhq+oJ7O/iJPqB15eNhjJT8nUjP0hif8mKHgrL
	fVkUhotv/eWq2DfoRAyMfu5JapjYyOaJJEBRvWwR7oU5IUTnyF8ZwhA/AUtwFf0+CJ+eRJGZafo8r
	za9ibsOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orz2a-00DfRH-Hm; Mon, 07 Nov 2022 10:07:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orz2T-00DfPA-Tt
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 10:07:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1orz2Q-0003Om-3e; Mon, 07 Nov 2022 11:07:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1orz2O-002pkY-GR; Mon, 07 Nov 2022 11:07:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1orz2O-00AX4G-LR; Mon, 07 Nov 2022 11:07:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Nov 2022 11:07:27 +0100
Message-Id: <20221107100727.2510346-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221107100727.2510346-1-s.hauer@pengutronix.de>
References: <20221107100727.2510346-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_020733_992575_9B20B355 
X-CRM114-Status: GOOD (  11.48  )
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
Subject: [PATCH 2/2] make IS_ERR_VALUE() complain about non-pointer-sized arguments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

IS_ERR_VALUE() needs a pointer sized argument, so warn when any int
sized arguments sneak in. When this happens a warning is generated:

warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]

Based on Kernel commit aa00edc1287a ("make IS_ERR_VALUE() complain about non-pointer-sized arguments")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/err.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/err.h b/include/linux/err.h
index 69efc7c4ac..db7ad6cc5b 100644
--- a/include/linux/err.h
+++ b/include/linux/err.h
@@ -19,7 +19,7 @@
 
 #ifndef __ASSEMBLY__
 
-#define IS_ERR_VALUE(x) unlikely((x) >= (unsigned long)-MAX_ERRNO)
+#define IS_ERR_VALUE(x) unlikely((unsigned long)(void *)(x) >= (unsigned long)-MAX_ERRNO)
 
 static inline void *ERR_PTR(long error)
 {
-- 
2.30.2



