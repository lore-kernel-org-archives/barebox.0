Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22e.google.com ([2a00:1450:4010:c07::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zw3LI-0003ik-1h
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 07:27:49 +0000
Received: by lfs39 with SMTP id 39so80389342lfs.3
 for <barebox@lists.infradead.org>; Mon, 09 Nov 2015 23:27:26 -0800 (PST)
Received: from localhost.localdomain (ppp91-79-57-136.pppoe.mtu-net.ru.
 [91.79.57.136])
 by smtp.gmail.com with ESMTPSA id bn6sm281576lbc.10.2015.11.09.23.27.25
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 09 Nov 2015 23:27:25 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 10 Nov 2015 10:27:14 +0300
Message-Id: <1447140436-29099-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1447140436-29099-1-git-send-email-antonynpavlov@gmail.com>
References: <1447140436-29099-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] MIPS: avoid excessive exception
To: barebox@lists.infradead.org

This commit clears ERL (ERror Level) flag on start.
If this flag is set then we get 'TLB miss on load or ifetch'
just after return from exception.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index 681b40a..c4ae6a2 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -145,7 +145,7 @@ copy_loop_exit:
 	.set	push
 	.set	noreorder
 	mfc0	k0, CP0_STATUS
-	li	k1, ~ST0_IE
+	li	k1, ~(ST0_ERL | ST0_IE)
 	and	k0, k1
 	mtc0	k0, CP0_STATUS
 	.set	pop
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
