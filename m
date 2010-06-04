Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKTcP-00034q-32
	for barebox@lists.infradead.org; Fri, 04 Jun 2010 09:55:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Jun 2010 11:54:59 +0200
Message-Id: <1275645309-9756-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
References: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/13] remove unused sntp.h
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/sntp.h |   61 ------------------------------------------------------------
 1 files changed, 0 insertions(+), 61 deletions(-)
 delete mode 100644 net/sntp.h

diff --git a/net/sntp.h b/net/sntp.h
deleted file mode 100644
index 8a097bf..0000000
--- a/net/sntp.h
+++ /dev/null
@@ -1,61 +0,0 @@
-/*
- * (C) Masami Komiya <mkomiya@sonare.it> 2005
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2, or (at
- * your option) any later version.
- */
-
-#ifndef __SNTP_H__
-#define __SNTP_H__
-
-#define NTP_SERVICE_PORT	123
-#define SNTP_PACKET_LEN		48
-
-
-/* Leap Indicator */
-#define NTP_LI_NOLEAP		0x0
-#define NTP_LI_61SECS		0x1
-#define NTP_LI_59SECS		0x2
-#define NTP_LI_ALARM		0x3
-
-/* Version */
-
-#define NTP_VERSION		4
-
-/* Mode */
-#define NTP_MODE_RESERVED	0
-#define NTP_MODE_SYMACTIVE	1	/* Symmetric Active */
-#define NTP_MODE_SYMPASSIVE	2	/* Symmetric Passive */
-#define NTP_MODE_CLIENT		3
-#define NTP_MODE_SERVER		4
-#define NTP_MODE_BROADCAST	5
-#define NTP_MODE_NTPCTRL	6	/* Reserved for NTP control message */
-#define NTP_MODE_PRIVATE	7	/* Reserved for private use */
-
-struct sntp_pkt_t {
-#if __LITTLE_ENDIAN
-	uchar mode:3;
-	uchar vn:3;
-	uchar li:2;
-#else
-	uchar li:2;
-	uchar vn:3;
-	uchar mode:3;
-#endif
-	uchar stratum;
-	uchar poll;
-	uchar precision;
-	uint root_delay;
-	uint root_dispersion;
-	uint reference_id;
-	unsigned long long reference_timestamp;
-	unsigned long long originate_timestamp;
-	unsigned long long receive_timestamp;
-	unsigned long long transmit_timestamp;
-};
-
-extern void	SntpStart (void);	/* Begin SNTP */
-
-#endif /* __SNTP_H__ */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
