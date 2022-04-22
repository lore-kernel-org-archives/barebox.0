Delivery-date: Fri, 22 Apr 2022 18:06:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhvnZ-00BLRC-FY
	for lore@lore.pengutronix.de; Fri, 22 Apr 2022 18:06:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhvnW-00055o-7A
	for lore@pengutronix.de; Fri, 22 Apr 2022 18:06:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42VEhFpgGzTxoq/7RuMrRxkPueLFghWSp3x8JMpehso=; b=mPujFWKno5LdX2
	82CXDJRrsPitkwShdDqR9oTJlTsOcJ325V4A+DDoDNB0LGFvH/AD6MeVP7kAgySJilaL9Wp1J//qn
	EyVF56PGJ0og/ZcFAkOjBAi6CaZFnZ46O887bS22ggh6ngLT5t6eULAKHOltYoaznWJM+hMddOjjW
	O6MD6m1L+tuVzyJq/ty7pDrZBjYpF4e4C9pwkCQK32RiUQXkdG0kkIENWwIGGd5nlTMHI7gKbOtXC
	5pnTVyQ5Rsq5JwfG0ikfHD1c738rPF/G4eheTkNyilzq4jdHiqQScLCeBk7nUTp94wthJUdV88UoU
	N98G3j7R9VYf9K6XUEKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhvln-001IrZ-Ck; Fri, 22 Apr 2022 16:04:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhvjD-001HmR-7r
 for barebox@lists.infradead.org; Fri, 22 Apr 2022 16:01:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nhvjA-0004Jr-0h; Fri, 22 Apr 2022 18:01:48 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nhvjA-004alH-Od; Fri, 22 Apr 2022 18:01:47 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nhvj8-009urs-Bw; Fri, 22 Apr 2022 18:01:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 Apr 2022 18:01:43 +0200
Message-Id: <20220422160145.2354262-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220422160145.2354262-1-a.fatoum@pengutronix.de>
References: <20220422160145.2354262-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_090151_330483_B5AFBC8D 
X-CRM114-Status: GOOD (  10.40  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] ARM: asm: fix miscompilation of 32-bit
 ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

gcc-11.1.1 shipped with OSELAS.Toolchain-2021.07.0 hoists a single
instruction from __ARM_SETUP_STACK in front of __barebox_arm_head
breaking the barebox header format for the Raspberry Pi 3. This can't
happen with ARM64 and the Raspberry Pi entry points are currently the
only 32-bit users.

While the resulting barebox image was still bootable, header detection
would fail. Add an intermediate naked function to work around this.

This is not required for plain ENTRY_FUNCTION, because the
board-supplied entry point is already NAKED. For
ENTRY_FUNCTION_WITH_FUNCTION, that same entry point is intentionally
non-naked to reduce pitfalls for board code authors..

Fixes: 880c9803b95a ("ARM: implement ENTRY_FUNCTION_WITHSTACK")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index d915cde294a4..bee906f3a97b 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -194,6 +194,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 	void name(ulong r0, ulong r1, ulong r2);			\
 									\
 	static void __##name(ulong, ulong, ulong);			\
+	static void ____##name(ulong, ulong, ulong);			\
 									\
 	void NAKED __section(.text_head_entry_##name)	name		\
 				(ulong r0, ulong r1, ulong r2)		\
@@ -202,7 +203,13 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 			__ARM_SETUP_STACK(stack_top);			\
 			__##name(r0, r1, r2);				\
 		}							\
-		static void noinline __##name				\
+		static void NAKED noinline __##name			\
+			(ulong r0, ulong r1, ulong r2)			\
+		{							\
+			__ARM_SETUP_STACK(stack_top);			\
+			____##name(r0, r1, r2);				\
+		}							\
+		static void noinline ____##name				\
 			(ulong arg0, ulong arg1, ulong arg2)
 
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

