Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYVW-0000KY-00
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 14:58:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1itYVT-0002mQ-3e
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 15:58:23 +0100
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1itYVS-0006Df-Rm
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 15:58:22 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 20 Jan 2020 15:58:19 +0100
Message-Id: <20200120145821.22899-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 1/3] imd: replace magicvalue with sizeof(struct)
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
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
