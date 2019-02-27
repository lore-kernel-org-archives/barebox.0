Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyzAM-0004rb-L8
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 13:22:32 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1gyzA7-00088i-Tj
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 14:22:15 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Wed, 27 Feb 2019 14:22:12 +0100
Message-Id: <20190227132215.9765-1-tomaz.solc@tablix.org>
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
Subject: [PATCH v2 0/3] VideoCore FDT interop for Raspberry Pi
To: barebox@lists.infradead.org

Changes from the first patch series:

 - Drop of_bootargs command in favour of automatically extracting VideoCore
   bootargs to vc.bootargs global in board initialization. Sorry for forgetting
   to update the copyright header in of_bootargs.c. This file is gone now.
 - Replace printf() with pr_err() for printing error messages in rpi-common.c.

Best regards
Tomaz

Tomaz Solc (3):
  ARM: start: save end of memory passed to start.
  ARM: rpi: save fdt that was passed from VideoCore
  ARM: rpi: save bootargs from VC FDT to vc.bootargs

 Documentation/boards/bcm2835.rst          | 10 ++++
 arch/arm/boards/raspberry-pi/lowlevel.c   | 68 ++++++++++++++++++--------
 arch/arm/boards/raspberry-pi/lowlevel.h   |  9 ++++
 arch/arm/boards/raspberry-pi/rpi-common.c | 81 +++++++++++++++++++++++++++++++
 arch/arm/cpu/start.c                      |  8 +++
 arch/arm/include/asm/barebox-arm.h        |  1 +
 6 files changed, 158 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm/boards/raspberry-pi/lowlevel.h

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
