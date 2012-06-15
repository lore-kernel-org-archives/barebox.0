Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SfTS8-0001XZ-Ex
 for barebox@lists.infradead.org; Fri, 15 Jun 2012 10:08:29 +0000
Received: by werc12 with SMTP id c12so2181334wer.36
 for <barebox@lists.infradead.org>; Fri, 15 Jun 2012 03:08:26 -0700 (PDT)
From: Roberto Nibali <rnibali@gmail.com>
Date: Fri, 15 Jun 2012 12:08:15 +0200
Message-Id: <1339754895-5129-3-git-send-email-rnibali@gmail.com>
In-Reply-To: <1339754895-5129-1-git-send-email-rnibali@gmail.com>
References: <1339754895-5129-1-git-send-email-rnibali@gmail.com>
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
Subject: [PATCH 2/2] Deal properly with scripts/bareboxenv-target
To: barebox@lists.infradead.org

The bareboxenv-target binary is automatically created but never
deleted nor is it excluded from git tracking. This patch remedies
the situation by adding scripts/bareboxenv-target to .gitignnore
and adjusting the list of to be deleted files of the 'clean' target
in the core Makefile.

Signed-off-by: Roberto Nibali <rnibali@gmail.com>
---
 .gitignore |    1 +
 Makefile   |    1 +
 2 files changed, 2 insertions(+)

diff --git a/.gitignore b/.gitignore
index df0ed2c..fd429fa 100644
--- a/.gitignore
+++ b/.gitignore
@@ -65,3 +65,4 @@ cscope.*
 *.patch
 scripts/gen_netx_image
 scripts/s5p_cksum
+scripts/bareboxenv-target
diff --git a/Makefile b/Makefile
index 9294049..3756eac 100644
--- a/Makefile
+++ b/Makefile
@@ -1003,6 +1003,7 @@ CLEAN_DIRS  += $(MODVERDIR)
 CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
 		.tmp_kallsyms* barebox_default_env* barebox.ldr \
+		scripts/bareboxenv-target \
 		Doxyfile.version barebox.srec barebox.s5p
 
 # Directories & files removed with 'make mrproper'
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
