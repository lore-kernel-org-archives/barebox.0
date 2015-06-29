Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward3l.mail.yandex.net ([84.201.143.136])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z9a0E-0007BA-VL
 for barebox@lists.infradead.org; Mon, 29 Jun 2015 14:25:45 +0000
From: Alexander Smirnov <alllecs@yandex.ru>
Date: Mon, 29 Jun 2015 17:26:54 +0300
Message-Id: <1435588017-24949-1-git-send-email-alllecs@yandex.ru>
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
Subject: [RFC V3 0/3] add decode command (SPD EEPROM data decoder)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Smirnov <alllecs@yandex.ru>

Alexander Smirnov (3):
  common: move DDR_SPD to common/Kconfig
  ddr_spd: add routune for printing SPD contents in human readable
    format
  add decode command (SPD EEPROM data decoder)

 arch/ppc/mach-mpc85xx/Kconfig  |   4 -
 arch/ppc/mach-mpc85xx/Makefile |   3 +-
 commands/Kconfig               |   7 ++
 commands/Makefile              |   1 +
 commands/decode.c              |  53 +++++++++
 common/Kconfig                 |   4 +
 common/ddr_spd.c               | 239 +++++++++++++++++++++++++++++++++++++++++
 include/ddr_spd.h              |   1 +
 8 files changed, 307 insertions(+), 5 deletions(-)
 create mode 100644 commands/decode.c

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
