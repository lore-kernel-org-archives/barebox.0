Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTvsK-0003eQ-6z
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 14:36:05 +0000
Received: from mail403.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9D3A9104F682
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 15:43:10 +0100 (CET)
Date: Thu, 1 Nov 2012 15:33:52 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121101143352.GJ29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/7] at91 add i2c-gpio suport
To: barebox@lists.infradead.org

Hi,

	This paatch serie add the i2c suport to at91 using the i2c-gpio as teh
	IP is broken until the sam9x5. For the sam9x5 untill we have the hw
	driver support use the i2c-gpio too

	on the sam9x5ek enable the i2c and the qt1070

	This patch serie depends on i2c qt1070 patch and the at91sam9x5ek
	1-wire one

The following changes since commit 3a5609a37a19b0b6b5f4c61e3c561b7bf2d25b72:

  i2c: add versatile support (2012-11-01 06:58:21 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91_i2c

for you to fetch changes up to 2d2aee2451a0210cfb0d141db7729b648d0a32a4:

  at91sam9x5ek: add i2c support (2012-11-01 06:58:25 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      at91sam9x5: add i2c support
      at91rm9200: add i2c support
      at91sam9260/sam9g20: add i2c support
      at91sam9263: add i2c support
      at91sam9261/sam9g10: add i2c support
      at91sam9g45: add i2c support
      at91sam9x5ek: add i2c support

 arch/arm/boards/at91sam9x5ek/init.c      |   12 ++++++++++++
 arch/arm/configs/at91sam9x5ek_defconfig  |    5 ++++-
 arch/arm/mach-at91/at91rm9200_devices.c  |   28 ++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9260_devices.c |   32 ++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9261_devices.c |   31 +++++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9263_devices.c |   31 +++++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9g45_devices.c |   50 ++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9x5_devices.c  |   58 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/board.h  |    3 +++
 9 files changed, 249 insertions(+), 1 deletion(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
