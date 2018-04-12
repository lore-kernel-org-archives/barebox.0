Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgg-0007ws-Ut
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:03 +0200
Message-Id: <20180412073017.6750-3-s.hauer@pengutronix.de>
In-Reply-To: <20180412073017.6750-1-s.hauer@pengutronix.de>
References: <20180412073017.6750-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/16] ARM: i.MX: phytec-som-imx: env: automount emmc if
 available
To: Barebox List <barebox@lists.infradead.org>
Cc: Matthias Rabe <matthias.rabe@sigma-chemnitz.de>

From: Matthias Rabe <matthias.rabe@sigma-chemnitz.de>

added automount configuration for emmc, if available.
needed f.e. by the android boot.

Signed-off-by: Matthias Rabe <matthias.rabe@sigma-chemnitz.de>
Tested-by: Wadim Egorov <w.egorov@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 .../arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
index 4b223d8037..fea64d627e 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
@@ -7,3 +7,8 @@ automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
 
 mkdir -p /mnt/mmc
 automount -d /mnt/mmc 'mmc2.probe=1 && [ -e /dev/mmc2.0 ] && mount /dev/mmc2.0 /mnt/mmc'
+
+if [ -e /dev/mmc3 ]; then
+  mkdir -p /mnt/mmc3
+  automount -d /mnt/mmc3 'mmc3.probe=1 && [ -e /dev/mmc3.0 ] && mount /dev/mmc3.0 /mnt/mmc3'
+fi
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
