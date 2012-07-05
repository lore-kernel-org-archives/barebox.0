Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Smrra-0002DY-Rd
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:42 +0200
Message-Id: <1341517020-5581-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/30] fs nfs: depend on net
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/Kconfig |    1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/Kconfig b/fs/Kconfig
index 34fcdf3..b75820f 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -25,6 +25,7 @@ config FS_TFTP
 	depends on NET
 
 config FS_NFS
+	depends on NET
 	bool
 	prompt "nfs support"
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
