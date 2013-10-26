Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZzri-00053y-TP
 for barebox@lists.infradead.org; Sat, 26 Oct 2013 09:09:03 +0000
Received: by mail-lb0-f169.google.com with SMTP id o14so1498392lbi.28
 for <barebox@lists.infradead.org>; Sat, 26 Oct 2013 02:08:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 26 Oct 2013 13:15:04 +0400
Message-Id: <1382778907-13328-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1382778907-13328-1-git-send-email-antonynpavlov@gmail.com>
References: <1382778907-13328-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/5] MIPS: qemu-malta: don't use BoardID address for
 executable code
To: barebox@lists.infradead.org

On MIPS Technologies boards 0x1fc00010 address
is reserved for BoardID. The hardware or emulator
intercepts accesses to this address and we can't use
this address for storing code.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/qemu-malta/include/board/board_pbl_start.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
index bcd9789..a5f29e5 100644
--- a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
+++ b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
@@ -24,6 +24,18 @@
 	.set	push
 	.set	noreorder
 
+	b	__start
+	 nop
+
+	/*
+	   On MIPS Technologies boards
+	   0x1fc00010 address is reserved for BoardID
+	*/
+	.org	0x10
+	.word	0xffffffff
+	.word	0xffffffff
+
+__start:
 	mips_disable_interrupts
 
 	/* cpu specific setup ... */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
