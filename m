Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvh9x-0002VK-AS
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 11:32:33 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1gvh9p-00081l-P8
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 12:32:21 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Mon, 18 Feb 2019 12:32:17 +0100
Message-Id: <20190218113220.18649-6-tomaz.solc@tablix.org>
In-Reply-To: <20190218113220.18649-1-tomaz.solc@tablix.org>
References: <20190218113220.18649-1-tomaz.solc@tablix.org>
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
Subject: [PATCH v2 5/8] mci: bcm2835: use device_initcall(), not coredev.
To: barebox@lists.infradead.org

pinctrl driver needs to be initialized before mci driver on Raspberry Pi.
Otherwise the pinctrl device tree properties in the mci node are ignored.
pinctrl is initialized by coredevice_initcall(), so moving mci-bcm2835 to
device_initcall() ensures that it is initialized later.

There is no reason for mci-bcm2835 to use coredevice_initcall(). Other mci
drivers already use device_initcall().
---
 drivers/mci/mci-bcm2835.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 9438e66af..e7dbb4f1d 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -561,4 +561,4 @@ static int bcm2835_mci_add(void)
 {
 	return platform_driver_register(&bcm2835_mci_driver);
 }
-coredevice_initcall(bcm2835_mci_add);
+device_initcall(bcm2835_mci_add);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
