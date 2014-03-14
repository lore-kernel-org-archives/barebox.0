Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOP63-0006fO-Rb
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 10:12:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 11:11:48 +0100
Message-Id: <1394791908-22061-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] splash: Print error message when no renderer is found
To: barebox@lists.infradead.org

the splash command silently fails when no renderer is found for
an image type. Print an error message in this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/gui/image_renderer.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/gui/image_renderer.c b/lib/gui/image_renderer.c
index 78e5777..9c92983 100644
--- a/lib/gui/image_renderer.c
+++ b/lib/gui/image_renderer.c
@@ -23,6 +23,8 @@ static struct image_renderer *get_renderer(void* buf, size_t bufsize)
 			return ir;
 	}
 
+	printf("No renderer found for filetype %s\n", file_type_to_string(type));
+
 	return NULL;
 }
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
