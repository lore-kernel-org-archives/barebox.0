Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWZu-000474-Ft
 for barebox@lists.infradead.org; Mon, 04 May 2020 08:35:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1jVWZr-0002zk-1u
 for barebox@lists.infradead.org; Mon, 04 May 2020 10:35:51 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1jVWZq-0001FV-OZ
 for barebox@lists.infradead.org; Mon, 04 May 2020 10:35:50 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  4 May 2020 10:35:42 +0200
Message-Id: <20200504083542.4095-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20200504083542.4095-1-s.trumtrar@pengutronix.de>
References: <20200504083542.4095-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] common: imd: handle error in imd_write_crc32
To: Barebox List <barebox@lists.infradead.org>

Don't just ignore the return value of write_file.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/imd.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/common/imd.c b/common/imd.c
index 526308effa3c..5544a0131cc9 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -370,6 +370,7 @@ static int imd_write_crc32(void *buf, const struct imd_header *imd_start,
 		return -ENODATA;
 	} else {
 		uint32_t *p = (uint32_t *)(imd_crc + 1);
+		int ret;
 
 		if (*p != crc) {
 			uint32_t *flags = imd_crc32_flags(imd_crc);
@@ -377,7 +378,11 @@ static int imd_write_crc32(void *buf, const struct imd_header *imd_start,
 			debug("Update crc token from 0x%08x to 0x%08x (flags 0x%08x)\n", *p, crc, *flags);
 			*p = crc;
 
-			write_file(filename, buf, size);
+			ret = write_file(filename, buf, size);
+			if (ret < 0) {
+				eprintf("CRC: write crc token to %s failed: %d\n", filename, ret);
+				return ret;
+			}
 		}
 	}
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
