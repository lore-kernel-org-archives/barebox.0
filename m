Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9FJ1-0003YS-Ea
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:42 +0200
Message-Id: <1405955687-27433-19-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
References: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/23] Add release string
To: barebox@lists.infradead.org

Currently we only have version_string which contains information
about the date the binary was compiled and by whom it has been
compiled. This adds a release_string which only contains the
plain release version.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/version.c | 4 ++++
 include/common.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/common/version.c b/common/version.c
index 79b2a54..51d4d48 100644
--- a/common/version.c
+++ b/common/version.c
@@ -6,6 +6,10 @@ const char version_string[] =
 	"barebox " UTS_RELEASE " " UTS_VERSION "\n";
 EXPORT_SYMBOL(version_string);
 
+const char release_string[] =
+	"barebox-" UTS_RELEASE;
+EXPORT_SYMBOL(release_string);
+
 void barebox_banner (void)
 {
 	pr_info("\n\n%s\n\n", version_string);
diff --git a/include/common.h b/include/common.h
index e7ab5fe..ca817aa 100644
--- a/include/common.h
+++ b/include/common.h
@@ -259,6 +259,7 @@ int open_and_lseek(const char *filename, int mode, loff_t pos);
 #define RW_BUF_SIZE	(unsigned)4096
 
 extern const char version_string[];
+extern const char release_string[];
 #ifdef CONFIG_BANNER
 void barebox_banner(void);
 #else
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
