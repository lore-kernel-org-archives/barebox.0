Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x230.google.com ([2607:f8b0:400e:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a5qcY-0003vm-V6
 for barebox@lists.infradead.org; Mon, 07 Dec 2015 07:54:08 +0000
Received: by pfbg73 with SMTP id g73so62517235pfb.1
 for <barebox@lists.infradead.org>; Sun, 06 Dec 2015 23:53:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  6 Dec 2015 23:52:37 -0800
Message-Id: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/7] imx: ocotp: Add code to initialize 'cdev->device_node'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In order for cdev_by_device_node() to be able to return approprate
character device for <&ocotp> phandle cdev->device_node needs to be
initialized with dev->device_node. This patche takes care of that

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/ocotp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index c99a003..6ff5ee4 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -426,6 +426,7 @@ static int imx_ocotp_probe(struct device_d *dev)
 	cdev->priv	= priv;
 	cdev->size	= 192;
 	cdev->name	= "imx-ocotp";
+	cdev->device_node = dev->device_node;

 	ret = devfs_create(cdev);

--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
