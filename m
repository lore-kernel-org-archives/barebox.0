Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6KL8-00014D-OB
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 13:29:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Jan 2014 14:28:36 +0100
Message-Id: <1390483717-7722-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1390483717-7722-1-git-send-email-s.hauer@pengutronix.de>
References: <1390483717-7722-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] environment: Fix wrong Kconfig dependency
To: barebox@lists.infradead.org

DEFAULT_ENVIRONMENT needs ENV_HANDLING, not CMD_LOADENV.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index ce426f2..8af7ec1 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -529,7 +529,7 @@ source common/partitions/Kconfig
 config DEFAULT_ENVIRONMENT
 	bool
 	default y
-	select CMD_LOADENV
+	select ENV_HANDLING
 	prompt "Compile in default environment"
 	help
 	  Enabling this option will give you a default environment when
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
