Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cJGoA-00028D-69
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 09:34:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cJGnk-00039l-U7
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 10:33:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 20 Dec 2016 10:33:35 +0100
Message-Id: <20161220093340.14404-4-l.stach@pengutronix.de>
In-Reply-To: <20161220093340.14404-1-l.stach@pengutronix.de>
References: <20161220093340.14404-1-l.stach@pengutronix.de>
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
Subject: [PATCH 4/9] globalvar: select FNMATCH
To: barebox@lists.infradead.org

This is needed since support for wildcards has been introduced.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index 91c2cc4372ed..74e973999a3a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -161,6 +161,7 @@ config ENVIRONMENT_VARIABLES
 config GLOBALVAR
 	bool "global environment variables support"
 	default y if !SHELL_NONE
+	select FNMATCH
 	help
 	  Global environment variables begin with "global.". Unlike normal
 	  shell variables they have the same values in all contexts. Global
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
