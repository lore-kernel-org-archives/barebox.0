Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eecE2-0005ga-DK
 for barebox@lists.infradead.org; Thu, 25 Jan 2018 07:45:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Jan 2018 08:45:17 +0100
Message-Id: <20180125074520.10320-6-s.hauer@pengutronix.de>
In-Reply-To: <20180125074520.10320-1-s.hauer@pengutronix.de>
References: <20180125074520.10320-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] uimage: fix memory leak in error path
To: Barebox List <barebox@lists.infradead.org>

handle->name is dynamically allocated, so free it in the error path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: Stefan Lengfeld <contact@stefanchrist.eu>
---
 common/uimage.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/uimage.c b/common/uimage.c
index b6f0f109ca..e857c11d37 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -202,6 +202,8 @@ again:
 	return handle;
 err_out:
 	close(fd);
+
+	free(handle->name);
 	free(handle);
 	if (IS_BUILTIN(CONFIG_FS_TFTP) && !stat(uimage_tmp, &s))
 		unlink(uimage_tmp);
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
