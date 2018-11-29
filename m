Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXC-0003j5-Bp
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:13 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWz-0001xQ-8w
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:53 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0000B1-J7
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:47 +0100
Message-Id: <20181129113048.31857-15-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 14/15] scripts: link-barebox: thin archives use P option to ar
To: Barebox List <barebox@lists.infradead.org>

Based on linux v4.13 patch: 9a6cfca4f4130444cb02536a4fdf7b6e285c713e

    kbuild: thin archives use P option to ar

    The P option makes ar do full path name matching and can prevent ar
    from discarding files with duplicate names in some cases of creating
    thin archives from thin archives. The sh architecture in particular
    loses some object files from its kernel/cpu/sh*/ directories without
    this option.

    This could be a bug in binutils ar, but the P option should not cause
    any negative effects so it is safe to use to work around this with.

    Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
    Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 scripts/link-barebox.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/link-barebox.sh b/scripts/link-barebox.sh
index 9e2bc2afd04b..74516f65b74f 100755
--- a/scripts/link-barebox.sh
+++ b/scripts/link-barebox.sh
@@ -51,7 +51,7 @@ archive_builtin()
 	if [ -n "${CONFIG_THIN_ARCHIVES}" ]; then
 		info AR built-in.o
 		rm -f built-in.o;
-		${AR} rcsT built-in.o ${BAREBOX_COMMON}
+		${AR} rcsTP built-in.o ${BAREBOX_COMMON}
 	fi
 }
 
@@ -68,7 +68,7 @@ archive_builtin_pbl()
 	if [ -n "${CONFIG_THIN_ARCHIVES}" ] &&  [ -n "${CONFIG_PBL_IMAGE}" ]; then
 		info PBLAR built-in-pbl.o
 		rm -f built-in-pbl.o;
-		${AR} rcsT built-in-pbl.o ${BAREBOX_PBL_COMMON}
+		${AR} rcsTP built-in-pbl.o ${BAREBOX_PBL_COMMON}
 	fi
 }
 
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
