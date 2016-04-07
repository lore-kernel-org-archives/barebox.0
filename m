Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ao4kX-0007Az-0S
 for barebox@lists.infradead.org; Thu, 07 Apr 2016 07:53:09 +0000
Received: by mail-lb0-x235.google.com with SMTP id u8so44634065lbk.0
 for <barebox@lists.infradead.org>; Thu, 07 Apr 2016 00:52:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  7 Apr 2016 10:52:37 +0300
Message-Id: <1460015557-18347-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] common: add dependency !SANDBOX on imd target tool
To: barebox@lists.infradead.org

The build of bareboximd-target tool fails on sandbox architecture:

      CC      scripts/bareboximd-target
    /tmp/ccoGPulo.o: In function `imd_concat_strings':
    scripts/../common/imd.c:216: undefined reference to `barebox_malloc'
    /tmp/ccoGPulo.o: In function `read_file_2':
    scripts/bareboximd.c:68: undefined reference to `barebox_open'
    scripts/bareboximd.c:74: undefined reference to `barebox_lseek'
    scripts/bareboximd.c:84: undefined reference to `barebox_lseek'
    scripts/bareboximd.c:90: undefined reference to `barebox_malloc'
    scripts/bareboximd.c:99: undefined reference to `barebox_read'
    scripts/bareboximd.c:119: undefined reference to `barebox_free'
    scripts/bareboximd.c:121: undefined reference to `barebox_close'
    /tmp/ccoGPulo.o: In function `imd_command':
    scripts/../common/imd.c:292: undefined reference to `barebox_printf'
    scripts/../common/imd.c:319: undefined reference to `barebox_printf'
    scripts/../common/imd.c:322: undefined reference to `barebox_free'
    scripts/../common/imd.c:324: undefined reference to `barebox_printf'
    /tmp/ccoGPulo.o: In function `usage':
    scripts/bareboximd.c:134: undefined reference to `barebox_printf'
    collect2: error: ld returned 1 exit status
    scripts/Makefile:58: recipe for target 'scripts/bareboximd-target' failed

See also

    commit d4aa01503348a033b1057d8a66c20a4f5819e01f
    Author: Alexander Aring <alex.aring@gmail.com>
    Date:   Tue Nov 19 02:08:13 2013 +0100

        common: add dependency !SANDBOX on target tools

        The build of target tools fails on sandbox architecture.
        We don't need any target tools in this case, so add a dependency.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Alexander Aring <alex.aring@gmail.com>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index 3b87a3c..7c09e8c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -542,6 +542,7 @@ config IMD
 config IMD_TARGET
 	bool "build bareboximd target tool"
 	depends on IMD
+	depends on !SANDBOX
 
 config KERNEL_INSTALL_TARGET
 	bool
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
