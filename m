Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1diHAf-0005vs-NQ
 for barebox@lists.infradead.org; Thu, 17 Aug 2017 09:32:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1diHAH-0006RJ-Lt
 for barebox@lists.infradead.org; Thu, 17 Aug 2017 11:32:33 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1diHAH-0000HE-ES
 for barebox@lists.infradead.org; Thu, 17 Aug 2017 11:32:33 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Thu, 17 Aug 2017 11:32:33 +0200
Message-Id: <20170817093233.979-2-jbe@pengutronix.de>
In-Reply-To: <20170817093233.979-1-jbe@pengutronix.de>
References: <20170817093233.979-1-jbe@pengutronix.de>
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
Subject: [PATCH 2/2] state: don't use uninitialized variable
To: barebox@lists.infradead.org

Printing 'ret' makes no sense.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 common/state/backend_storage.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 825db824b..c6ebe8624 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -214,7 +214,7 @@ static int mtd_get_meminfo(const char *path, struct mtd_info_user *meminfo)
 
 	fd = open(path, O_RDONLY);
 	if (fd < 0) {
-		pr_err("Failed to open '%s', %d\n", path, ret);
+		pr_err("Failed to open '%s', %d\n", path, fd);
 		return fd;
 	}
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
