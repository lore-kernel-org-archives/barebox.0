Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f174.google.com ([209.85.215.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TuRZH-0002NF-Jh
 for barebox@lists.infradead.org; Sun, 13 Jan 2013 17:42:01 +0000
Received: by mail-ea0-f174.google.com with SMTP id e13so1424145eaa.33
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2013 09:41:57 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 13 Jan 2013 18:42:16 +0100
Message-Id: <1358098943-18928-3-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
References: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/9] memory: fix size address calculation
To: barebox@lists.infradead.org
Cc: marc@cpdesign.com

Fix size address calculation.

Global variables from <asm/sections.h> which are defined
in linker script *.lds files for end addresses has already
a +1 calculation.

For example:
stext = 0x100 with a size about 0x50 will result a etext = 0x150.
In this case a correct size calculation is (etext - stext) = 0x50.

In function 'request_sdram_region' the end address will be
calculated with (start + size - 1) which result a correct
end address of 0x149 in this example.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 common/memory.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 2674002..7dd1384 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -74,11 +74,11 @@ static int mem_malloc_resource(void)
 	request_sdram_region("barebox",
 			(unsigned long)&_stext,
 			(unsigned long)&_etext -
-			(unsigned long)&_stext + 1);
+			(unsigned long)&_stext);
 	request_sdram_region("bss",
 			(unsigned long)&__bss_start,
 			(unsigned long)&__bss_stop -
-			(unsigned long)&__bss_start + 1);
+			(unsigned long)&__bss_start);
 #ifdef STACK_BASE
 	request_sdram_region("stack", STACK_BASE, STACK_SIZE);
 #endif
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
