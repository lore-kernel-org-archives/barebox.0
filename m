Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGV5-0008HB-FA
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 10:42:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ieGV2-00024y-Rl
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 11:42:44 +0100
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ieGV2-0005wz-JJ
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 11:42:44 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  9 Dec 2019 11:42:35 +0100
Message-Id: <20191209104238.31161-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 1/4] imd: replace magicvalue with sizeof(struct)
To: Barebox List <barebox@lists.infradead.org>

Instead of using "8" as the size of an imd_header, use the sizeof operator.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/imd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/imd.c b/common/imd.c
index 913a01de87bf..e0dab69644c0 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -41,7 +41,7 @@ const struct imd_header *imd_next(const struct imd_header *imd)
 
 	length = imd_read_length(imd);
 	length = ALIGN(length, 4);
-	length += 8;
+	length += sizeof(struct imd_header);
 
 	return (const void *)imd + length;
 }
@@ -63,14 +63,14 @@ static int imd_next_validate(const void *buf, int bufsize, int start_ofs)
 
 	size = bufsize - start_ofs;
 
-	if (size < 8) {
+	if (size < sizeof(struct imd_header)) {
 		debug("trunkated tag at offset %dd\n", start_ofs);
 		return -EINVAL;
 	}
 
 	length = imd_read_length(imd);
 	length = ALIGN(length, 4);
-	length += 8;
+	length += sizeof(struct imd_header);
 
 	if (size < length) {
 		debug("tag at offset %d with size %d exceeds bufsize %d\n",
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
