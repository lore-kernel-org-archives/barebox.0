Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCOA-0001n8-Fo
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-00021z-MK
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003Cw-Qs
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:31 +0200
Message-Id: <20190527095744.5923-6-a.fatoum@pengutronix.de>
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/18] scripts: compiler.h: don't include <stdint.h> twice
To: barebox@lists.infradead.org

We already include it a few lines further down, so drop it at this
location.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/compiler.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/scripts/compiler.h b/scripts/compiler.h
index 4cf179bb9b13..bd73c7a9a8d3 100644
--- a/scripts/compiler.h
+++ b/scripts/compiler.h
@@ -13,8 +13,6 @@
     defined(__sun__)	 || \
     defined(__APPLE__)
 # include <inttypes.h>
-#elif defined(__linux__) || defined(__WIN32__) || defined(__MINGW32__)
-# include <stdint.h>
 #endif
 
 #include <errno.h>
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
