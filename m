Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22d.google.com ([2a00:1450:4013:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgL2h-000331-9z
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 20:58:36 +0000
Received: by mail-ea0-f173.google.com with SMTP id g10so3855107eak.32
 for <barebox@lists.infradead.org>; Tue, 12 Nov 2013 12:58:12 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 12 Nov 2013 21:58:04 +0100
Message-Id: <1384289884-8832-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1384289884-8832-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1384289884-8832-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/2] scripts: kwbimage: fix mis-sized payload
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Image payload size should always be a multiple of 4 bytes. This fixes
mis-sized image payload by allocating payload buffer as multiple of 4
but load true filesize into the payload buffer.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 scripts/kwbimage.c |   16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index 4ebb07f..82cf21c 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -685,6 +685,7 @@ static int image_create_payload(void *payload_start, size_t payloadsz,
 				const char *payload_filename)
 {
 	FILE *payload;
+	struct stat s;
 	uint32_t *payload_checksum =
 		(uint32_t *) (payload_start + payloadsz);
 	int ret;
@@ -696,7 +697,14 @@ static int image_create_payload(void *payload_start, size_t payloadsz,
 		return -1;
 	}
 
-	ret = fread(payload_start, payloadsz, 1, payload);
+	ret = stat(payload_filename, &s);
+	if (ret < 0) {
+		fprintf(stderr, "Cannot stat payload file %s\n",
+			payload_filename);
+		return ret;
+	}
+
+	ret = fread(payload_start, s.st_size, 1, payload);
 	if (ret != 1) {
 		fprintf(stderr, "Cannot read payload file %s\n",
 			payload_filename);
@@ -747,7 +755,8 @@ static void *image_create_v0(struct image_cfg_element *image_cfg,
 			return NULL;
 		}
 
-		payloadsz = s.st_size;
+		/* payload size must be multiple of 32b */
+		payloadsz = 4 * ((s.st_size + 3)/4);
 	}
 
 	/* Headers, payload and 32-bits checksum */
@@ -875,7 +884,8 @@ static void *image_create_v1(struct image_cfg_element *image_cfg,
 			return NULL;
 		}
 
-		payloadsz = s.st_size;
+		/* payload size must be multiple of 32b */
+		payloadsz = 4 * ((s.st_size + 3)/4);
 	}
 
 	/* The payload should be aligned on some reasonable
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
