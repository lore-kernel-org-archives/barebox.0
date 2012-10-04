Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.mail.ru ([94.100.176.131])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJkfw-00037X-8a
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 12:37:13 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu,  4 Oct 2012 16:37:00 +0400
Message-Id: <1349354221-28409-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1349354221-28409-1-git-send-email-shc_work@mail.ru>
References: <1349354221-28409-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] Add more generated files to .gitignore
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 .gitignore |   11 ++---------
 1 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/.gitignore b/.gitignore
index 4154c73..3fded4e 100644
--- a/.gitignore
+++ b/.gitignore
@@ -26,19 +26,11 @@
 #
 tags
 TAGS
+barebox*
 cross_arch
 cross_compile
-barebox
-barebox.S
-barebox.bin
-barebox.srec
-barebox.netx
-barebox.s5p
-barebox.ubl
-barebox.map
 System.map
 Module.symvers
-barebox_default_env*
 
 #
 # Generated include files
@@ -67,3 +59,4 @@ cscope.*
 scripts/gen_netx_image
 scripts/s5p_cksum
 scripts/bareboxenv-target
+scripts/kconfig/zconf.lex.c
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
