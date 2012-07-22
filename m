Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay01.ispgateway.de ([80.67.18.43])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ssw6G-0005pp-Gj
 for barebox@lists.infradead.org; Sun, 22 Jul 2012 13:21:36 +0000
Received: from [88.217.108.95] (helo=localhost)
 by smtprelay01.ispgateway.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.68) (envelope-from <bernhard@bwalle.de>) id 1Ssw69-0007rE-4L
 for barebox@lists.infradead.org; Sun, 22 Jul 2012 15:21:25 +0200
From: Bernhard Walle <bernhard@bwalle.de>
Date: Sun, 22 Jul 2012 15:21:20 +0200
Message-Id: <1342963280-4297-1-git-send-email-bernhard@bwalle.de>
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
Subject: [PATCH] lib/Kconfig: Fix alignment of arrows in label
To: barebox@lists.infradead.org

Signed-off-by: Bernhard Walle <bernhard@bwalle.de>
---
 lib/Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/Kconfig b/lib/Kconfig
index 3bcde5c..32634df 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -1,4 +1,4 @@
-menu "Library routines"
+menu "Library routines              "
 config PARAMETER
 	bool
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
