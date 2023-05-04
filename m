Delivery-date: Thu, 04 May 2023 10:19:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBL-004LLT-Gc
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBJ-0001x1-Eb
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5zS/zCA4D4ZwJ1WQiI3hEJe678xgj+3u1gR8q2Afzww=; b=VGz3J0RHA70MstPkuW9wkro0MV
	l96ywm/Dgin7c4ODHCKO0vtgJdRSsZ4pWwW1M945tFCt1EM5nBvwIJ22Anx9XBYjXXVbvGr7AEHzS
	I0YzYd/GDdG0AdV4DO0UtVzKJYrNh5zDg+F3xRS8NJLUk15yjLknx9GehuYgQfdiJxqOeBdH6ZA+r
	YE6ENn04sBr7bH5G+Dub/7eOMwOQqh/OB4rGepgC0OEoOnIAE/RZ1saomjTwK7Qmfv7ZM9p5tRjGP
	Wznx7dnJTnFB1m0gOH12BFsCEbUFQgdM2pxTUYDRnOq6sBWCysHQRbginpd9Q6hJdRBjqNBfFtDeA
	SoVXZ73g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUA2-0074Xg-2h;
	Thu, 04 May 2023 08:17:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puU9w-0074Sb-1v
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:17:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9s-0001FY-Eg; Thu, 04 May 2023 10:17:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9r-0011ER-Ky; Thu, 04 May 2023 10:17:47 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9q-001HbC-Mv; Thu, 04 May 2023 10:17:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:32 +0200
Message-Id: <20230504081745.305841-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504081745.305841-1-s.hauer@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_011752_647589_FF658483 
X-CRM114-Status: GOOD (  11.06  )
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
Subject: [PATCH 05/18] ARM: SCMI: Use correct smc/hvc instructions on ARM64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't have a CONFIG_ARM64 symbol, so we'll always select the ARM32
smc/hvc variants. Use the correct CONFIG_CPU_64 to fix that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/arm-smccc.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 64ee3863a6..f6942c6420 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -286,12 +286,12 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 #define arm_smccc_hvc_quirk(...) __arm_smccc_hvc(__VA_ARGS__)
 
 /* SMCCC v1.1 implementation madness follows */
-#ifdef CONFIG_ARM64
+#ifdef CONFIG_CPU_64
 
 #define SMCCC_SMC_INST	"smc	#0"
 #define SMCCC_HVC_INST	"hvc	#0"
 
-#elif defined(CONFIG_ARM)
+#elif defined(CONFIG_CPU_32)
 #include <asm/opcodes-sec.h>
 #include <asm/opcodes-virt.h>
 
-- 
2.39.2



