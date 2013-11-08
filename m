Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeqYm-00024A-1J
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 18:13:34 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Nov 2013 22:12:58 +0400
Message-Id: <1383934379-27100-7-git-send-email-shc_work@mail.ru>
In-Reply-To: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
References: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 5/6] gui: Fix signed/unsigned arguments for printf
To: barebox@lists.infradead.org

"%u" in format string requires a unsigned integer.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 lib/gui/png_pico.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/gui/png_pico.c b/lib/gui/png_pico.c
index 393a732..256db35 100644
--- a/lib/gui/png_pico.c
+++ b/lib/gui/png_pico.c
@@ -57,7 +57,7 @@ struct image *png_open(char *inbuf, int insize)
 	png_info = PNG_decode(inbuf, insize);
 
 	if(PNG_error) {
-		printf("error %u:\n", PNG_error);
+		printf("error %i:\n", PNG_error);
 		ret = -EINVAL;
 		goto err;
 	}
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
