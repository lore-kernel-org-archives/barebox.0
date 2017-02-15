Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdtlm-0001Ec-RB
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 07:12:57 +0000
Received: by mail-lf0-x241.google.com with SMTP id v186so12680776lfa.2
 for <barebox@lists.infradead.org>; Tue, 14 Feb 2017 23:12:33 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Feb 2017 10:12:25 +0300
Message-Id: <20170215071227.31183-1-antonynpavlov@gmail.com>
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
Subject: [RFC 0/2] sandbox: add gpio support with libftdi1
To: barebox@lists.infradead.org

This patch series makes it possible to use FT2232H ACBUS[7:0]
pins as gpio pins from sandbox barebox.

I have tested output gpio functionality by connecting
a LED to ACBUS[0] and lightening it with gpio_direction_output
and gpio_set_value barebox commands.

Also I have performed input test with ACBUS[0] -> ACBUS[1] loopback.

The main goal of adding gpio functionality to sandbox barebox
is using it for connecting real i2c and spi devices to sandbox barebox
(not tested yet).


Antony Pavlov (2):
  sandbox: avoid symbol conflict for {open,read,close}dir
  sandbox: add gpio support with libftdi1

 arch/sandbox/Kconfig                           |   1 +
 arch/sandbox/Makefile                          |  10 +-
 arch/sandbox/board/board.c                     |   7 ++
 arch/sandbox/mach-sandbox/include/mach/linux.h |  11 ++
 arch/sandbox/os/Makefile                       |   3 +
 arch/sandbox/os/ftdi.c                         | 167 +++++++++++++++++++++++++
 drivers/gpio/Kconfig                           |   4 +
 drivers/gpio/Makefile                          |   1 +
 drivers/gpio/gpio-libftdi1.c                   | 116 +++++++++++++++++
 9 files changed, 318 insertions(+), 2 deletions(-)
 create mode 100644 arch/sandbox/os/ftdi.c
 create mode 100644 drivers/gpio/gpio-libftdi1.c

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
