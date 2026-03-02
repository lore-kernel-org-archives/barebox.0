Delivery-date: Mon, 02 Mar 2026 14:49:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3eM-007Ipl-22
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 14:49:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3eM-0007Lj-Vi
	for lore@pengutronix.de; Mon, 02 Mar 2026 14:49:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cms1mrrzGo/+1r/z5RXv1VdL1JxlES2Itzaqb05u4AI=; b=qKHHcfOoCWie3NvK/qhp8fcJVa
	Yn9zIxorA73ldPKhkyPG+yUXo5SwkOt7WEYUdq6H3pATwmftQtRMU7Hsp5zM5tK+SAfhVxCyGN6Ao
	s+wOVNf3wIT4n0YtlYYXXgmekKUzFtiM3xgDabcVH59pwuIJUFVFgwSXEUV+JugF84Nu6MuXFMXLZ
	81QuBk7CTfaAJpeA9lJxDLSH12t8iy25sKD7Ar5VKQt5ed+LFbNNKkMrS109Ki1vDmJfSlqQr5mwj
	AoDEB45xJJSkvurw4anyy+gjCfGRnE5A01mcfQghRz5twzCYa0vPYK2i5ofqz8fkNEysuAxvRsEDy
	upB4KYuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3dn-0000000D9jl-0q1Y;
	Mon, 02 Mar 2026 13:48:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3dj-0000000D9hg-27TD
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 13:48:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vx3dg-00073f-Lg; Mon, 02 Mar 2026 14:48:48 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Mar 2026 14:47:34 +0100
Message-ID: <20260302134843.195007-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260302134843.195007-1-a.fatoum@barebox.org>
References: <20260302134843.195007-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_054851_540507_5560D5FF 
X-CRM114-Status: UNSURE (   9.05  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] powerpc: fix initjmp storing function pointer at wrong offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

initjmp was storing the function pointer at offset 88, which is the CR
(condition register) slot in the jmp_buf, instead of offset 84, which is
the LR (link register) slot. When longjmp later restored the buffer, it
would load uninitialized data into LR and jump to it, causing a crash.

This was caught by the setjmp selftest, which triggered a reboot loop on
qemu-ppce500.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
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



