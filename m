Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f169.google.com ([209.85.217.169])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UocQS-0006JU-UK
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 16:37:06 +0000
Received: by mail-lb0-f169.google.com with SMTP id d10so2759908lbj.28
 for <barebox@lists.infradead.org>; Mon, 17 Jun 2013 09:36:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 17 Jun 2013 20:35:18 +0400
Message-Id: <1371486920-4614-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1371486920-4614-1-git-send-email-antonynpavlov@gmail.com>
References: <1371486920-4614-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] MIPS: pbl: remove extra LONGSIZE definition
To: barebox@lists.infradead.org

We already have the LONGSIZE macro definition in <asm/asm.h>.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h |    2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index c32a229..6a48ca4 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -48,8 +48,6 @@ _pc:	addiu	\rd, ra, \label - _pc		# label is assumed to be
 	.set	pop
 	.endm
 
-#define LONGSIZE	4
-
 	.macro	copy_to_link_location start_addr
 	.set	push
 	.set	noreorder
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
