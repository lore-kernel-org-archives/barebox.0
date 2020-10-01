Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNtcQ-00078D-U1
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 08:07:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Oct 2020 10:07:08 +0200
Message-Id: <20201001080708.636-3-s.hauer@pengutronix.de>
In-Reply-To: <20201001080708.636-1-s.hauer@pengutronix.de>
References: <20201001080708.636-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] magicvar: retire BAREBOX_MAGICVAR_NAMED
To: Barebox List <barebox@lists.infradead.org>

BAREBOX_MAGICVAR_NAMED is no longer used, drop it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/magicvar.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/magicvar.h b/include/magicvar.h
index bad9b0dee5..4ef3d81682 100644
--- a/include/magicvar.h
+++ b/include/magicvar.h
@@ -26,13 +26,9 @@ static const struct magicvar _name							\
 	.description = MAGICVAR_DESCRIPTION(_description),	\
 };
 
-#define BAREBOX_MAGICVAR_NAMED(_name, _varname, _description)			\
-	__BAREBOX_MAGICVAR_NAMED(__barebox_magicvar_##_name, _varname, _description)
-
 #define BAREBOX_MAGICVAR(_name, _description)			\
 	__BAREBOX_MAGICVAR_NAMED(__UNIQUE_ID(magicvar), _name, _description)
 #else
-#define BAREBOX_MAGICVAR_NAMED(_name, _varname, _description)
 #define BAREBOX_MAGICVAR(_name, _description)
 #endif
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
