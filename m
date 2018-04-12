Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6jw8-0008Da-I7
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 21:39:21 +0000
Received: by mail-pf0-x242.google.com with SMTP id o16so4883106pfk.9
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2018 14:39:10 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 12 Apr 2018 14:38:59 -0700
Message-Id: <20180412213859.13742-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] gitignore: Add *.pblx files
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

Looks like *.pblx was accidentally dropped from ignored files list and
now my "git status" is clobbered by every *.pblx image that is being
built (that's quite a lot for imx_v7_defconfig). Re-add original rule
to prevent that.

Fixes eed8a41c5 ("gitignore: ignore pblx.simximg files")

Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 images/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/images/.gitignore b/images/.gitignore
index cce975f29..d6e85fa85 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -1,5 +1,6 @@
 *.pbl
 *.pblx.*
+*.pblx
 *.pblb
 *.img
 *.imximg
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
