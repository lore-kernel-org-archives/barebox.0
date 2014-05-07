Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f47.google.com ([209.85.220.47])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wi915-0002VJ-Bf
 for barebox@lists.infradead.org; Wed, 07 May 2014 21:04:40 +0000
Received: by mail-pa0-f47.google.com with SMTP id fa1so1655647pad.34
 for <barebox@lists.infradead.org>; Wed, 07 May 2014 14:04:16 -0700 (PDT)
Received: from [172.16.16.185] ([184.71.143.130])
 by mx.google.com with ESMTPSA id hw8sm4824290pbc.62.2014.05.07.14.04.15
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Wed, 07 May 2014 14:04:15 -0700 (PDT)
Message-ID: <536A9FCE.5050900@exegin.com>
Date: Wed, 07 May 2014 14:04:14 -0700
From: Owen Kirby <osk@exegin.com>
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
Subject: [PATCH] Catch errors when mounting invalid cramfs partitions.
To: barebox@lists.infradead.org

From be93e50aafc81d7978a100234e9b3c380e5c65da Mon Sep 17 00:00:00 2001
From: Owen Kirby <osk@exegin.com>
Date: Wed, 7 May 2014 12:29:39 -0700
Subject: [PATCH]   Catch errors when mounting invalid cramfs partitions.

When barebox is attempting to mount a cramfs partition with a bad magic, the
device will report success, but becomes unresponsive when trying to do any
file operations. The problem is caused by a missed error in cramfs_probe().

Signed-off-by: Owen Kirby <osk@exegin.com>
---
 fs/cramfs/cramfs.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 8218fcf..75ff797 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -438,6 +438,7 @@ static int cramfs_probe(struct device_d *dev)
 	if (cramfs_read_super(priv)) {
 		dev_info(dev, "no valid cramfs found\n");
 		ret =  -EINVAL;
+		goto err_out;
 	}
 
 	priv->curr_base = -1;
-- 
1.7.9.5



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
