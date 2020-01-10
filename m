Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipsgt-0001jB-H6
 for barebox@lists.infradead.org; Fri, 10 Jan 2020 11:43:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2020 12:42:55 +0100
Message-Id: <20200110114255.10260-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] images: gitignore more files
To: Barebox List <barebox@lists.infradead.org>

Layerscape generates .image files and mvebu generates .mvebu1img files.
git Ignore them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/.gitignore | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/images/.gitignore b/images/.gitignore
index b673c98194..2f8b87dcbd 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -28,3 +28,5 @@ barebox.sum
 *.pimximg
 *.psimximg
 *.zynqimg
+*.image
+*.mvebu1img
-- 
2.25.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
