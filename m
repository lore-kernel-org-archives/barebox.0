Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TW0ux-0006Hz-9Q
 for barebox@lists.infradead.org; Wed, 07 Nov 2012 08:23:25 +0000
Received: by mail-la0-f49.google.com with SMTP id z14so952974lag.36
 for <barebox@lists.infradead.org>; Wed, 07 Nov 2012 00:23:21 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  7 Nov 2012 12:23:05 +0400
Message-Id: <1352276585-20262-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] make new y-modem (PATCH v2) work on big-endian CPU
To: barebox@lists.infradead.org

apply this commit after that one:

    Author: Robert Jarzmik <robert.jarzmik@free.fr>
    Date:   Sun Nov 4 18:55:23 2012 +0100

        commands: change Y-Modem implementation
---
 lib/xymodem.c |   13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/lib/xymodem.c b/lib/xymodem.c
index 1469a9a..0e82ce2 100644
--- a/lib/xymodem.c
+++ b/lib/xymodem.c
@@ -257,8 +257,8 @@ static ssize_t xy_read_block(struct xyz_ctxt *proto, struct xy_block *blk,
 	uint64_t timeout)
 {
 	ssize_t rc, data_len = 0;
-	unsigned char hdr, seqs[2], crcs[2];
-	int crc = 0, hdr_found = 0;
+	unsigned char hdr, seqs[2];
+	uint16_t crc = 0, hdr_found = 0;
 	uint64_t start = get_time_ns();
 
 	while (!hdr_found) {
@@ -308,12 +308,13 @@ static ssize_t xy_read_block(struct xyz_ctxt *proto, struct xy_block *blk,
 
 	switch (proto->crc_mode) {
 	case CRC_ADD8:
-		rc = xy_gets(proto->cdev, proto->fifo, crcs, 1, timeout);
-		crc = crcs[0];
+		rc = xy_gets(proto->cdev, proto->fifo,
+				(unsigned char *)&crc, 1, timeout);
 		break;
 	case CRC_CRC16:
-		rc = xy_gets(proto->cdev, proto->fifo, crcs, 2, timeout);
-		crc = be16_to_cpu(*(uint16_t *)crcs);
+		rc = xy_gets(proto->cdev, proto->fifo,
+				(unsigned char *)&crc, 2, timeout);
+		crc = be16_to_cpu(crc);
 		break;
 	case CRC_NONE:
 		rc = 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
