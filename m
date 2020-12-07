Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmCX6-00087e-TK
 for barebox@lists.infradead.org; Mon, 07 Dec 2020 09:10:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Dec 2020 10:10:09 +0100
Message-Id: <20201207091010.2759-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] imd command: Bail out when crc generation/check fails
To: Barebox List <barebox@lists.infradead.org>

Generating a IMD crc can fail, so bail out with an error when it fails.
Also, when checking a IMD crc the result should be told to the caller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imd.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/common/imd.c b/common/imd.c
index 4fd4431aa9..4aca8ea78f 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -489,10 +489,15 @@ int imd_command(int argc, char *argv[])
 		goto out;
 	}
 
-	if (checksum)
-		imd_write_crc32(buf, imd_start, filename, size);
-	if (verify)
-		imd_verify_crc32(buf, size);
+	if (checksum) {
+		ret = imd_write_crc32(buf, imd_start, filename, size);
+		goto out;
+	}
+
+	if (verify) {
+		ret = imd_verify_crc32(buf, size);
+		goto out;
+	}
 
 	if (type == IMD_TYPE_INVALID) {
 		imd_for_each(imd_start, imd) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
