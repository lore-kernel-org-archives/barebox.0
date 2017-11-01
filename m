Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e9nRp-00047J-KZ
 for barebox@lists.infradead.org; Wed, 01 Nov 2017 07:28:27 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Wed,  1 Nov 2017 08:27:08 +0100
Message-Id: <20171101072710.31518-5-ejo@pengutronix.de>
In-Reply-To: <20171101072710.31518-1-ejo@pengutronix.de>
References: <20171101072710.31518-1-ejo@pengutronix.de>
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
Subject: [PATCH 4/6] common: globvar: let nvvar_remove() report non-existing
 variable
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

The former implementation did not allow to detect whether the call to
nvvar_remove() succeeded or failed and always returned 0.

This changes the implementation to return 0 only if a variable with the
given name was found and return ENOENT otherwise.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 common/globalvar.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index fdfaf76fae..ee756e5140 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -261,9 +261,11 @@ int nvvar_remove(const char *name)
 
 		unlink(fname);
 		free(fname);
+
+		return 0;
 	}
 
-	return 0;
+	return -ENOENT;
 }
 
 int nvvar_load(void)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
