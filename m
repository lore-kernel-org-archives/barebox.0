Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward9l.mail.yandex.net ([84.201.143.142])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZB3Ko-0003P0-IQ
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 15:57:04 +0000
From: Alexander Smirnov <alllecs@yandex.ru>
Date: Fri,  3 Jul 2015 18:58:22 +0300
Message-Id: <1435939105-12189-1-git-send-email-alllecs@yandex.ru>
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
Subject: [PATCH 0/3] add spd_decode command (SPD EEPROM data decoder)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Smirnov <alllecs@yandex.ru>

Alexander Smirnov (3):
  common: move DDR_SPD to common/Kconfig
  ddr_spd: add routine for printing DDR2 SPD contents in human-readable
    format
  commands: add spd_decode command

 arch/ppc/mach-mpc85xx/Kconfig  |   4 -
 arch/ppc/mach-mpc85xx/Makefile |   3 +-
 commands/Kconfig               |   7 +
 commands/Makefile              |   1 +
 commands/spd_decode.c          |  63 +++++++++
 common/Kconfig                 |   4 +
 common/ddr_spd.c               | 296 +++++++++++++++++++++++++++++++++++++++++
 include/ddr_spd.h              |   1 +
 8 files changed, 374 insertions(+), 5 deletions(-)
 create mode 100644 commands/spd_decode.c

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
