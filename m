Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f48.google.com ([209.85.215.48])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TlRDS-0006QM-B7
 for barebox@lists.infradead.org; Wed, 19 Dec 2012 21:30:15 +0000
Received: by mail-la0-f48.google.com with SMTP id m13so1913380lah.35
 for <barebox@lists.infradead.org>; Wed, 19 Dec 2012 13:30:12 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 20 Dec 2012 01:29:54 +0400
Message-Id: <1355952595-1432-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1355952595-1432-1-git-send-email-antonynpavlov@gmail.com>
References: <1355952595-1432-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 4/5] MIPS: qemu-malta: add board label
To: barebox@lists.infradead.org

Put special Board ID at the start of bootrom (as qemu does).

The linux kernel use this board ID to determine
the MIPS board family and version, so we need this
Board ID to run linux kernel successfully.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .../boards/qemu-malta/include/board/board_pbl_start.h    |   14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
index 5b06770..a6c55c7 100644
--- a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
+++ b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
@@ -23,6 +23,20 @@
 	.set	push
 	.set	noreorder
 
+	b       __start
+	 nop
+
+	/*
+	   MIPS_REVISION_REG located at 0x1fc00010
+	   see the MIPS_REVISION_CORID macro in linux kernel sources
+	   set up it to 0x420 (Malta Board with CoreLV) as qemu does
+	*/
+	.org    0x10
+	.word   0x00000420
+
+	.align 4
+__start:
+
 	mips_disable_interrupts
 
 	/* cpu specific setup ... */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
