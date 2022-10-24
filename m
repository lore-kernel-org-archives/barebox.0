Delivery-date: Mon, 24 Oct 2022 08:58:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQ9-000MpW-7r
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 08:58:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQ8-0008Dx-3h
	for lore@pengutronix.de; Mon, 24 Oct 2022 08:58:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YKrpvrIIeHU0tqGJca1/cT0wMuGXfvR3wgdkV+6NvMk=; b=dOAk5uA3ee8Pe6Bimo7sguksc4
	rMEVYjuw/MFp2sI/1MO5AH1uaMvIbaWmFx0cU2yiCC0b2a2QB23GRoNrRtvZ2b6ukfdpx2QlKLa1h
	fxEjr2YeZmLkuUiNakFwluJ2OyBmLXVnxotWbAfuWsFHw95w2bR9YvTMOkIl9CuexdM5d2SPrtOdV
	LeBTsmYj6GoZDVCes+ChYjm2qf7NO88/1wJpZLWBnQKXd8T8hAy8HHVxDfQ+Cyg5a23QDFsCw7Hek
	whcJA/vPUV5hLj5re/wp+6NW+AwgpXR2arbB7TviEn3Z2gVRG8//6TJ9N/UHf0D6ESQgqbN3d8KbS
	QCANlBYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrOp-00HMlP-V2; Mon, 24 Oct 2022 06:57:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrOk-00HMiO-St
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 06:57:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOh-0007qU-DJ; Mon, 24 Oct 2022 08:57:19 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOh-0003re-Ik; Mon, 24 Oct 2022 08:57:18 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOf-00567K-IG; Mon, 24 Oct 2022 08:57:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Oct 2022 08:57:10 +0200
Message-Id: <20221024065716.1215046-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
References: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_235722_975313_BACA2309 
X-CRM114-Status: UNSURE (   9.66  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] ARM64: asm: define ENTRY_FUNCTION in terms of ENTRY_FUNCTION_WITHSTACK
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



