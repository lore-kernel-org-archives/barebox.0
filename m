Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQvhZ-0003jF-1i
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 07:48:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Oct 2012 09:48:23 +0200
Message-Id: <1351064903-17330-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] defenv-2: set username to 'none'
To: barebox@lists.infradead.org

The current 'sha' setting, though admittedly very convenient for me,
was never intended to be in mainline.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv-2/base/init/general |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv-2/base/init/general b/defaultenv-2/base/init/general
index 98a92d1..1de06ce 100644
--- a/defaultenv-2/base/init/general
+++ b/defaultenv-2/base/init/general
@@ -6,7 +6,7 @@ if [ "$1" = menu ]; then
 fi
 
 # user (used for network filenames)
-global.user=sha
+global.user=none
 
 # timeout in seconds before the default boot entry is started
 global.autoboot_timeout=3
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
