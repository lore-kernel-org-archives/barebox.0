Delivery-date: Wed, 19 Oct 2022 14:45:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol8Re-000gvS-II
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 14:45:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol8Rb-000199-RC
	for lore@pengutronix.de; Wed, 19 Oct 2022 14:45:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YKrpvrIIeHU0tqGJca1/cT0wMuGXfvR3wgdkV+6NvMk=; b=TafP309gELEltyS6I5O8ijVkaq
	HqyQ3hqj+dtJzxAI6TS3g86hi+WRU9bi1LO0BF97xP7HdN1C3JmPV1xzfLn0QrpriFTVQL/zxJzcl
	JkLuf7QXLOnNW1c4Fn46c0Y2roUFftsob4w2jygci9I+sHNMPdOBpyJgL2HkOtHFwcqNuyweXKeUu
	nMMog4S7NdV/6bZLnRr4arnVBHWJg3Gffp7ygmU903isNobtz84qY8VcHCnwywp9q/0qHftUhDnb7
	FiL01BgOJNsqLgqae/mEvmxUgrHjrSOvCe8tQHrIykpj2V61v4FA/FlkfP84fc1zYffPBd800zS1u
	w4sXvWtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8QQ-001cdH-I0; Wed, 19 Oct 2022 12:43:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8QM-001cYE-3N
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 12:43:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8QK-0000v5-PC; Wed, 19 Oct 2022 14:43:52 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8QK-0007jY-1y; Wed, 19 Oct 2022 14:43:52 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8QJ-007MH4-2y; Wed, 19 Oct 2022 14:43:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 19 Oct 2022 14:43:50 +0200
Message-Id: <20221019124350.1753869-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_054354_185015_AD0743EB 
X-CRM114-Status: UNSURE (   9.95  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM64: asm: define ENTRY_FUNCTION in terms of ENTRY_FUNCTION_WITH_STACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We can't do the same for arm32, as the entry point there must be naked
for proper operation, but for ARM64, ENTRY_FUNCTION(name, ...) is
already equivalent to ENTRY_FUNCTION_WITHSTACK(name, 0, ...), so
consolidate them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index a34f77f2abf3..47d20b6b04ea 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -180,6 +180,10 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 		}							\
 		static void noinline __##name				\
 			(ulong arg0, ulong arg1, ulong arg2)
+
+#define ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
+	ENTRY_FUNCTION_WITHSTACK(name, 0, arg0, arg1, arg2)
+
 #else
 #define ENTRY_FUNCTION_WITHSTACK(name, stack_top, arg0, arg1, arg2)	\
 	static void ____##name(ulong, ulong, ulong);			\
@@ -190,8 +194,6 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 	}								\
 	static void noinline ____##name					\
 		(ulong arg0, ulong arg1, ulong arg2)
-#endif
-
 
 #define ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
 	void name(ulong r0, ulong r1, ulong r2);			\
@@ -207,6 +209,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 		}							\
 		static void NAKED noinline __##name			\
 			(ulong arg0, ulong arg1, ulong arg2)
+#endif
 
 /*
  * When using compressed images in conjunction with relocatable images
-- 
2.30.2



