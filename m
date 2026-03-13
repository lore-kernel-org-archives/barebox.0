Delivery-date: Fri, 13 Mar 2026 14:34:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fB-000DSu-23
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:49 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12ep-0000gd-Iz
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o5S4/cjr2w1Elos259tswQ2d8nk8/lhX32ojQlz6pR0=; b=kFRRynPLpYj0nM/c5RGxC58ZBH
	Z383bbQ6+q0qubHqZEhRyUVy5eEYqeQVqcXLvkU7lQSdzd0B1cFJ0YdeUhBwvo7qUGLofeIA7NlGG
	bfBing15t3e3WZKNsca+U+ZGC2WoDu5VAywb6xgaH2I8zNGBiDPEernWUz6wefpdF5l64cUgmo7QD
	Mwilxff/q2JlwG+cogbI5QvpHw4uSYXmYLVVQLC32Al23AF7Jmu9T/N+0+mPAm0MWQzWDRQRC4hd8
	sfLw2gilrqfNw/DSMxpQGl0P2ffV2UnCYE6QR/uFU0/mgutf6H1rDNJ8RZnuP7euNA8aBiuNRlmHd
	xzLWbdiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dX-00000000GCL-2BSw;
	Fri, 13 Mar 2026 13:33:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dC-00000000Fcv-2kcn
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=o5S4/cjr2w1Elos259tswQ2d8nk8/lhX32ojQlz6pR0=; b=YcQlzaVRHDCX1A6gds1Q6rUwvQ
	F0zJavPFQVzd8lMyM3F6mUlnNv6ZUk/aPL1G8B+M/C6OvZN9JXp4fOIvuifIfIA7pMRu/Y1f67vXB
	MNvMjRNrKNdHjzLKKpsxrIncqxU872Vysuk8lG9KwZPa2n/LJLVp7wpo8VL3BFq43Lz3A7Nkfi01N
	eo2lqeRbYT7TWLnKAhfY2zPzZO2PTO1dIMdF7fhKp1bXYDzQF/PVAuoaFf+5b7HhKGkJqkSCojgQ+
	bDCsYXHrMfzhQiznDXBLiQGnkXhU6sHiFKcKj8q9yqR2GzagTkjzRaRqhoijequxWniSYOmSLiNMi
	k/6V/5nA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d6-0000000D9wC-1wN8
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0006s0-MO; Fri, 13 Mar 2026 14:32:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0005Tv-1b;
	Fri, 13 Mar 2026 14:32:33 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-2qN4;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:38 +0100
Message-ID: <20260313132631.2257573-55-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133240_700486_EDE9E1CE 
X-CRM114-Status: UNSURE (   9.02  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 54/58] powerpc: fix initjmp storing function pointer at wrong offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

initjmp was storing the function pointer at offset 88, which is the CR
(condition register) slot in the jmp_buf, instead of offset 84, which is
the LR (link register) slot. When longjmp later restored the buffer, it
would load uninitialized data into LR and jump to it, causing a crash.

This was caught by the setjmp selftest, which triggered a reboot loop on
qemu-ppce500.

(cherry picked from commit bb1ddbf129b6f0081f7c44b726d96f18eeaec6aa)

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20260302134843.195007-3-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/powerpc/lib/setjmp.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/lib/setjmp.S b/arch/powerpc/lib/setjmp.S
index 021a57eebc3c..7f4d041ce213 100644
--- a/arch/powerpc/lib/setjmp.S
+++ b/arch/powerpc/lib/setjmp.S
@@ -79,8 +79,8 @@ END(longjmp)
 ENTRY(initjmp)
 	addi	r3,r3,7		# align to 8 byte boundary
 	rlwinm	r3,r3,0,0,28
-	stw	r5,0(r3)	# offset 0
-	stwu	r4,88(r3)	# offset 88
+	stw	r5,0(r3)	# offset 0 - stack pointer
+	stw	r4,84(r3)	# offset 84 - link register
 	li	r3,0
 	blr
 END(initjmp)
-- 
2.47.3



