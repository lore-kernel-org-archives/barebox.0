Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN2Jo-00069w-LK
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 14:03:57 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so2305323wey.36
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 07:03:56 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Sat, 13 Oct 2012 16:03:26 +0200
Message-Id: <1350137007-10135-5-git-send-email-vicencb@gmail.com>
In-Reply-To: <1350137007-10135-1-git-send-email-vicencb@gmail.com>
References: <1350137007-10135-1-git-send-email-vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] uimage: improve transfer speed
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 common/uimage.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/uimage.c b/common/uimage.c
index c72db41..b58dff1 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -373,7 +373,7 @@ static int uimage_sdram_flush(void *buf, unsigned int len)
 	return len;
 }
 
-#define BUFSIZ	(PAGE_SIZE * 2)
+#define BUFSIZ	(PAGE_SIZE * 32)
 
 struct resource *file_to_sdram(const char *filename, unsigned long adr)
 {
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
