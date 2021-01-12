Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzG7q-0001XU-On
 for barebox@lists.infradead.org; Tue, 12 Jan 2021 09:38:07 +0000
From: Steffen Trumtrar <str@pengutronix.de>
Date: Tue, 12 Jan 2021 10:38:01 +0100
Message-Id: <20210112093801.2632-1-str@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] imd: change disabled checksum tag info to debug
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

When the checksum tag is disabled the CRC is most likely invalid.
And if the checksum tag is disabled and the CRC is actually invalid the
user doesn't care for it anyway.

This information only confuses the user so make it a debug message.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/imd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/imd.c b/common/imd.c
index ef9eff876b..aff3b00b6b 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -406,7 +406,7 @@ int imd_verify_crc32(void *buf, size_t size)
 			       *p, crc);
 			return -EILSEQ;
 		} else if (*p != crc && !imd_crc32_is_valid(*flags)) {
-			printf("CRC: is invalid, but the checksum tag is not enabled\n");
+			debug("CRC: is invalid, but the checksum tag is not enabled\n");
 			return -EINVAL;
 		} else {
 			printf("CRC: valid\n");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
