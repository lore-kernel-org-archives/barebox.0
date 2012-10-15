Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNYSZ-0004Cz-V6
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 00:23:10 +0000
Received: by mail-wi0-f171.google.com with SMTP id hj13so1055835wib.0
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 17:23:06 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 15 Oct 2012 02:22:38 +0200
Message-Id: <1350260560-15528-5-git-send-email-vicencb@gmail.com>
In-Reply-To: <1350260560-15528-1-git-send-email-vicencb@gmail.com>
References: <1350260560-15528-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 4/6] UIMAGE: improve transfer speed
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
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
1.7.12.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
