Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RQbjV-0005mR-JO
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 09:24:41 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RQbjM-00034w-Le
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 10:24:32 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RQbjM-0006Xv-HM
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 10:24:32 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Nov 2011 10:24:21 +0100
Message-Id: <1321435467-19148-8-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1321435467-19148-1-git-send-email-jbe@pengutronix.de>
References: <1321435467-19148-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 07/13] ATA/DISK: Share important constants and structures
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 include/disks.h |   39 +++++++++++++++++++++++++++++++++++++++
 1 files changed, 39 insertions(+), 0 deletions(-)
 create mode 100644 include/disks.h

diff --git a/include/disks.h b/include/disks.h
new file mode 100644
index 0000000..ec136d4
--- /dev/null
+++ b/include/disks.h
@@ -0,0 +1,39 @@
+/*
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef DISKS_H
+#define DISKS_H
+
+struct block_device;
+
+/** Size of one sector in bytes */
+#define SECTOR_SIZE 512
+
+/** Size of one sector in bit shift */
+#define SECTOR_SHIFT 9
+
+/**
+ * Description of one partition table entry (D*S type)
+ */
+struct partition_entry {
+	uint8_t boot_indicator;	/*! Maybe marked as an active partition */
+	uint8_t chs_begin[3];	/*! Start of the partition in cylinders, heads and sectors */
+	uint8_t type;		/*! Filesystem type */
+	uint8_t chs_end[3];	/*! End of the partition in cylinders, heads and sectors */
+	uint32_t partition_start; /*! Start of the partition in LBA notation */
+	uint32_t partition_size; /*! Start of the partition in LBA notation */
+} __attribute__ ((packed));
+
+#endif /* DISKS_H */
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
