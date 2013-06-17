Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UocQW-0006Ji-RZ
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 16:37:10 +0000
Received: by mail-la0-f42.google.com with SMTP id eb20so2689632lab.15
 for <barebox@lists.infradead.org>; Mon, 17 Jun 2013 09:36:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 17 Jun 2013 20:35:19 +0400
Message-Id: <1371486920-4614-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] MIPS: pbl: use generated label in ADR macro
To: barebox@lists.infradead.org

The generated label usage make possible
to use the ADR macro many times.

If we don't use a generated label and we try
to use the ADR macro second time then we get

   Error: symbol `_pc' is already defined

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index 6a48ca4..3971b61 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -41,9 +41,9 @@
 	.set	push
 	.set	noreorder
 	move	\temp, ra			# preserve ra beforehand
-	bal	_pc
+	bal	255f
 	 nop
-_pc:	addiu	\rd, ra, \label - _pc		# label is assumed to be
+255:	addiu	\rd, ra, \label - 255b		# label is assumed to be
 	move	ra, \temp			# within pc +/- 32KB
 	.set	pop
 	.endm
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
