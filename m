Delivery-date: Mon, 24 Oct 2022 08:58:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQE-000MqY-S9
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 08:58:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQD-0008F8-Ia
	for lore@pengutronix.de; Mon, 24 Oct 2022 08:58:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xm6CSB3yiOyOGcP20UbDOQ2Q7jdbYsRhvDAxETA+XDo=; b=DfbKZAJVgc8z9YoHj1WFwD2EPa
	6SLyBMdeQL3N89ADPqlkvc4Jjml1PFEJVCFIx8E9qBPQQIoXtrgXXUDGX1vZxAM0gwjursoxwhPqG
	2LL0G6R/iP0R0puD5APW2BIWEOLkNjR7GeNvdYQq6CWbvvXsCzHTO2iaZI6Kr6jintXpBlu6ltx+i
	tgyoxsd92BaEdmX7pAKvFk/CnDulfXJPKIaXcukmBbUYYsK495qs5tOswDNP6B2wN3xf7WOWXFtrx
	t3gTXcwS3aXlTyCOdtZSBbIy2HDtkCQ1GUEiGmzUeY+HVBCwzodEWXHzs5hvEoyaBbagZf8gxY8yK
	Kk8D41Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrP0-00HMov-9l; Mon, 24 Oct 2022 06:57:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrOk-00HMia-Ue
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 06:57:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOh-0007qg-R6; Mon, 24 Oct 2022 08:57:19 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOi-0003rw-44; Mon, 24 Oct 2022 08:57:19 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOf-00567a-Jv; Mon, 24 Oct 2022 08:57:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Oct 2022 08:57:15 +0200
Message-Id: <20221024065716.1215046-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
References: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_235723_104167_1BA3336F 
X-CRM114-Status: GOOD (  11.31  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] ARM: asm: cleanup 32-bit entry points
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The experiment of using a common definition between ARM32 and ARM64
for ENTRY_FUNCTION_WITHSTACK was not fruitful and ARM64 no longer
uses __ARM_SETUP_STACK. Thus remove the definition and open code it for
ARM32. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 89b4a89755a6..dd12f642d993 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -177,7 +177,8 @@ void __barebox_arm64_head(ulong x0, ulong x1, ulong x2);
 	static void ____##name(ulong, ulong, ulong);			\
 	ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
 	{								\
-		__ARM_SETUP_STACK(name, stack_top);			\
+		if (stack_top)						\
+			arm_setup_stack(stack_top);			\
 		____##name(arg0, arg1, arg2);				\
 	}								\
 	static void noinline ____##name					\
@@ -188,15 +189,14 @@ void __barebox_arm64_head(ulong x0, ulong x1, ulong x2);
 									\
 	static void __##name(ulong, ulong, ulong);			\
 									\
-	void NAKED __section(.text_head_entry_##name)	name		\
+	void __naked __section(.text_head_entry_##name)	name		\
 				(ulong r0, ulong r1, ulong r2)		\
 		{							\
 			__barebox_arm_head();				\
-			__ARM_SETUP_STACK(name, 0);			\
 			__##name(r0, r1, r2);				\
 		}							\
-		static void NAKED noinline __##name			\
-			(ulong arg0, ulong arg1, ulong arg2)
+	static void __naked noinline __##name				\
+		(ulong arg0, ulong arg1, ulong arg2)
 #endif
 
 /*
-- 
2.30.2



