Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZefJ-0004ME-GC
 for barebox@lists.infradead.org; Sat, 17 Nov 2012 09:26:18 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so2524464lag.36
 for <barebox@lists.infradead.org>; Sat, 17 Nov 2012 01:26:16 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 17 Nov 2012 13:25:59 +0400
Message-Id: <1353144361-9089-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1353144361-9089-1-git-send-email-antonynpavlov@gmail.com>
References: <1353144361-9089-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] ARM: pbl: remove zbarebox.map during 'make clean'
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/pbl/Makefile |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 286f8b5..7faa51a 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -9,7 +9,7 @@ targets := zbarebox.lds zbarebox zbarebox.bin zbarebox.S \
 	   $(piggy_o) piggy.$(suffix_y)
 
 # Make sure files are removed during clean
-extra-y       += piggy.gzip piggy.lzo piggy.lzma piggy.xzkern
+extra-y       += piggy.gzip piggy.lzo piggy.lzma piggy.xzkern zbarebox.map
 
 $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
