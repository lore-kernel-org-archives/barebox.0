Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp36.i.mail.ru ([94.100.177.96])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYt2Z-00071i-Bx
 for barebox@lists.infradead.org; Sat, 12 Apr 2014 08:11:57 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 12 Apr 2014 12:10:55 +0400
Message-Id: <1397290265-21273-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
References: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 02/12] gui: Fix resource leak
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 lib/gui/picopng.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/gui/picopng.c b/lib/gui/picopng.c
index 77cd81c..e740b1c 100644
--- a/lib/gui/picopng.c
+++ b/lib/gui/picopng.c
@@ -761,9 +761,12 @@ int main(int argc, char **argv)
 	infp = fopen(fname, "rb");
 	if (!infp) {
 		perror("fopen");
+		free(inbuf);
 		return 1;
 	} else if (fread(inbuf, 1, insize, infp) != insize) {
 		perror("fread");
+		free(inbuf);
+		fclose(infp);
 		return 1;
 	}
 	fclose(infp);
@@ -793,6 +796,7 @@ int main(int argc, char **argv)
 		return 1;
 	} else if (fwrite(info->image->data, 1, outsize, outfp) != outsize) {
 		perror("fwrite");
+		fclose(outfp);
 		return 1;
 	}
 	fclose(outfp);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
