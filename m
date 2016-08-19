Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baqAA-0001EF-2g
 for barebox@lists.infradead.org; Fri, 19 Aug 2016 20:13:14 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Fri, 19 Aug 2016 22:09:40 +0200
Message-Id: <1471637380-19119-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] Kconfig: defaultenv-2 select CMD_TEST
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

CMD_TEST is required for scripts in defaultenv-2, e.g. automount.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index 38225eb..397bcbe 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -844,6 +844,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	select CMD_BASENAME
 	select CMD_READLINK
 	select CMD_DIRNAME
+	select CMD_TEST
 	select NVVAR
 	select CMD_NV
 	select FLEXIBLE_BOOTARGS
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
