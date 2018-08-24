Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2Dy-0005NN-8I
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:24 +0000
Received: by mail-pl1-x634.google.com with SMTP id x6-v6so442960plv.10
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:10 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:21 -0700
Message-Id: <20180824025243.19479-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025243.19479-1-andrew.smirnov@gmail.com>
References: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 02/24] filetype: Add arch/ to include path
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add arch/ to include path for filetype.o so that it would be possible
to pull in various machine specific constants in.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Makefile b/common/Makefile
index b6284c255..13920cc5a 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -28,6 +28,7 @@ obj-$(CONFIG_DDR_SPD)		+= ddr_spd.o
 obj-$(CONFIG_ENV_HANDLING)	+= environment.o
 obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
 obj-$(CONFIG_FILETYPE)		+= filetype.o
+CFLAGS_filetype.o = -I$(srctree)/arch/
 obj-$(CONFIG_FLEXIBLE_BOOTARGS)	+= bootargs.o
 obj-$(CONFIG_GLOBALVAR)		+= globalvar.o
 obj-$(CONFIG_GREGORIAN_CALENDER) += date.o
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
