Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXKZw-0004Zz-O5
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 06:34:38 +0000
Received: by mail-lj1-x242.google.com with SMTP id l15-v6so739421lja.9
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 22:34:26 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 13 Dec 2018 09:34:08 +0300
Message-Id: <20181213063408.18849-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] scripts/mkcompile_h: Remove trailing spaces from compiler
 version
To: barebox@lists.infradead.org

This is an adoption of the linux kernel commit

| commit adcc3f7cee29eb831f79f4ac7ba6a0fbce7ac936
| Author: Jonathan Liu <net147@gmail.com>
| Date:   Mon Jun 12 18:23:17 2017 +1000
|
|    scripts/mkcompile_h: Remove trailing spaces from compiler version
|
|    Improves the output of "cat /proc/version" by getting rid of the
|    trailing space at the end of the compiler version when the kernel
|    is compiled using GCC.
|
|    Signed-off-by: Jonathan Liu <net147@gmail.com>
|    Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/mkcompile_h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
index 1a80ef7c70..60b20cafc6 100755
--- a/scripts/mkcompile_h
+++ b/scripts/mkcompile_h
@@ -72,7 +72,7 @@ UTS_TRUNCATE="cut -b -$UTS_LEN"
   echo \#define BAREBOX_COMPILE_BY \"`echo $BAREBOX_COMPILE_BY | $UTS_TRUNCATE`\"
   echo \#define BAREBOX_COMPILE_HOST \"`echo $BAREBOX_COMPILE_HOST | $UTS_TRUNCATE`\"
 
-  echo \#define BAREBOX_COMPILER \"`$CC -v 2>&1 | tail -n 1`\"
+  echo \#define BAREBOX_COMPILER \"`$CC -v 2>&1 | grep ' version ' | sed 's/[[:space:]]*$//'`\"
 ) > .tmpcompile
 
 # Only replace the real compile.h if the new one is different,
-- 
2.20.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
