Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSNds-0003Pj-6M
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 09:59:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Sep 2014 11:59:26 +0200
Message-Id: <1410515966-10029-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add some .gitignore files
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/boards/ipe337/.gitignore | 1 +
 arch/ppc/mach-mpc85xx/.gitignore       | 1 +
 scripts/.gitignore                     | 3 +++
 3 files changed, 5 insertions(+)
 create mode 100644 arch/blackfin/boards/ipe337/.gitignore
 create mode 100644 arch/ppc/mach-mpc85xx/.gitignore

diff --git a/arch/blackfin/boards/ipe337/.gitignore b/arch/blackfin/boards/ipe337/.gitignore
new file mode 100644
index 0000000..d116578
--- /dev/null
+++ b/arch/blackfin/boards/ipe337/.gitignore
@@ -0,0 +1 @@
+barebox.lds
diff --git a/arch/ppc/mach-mpc85xx/.gitignore b/arch/ppc/mach-mpc85xx/.gitignore
new file mode 100644
index 0000000..d116578
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/.gitignore
@@ -0,0 +1 @@
+barebox.lds
diff --git a/scripts/.gitignore b/scripts/.gitignore
index 1df04ba..555e6a9 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -19,3 +19,6 @@ bareboxenv-target
 kernel-install-target
 bareboxcrc32-target
 bareboximd-target
+bareboxstate
+bareboxstate-target
+mk-am35xx-spi-image
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
