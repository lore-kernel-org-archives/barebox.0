Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STcXN-0001gY-Mt
 for barebox@lists.infradead.org; Sun, 13 May 2012 17:24:54 +0000
Received: by laap9 with SMTP id p9so3589184laa.36
 for <barebox@lists.infradead.org>; Sun, 13 May 2012 10:24:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 13 May 2012 21:24:42 +0400
Message-Id: <1336929884-19292-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1336929884-19292-1-git-send-email-antonynpavlov@gmail.com>
References: <1336929884-19292-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/3] MIPS: move start.S code to .text_entry section
To: barebox@lists.infradead.org

This commit make possible lowlevel initialisation code
in the text_bare_init section.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/start.S |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index e8868e1..6bf5baa 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -50,7 +50,7 @@ _pc:	addiu	\rd, ra, \label - _pc		# label is assumed to be
 
 	.set noreorder
 	.text
-	.section ".text_bare_init"
+	.section ".text_entry"
 	.align 4
 
 EXPORT(_start)
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
