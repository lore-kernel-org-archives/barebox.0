Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x229.google.com ([2607:f8b0:400e:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZ6t7-0003gh-43
 for barebox@lists.infradead.org; Sat, 30 Jun 2018 03:49:37 +0000
Received: by mail-pg0-x229.google.com with SMTP id c9-v6so4779097pgf.5
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 20:49:18 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Jun 2018 20:49:00 -0700
Message-Id: <20180630034900.3324-12-andrew.smirnov@gmail.com>
In-Reply-To: <20180630034900.3324-1-andrew.smirnov@gmail.com>
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/11] firmware: Fix copy-paste comment mistake
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 firmware/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 62124933d..7f4dc4932 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -57,6 +57,6 @@ endif
 targets := $(patsubst $(obj)/%,%, \
                                 $(shell find $(obj) -name \*.gen.S 2>/dev/null))
 
-# just to build a built-in.o. Otherwise compilation fails when no devicetree is
-# created.
+# just to build a built-in.o. Otherwise compilation fails when no
+# firmware is built.
 obj- += dummy.o
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
