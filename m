Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF6Tm-0000eS-GT
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 00:57:27 +0000
Received: by mail-pf1-x443.google.com with SMTP id q5so6637379pfg.13
 for <barebox@lists.infradead.org>; Mon, 30 Sep 2019 17:57:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 30 Sep 2019 17:57:18 -0700
Message-Id: <20191001005718.27165-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] version_string: Add toolchain and build host info
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Linux kernel reports the version of toolchain it was built with as a
part of its version string, which can be extremely useful when
debugging toolchain related issues. Make Barebox version string, mimic
that of Linux to get the same level of information in Barebox.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/version.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/version.c b/common/version.c
index 8b1fd4dbe7..5f57022dac 100644
--- a/common/version.c
+++ b/common/version.c
@@ -3,7 +3,8 @@
 #include <generated/utsrelease.h>
 
 const char version_string[] =
-	"barebox " UTS_RELEASE " " UTS_VERSION "\n";
+	"barebox " UTS_RELEASE " (" BAREBOX_COMPILE_BY "@"
+	BAREBOX_COMPILE_HOST ") (" BAREBOX_COMPILER ") " UTS_VERSION "\n";
 EXPORT_SYMBOL(version_string);
 
 const char release_string[] =
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
