Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss8sg-0001ZS-N8
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:48:15 +0000
Received: by lbbgg6 with SMTP id gg6so4936620lbb.36
 for <barebox@lists.infradead.org>; Fri, 20 Jul 2012 01:48:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 20 Jul 2012 12:47:33 +0400
Message-Id: <1342774059-2169-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1342774059-2169-1-git-send-email-antonynpavlov@gmail.com>
References: <1342774059-2169-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/7] MIPS: move start.S code to .text_entry section
To: barebox@lists.infradead.org

This commit make possible lowlevel initialisation code
in the text_bare_init section.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/start.S |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index dd302fc..10f7691 100644
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
