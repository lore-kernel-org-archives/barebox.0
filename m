Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bar.sig21.net ([80.81.252.164])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ScIju-0006mS-NO
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 16:05:44 +0000
Received: from p5099b351.dip0.t-ipconnect.de ([80.153.179.81] helo=zzz.local)
 by bar.sig21.net with esmtpsa (TLS1.0:RSA_ARCFOUR_SHA1:16)
 (Exim 4.72) (envelope-from <js@sig21.net>) id 1ScIjO-00080T-8p
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 18:05:19 +0200
Received: from js by zzz.local with local (Exim 4.80)
 (envelope-from <js@sig21.net>) id 1ScIjN-00060M-Ob
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 18:05:09 +0200
From: Johannes Stezenbach <js@sig21.net>
Date: Wed,  6 Jun 2012 18:04:59 +0200
Message-Id: <1338998700-23012-5-git-send-email-js@sig21.net>
In-Reply-To: <1338998700-23012-1-git-send-email-js@sig21.net>
References: <1338998700-23012-1-git-send-email-js@sig21.net>
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
Subject: [PATCH 4/5] devfs: don't erase past the end of the partition
To: barebox@lists.infradead.org

"erase /dev/myflash0.mypart 0xf0000+0xf0000" could erase past
the end of the partition.

Signed-off-by: Johannes Stezenbach <js@sig21.net>
---
 fs/devfs.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/devfs.c b/fs/devfs.c
index e3a21ae..ae48451 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -73,6 +73,9 @@ static int devfs_erase(struct device_d *_dev, FILE *f, size_t count, unsigned lo
 	if (!cdev->ops->erase)
 		return -ENOSYS;
 
+	if (count + offset > cdev->size)
+		count = cdev->size - offset;
+
 	return cdev->ops->erase(cdev, count, offset + cdev->offset);
 }
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
