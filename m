Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bw7zK-00011b-G3
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 13:30:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <mgr@pengutronix.de>) id 1bw7yx-00048o-9Y
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 15:29:35 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <mgr@pengutronix.de>) id 1bw7yx-0001VZ-2B
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 15:29:35 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 17 Oct 2016 15:29:21 +0200
Message-Id: <20161017132923.31834-3-m.grzeschik@pengutronix.de>
In-Reply-To: <20161017132923.31834-1-m.grzeschik@pengutronix.de>
References: <20161017132923.31834-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 2/4] cmdlinepart: add option to set DEVFS_PARTITION_IN_PT flag
To: barebox@lists.infradead.org

With this option it is possible to flag cdev partitions, which will also
be written to the partition table of its backing device.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 include/cmdlinepart.h | 1 +
 lib/cmdlinepart.c     | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/include/cmdlinepart.h b/include/cmdlinepart.h
index bf8cdfa..3363a74 100644
--- a/include/cmdlinepart.h
+++ b/include/cmdlinepart.h
@@ -2,6 +2,7 @@
 #define __CMD_LINE_PART_H
 
 #define CMDLINEPART_ADD_DEVNAME (1 << 0)
+#define CMDLINEPART_ADD_TO_PT (2 << 0)
 
 int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 				 const char **endp, loff_t *offset,
diff --git a/lib/cmdlinepart.c b/lib/cmdlinepart.c
index d7d4441..8633e82 100644
--- a/lib/cmdlinepart.c
+++ b/lib/cmdlinepart.c
@@ -81,6 +81,9 @@ int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 		end = (char *)(partstr + 2);
 	}
 
+	if (partition_flags & CMDLINEPART_ADD_TO_PT)
+		flags |= DEVFS_PARTITION_IN_PT;
+
 	if (endp)
 		*endp = end;
 
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
