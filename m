Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bBJpZ-0001T8-Gd
 for barebox@lists.infradead.org; Fri, 10 Jun 2016 10:38:26 +0000
Received: by mail-lf0-x241.google.com with SMTP id u74so5731934lff.0
 for <barebox@lists.infradead.org>; Fri, 10 Jun 2016 03:38:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 10 Jun 2016 13:37:57 +0300
Message-Id: <1465555077-24572-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: dts: add generated files to clean rule
To: barebox@lists.infradead.org

This commit is based on Sascha's ARM commits:

    commit a9e7e68279de3aec38b038211a15a80cfc612c4e
    Author: Sascha Hauer <s.hauer@pengutronix.de>
    Date:   Fri Dec 11 08:02:02 2015 +0100

        ARM: dts: Add *.dtb.lzo to clean files

    commit f5b552f1fe02a0a39ae859dbc7e7facefe022e3a
    Author: Sascha Hauer <s.hauer@pengutronix.de>
    Date:   Fri May 9 09:11:49 2014 +0200

        ARM: dts: Add generated files to clean rule

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/dts/Makefile b/arch/mips/dts/Makefile
index 6d6c9a3..ddd9039 100644
--- a/arch/mips/dts/Makefile
+++ b/arch/mips/dts/Makefile
@@ -2,4 +2,4 @@
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 
-clean-files := *.dtb *.dtb.S
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
