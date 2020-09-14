Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHlMx-0003xz-By
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 10:05:57 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 12:05:52 +0200
Message-Id: <20200914100553.24808-6-a.fatoum@pengutronix.de>
In-Reply-To: <20200914100553.24808-1-a.fatoum@pengutronix.de>
References: <20200914100553.24808-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master 6/7] fs: don't free device in remove callback
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The probe doesn't allocate the device, so remove shouldn't free it
either. This fixes a use-after-free on barebox shutdown:
Iterating over the list of devices requires that remove callbacks
don't remove the devices. This happened to work so far, because
apparently not much new allocations are going on during barebox
shutdown, but let's do it right.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 17f4aee80fd4..303b62ae1718 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -710,7 +710,6 @@ static void fs_remove(struct device_d *dev)
 	mntput(fsdev->vfsmount.parent);
 
 	free(fsdev->backingstore);
-	free(fsdev);
 }
 
 struct bus_type fs_bus = {
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
