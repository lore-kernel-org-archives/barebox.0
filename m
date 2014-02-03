Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAOc6-0005By-4T
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 18:51:23 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon,  3 Feb 2014 22:50:50 +0400
Message-Id: <1391453450-20873-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1391453450-20873-1-git-send-email-shc_work@mail.ru>
References: <1391453450-20873-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] scripts/kwbimage: Fix resource leak in
 image_create_payload()
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 scripts/kwbimage.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index c085d4d..f8abeb1 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -701,18 +701,18 @@ static int image_create_payload(void *payload_start, size_t payloadsz,
 	if (ret < 0) {
 		fprintf(stderr, "Cannot stat payload file %s\n",
 			payload_filename);
+		fclose(payload);
 		return ret;
 	}
 
 	ret = fread(payload_start, s.st_size, 1, payload);
+	fclose(payload);
 	if (ret != 1) {
 		fprintf(stderr, "Cannot read payload file %s\n",
 			payload_filename);
 		return -1;
 	}
 
-	fclose(payload);
-
 	*payload_checksum = image_checksum32(payload_start, payloadsz);
 	return 0;
 }
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
