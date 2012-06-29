Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkWHt-0000c2-2d
 for barebox@lists.infradead.org; Fri, 29 Jun 2012 08:10:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jun 2012 10:09:59 +0200
Message-Id: <1340957401-6242-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] arm defconfig binary size reduction
To: barebox@lists.infradead.org

With 64bit file support some defconfig builds are getting bigger than
their specififed maximum size of 256Kb. Use the tlsf allocator for
them which is smaller in binary size

----------------------------------------------------------------
Sascha Hauer (2):
      ARM defconfigs: Use TLSF malloc on defconfigs getting too big
      ARM at91sam9m10g45ek: Enable lzo decompression

 arch/arm/configs/at91sam9m10g45ek_defconfig |    2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig  |    1 +
 arch/arm/configs/eukrea_cpuimx35_defconfig  |    1 +
 arch/arm/configs/eukrea_cpuimx51_defconfig  |    1 +
 arch/arm/configs/usb_a9260_defconfig        |    1 +
 arch/arm/configs/usb_a9263_128mib_defconfig |    3 ++-
 arch/arm/configs/usb_a9263_defconfig        |    2 +-
 arch/arm/configs/usb_a9g20_128mib_defconfig |    3 ++-
 arch/arm/configs/usb_a9g20_defconfig        |    1 +
 9 files changed, 11 insertions(+), 4 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
