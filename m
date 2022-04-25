Delivery-date: Mon, 25 Apr 2022 08:27:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisBu-00ERQU-HM
	for lore@lore.pengutronix.de; Mon, 25 Apr 2022 08:27:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisBr-0000FL-BZ
	for lore@pengutronix.de; Mon, 25 Apr 2022 08:27:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QR4MG2bZABq2xc4GjtWMqOeIe/MG2UAKMKZprXIhQGA=; b=ryMp7lOiFXOR73
	76jhcpXlI7qLMDSEpFJm75Y37JMErqxoaOnHA0BDROqZSfEr9j2XWey7gejT+F6jEVpLB0EwEB3e1
	xZikBCXfXw/ELMBpMGZ21wfzbUdfG85n+WGTStGRgtdnDy5wJHjEk0pNRjopmpQkD7RY2kyu0cy+R
	Uz2ELEwGUXnaLPeWtWuMQ0LJOy1rdSMOZqgDev+eVnjgnN3DtLvRNErcuFMRXVm7T462/SAU3tH7I
	BzPrRTOVlPkteVr+QZ0RgjcF5T62pgAr+hX9/459FxRESMC7CKvAvCChPyM1o2ARyFlLAwqgnvzYL
	DhFAB/bc5RMw2BaIZSWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nisAM-008TcX-P0; Mon, 25 Apr 2022 06:25:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nisAB-008TZW-RJ
 for barebox@lists.infradead.org; Mon, 25 Apr 2022 06:25:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nisA4-0008Ki-7j; Mon, 25 Apr 2022 08:25:28 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisA4-0055zC-Vt; Mon, 25 Apr 2022 08:25:27 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisA2-0004Yp-Oe; Mon, 25 Apr 2022 08:25:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Apr 2022 08:25:21 +0200
Message-Id: <20220425062523.17478-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425062523.17478-1-a.fatoum@pengutronix.de>
References: <20220425062523.17478-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220424_232535_921389_5268FDF6 
X-CRM114-Status: GOOD (  10.88  )
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
Subject: [PATCH master v2 1/3] ARM: asm: fix miscompilation of 32-bit
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
 arch/arm/include/asm/barebox-arm.h | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index d915cde294a4..8b0c00633277 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -194,15 +194,21 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 	void name(ulong r0, ulong r1, ulong r2);			\
 									\
 	static void __##name(ulong, ulong, ulong);			\
+	static void ____##name(ulong, ulong, ulong);			\
 									\
 	void NAKED __section(.text_head_entry_##name)	name		\
 				(ulong r0, ulong r1, ulong r2)		\
 		{							\
 			__barebox_arm_head();				\
-			__ARM_SETUP_STACK(stack_top);			\
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

