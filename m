Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWm4N-0008GI-NU
 for barebox@lists.infradead.org; Mon, 18 Nov 2019 18:48:16 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 18 Nov 2019 19:48:07 +0100
Message-Id: <20191118184809.27173-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 0/2] ARM: zynqmp: defconfig fixes
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Hi,

This series fixes the defconfig for the ZynqMP. The defconfig was missing the
macb driver and has the wrong config item for the FPGA loader.

Michael

Michael Tretter (2):
  ARM: zynqmp: defconfig: fix FIRMWARE_ZYNQMP_FPGA
  ARM: zynqmp: defconfig: reenable DRIVER_NET_MACB

 arch/arm/configs/zynqmp_defconfig | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
