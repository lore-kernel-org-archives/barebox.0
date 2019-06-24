Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLmO-0001m8-5m
 for barebox@lists.infradead.org; Mon, 24 Jun 2019 10:00:55 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 24 Jun 2019 12:00:41 +0200
Message-Id: <20190624100043.27636-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v4 0/2] add JTAG debugging support 
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

changes v4:
- rebase against latest git next barebox
- make sure barebox header is not broken by PBL patch

Oleksij Rempel (1):
  add CONFIG_PBL_BREAK option

Rouven Czerwinski (1):
  add gdb helper scripts to load barebox symbols

 Documentation/user/debugging.rst        | 21 +++++++++
 Documentation/user/user-manual.rst      |  1 +
 arch/arm/cpu/common.c                   | 13 ++++++
 arch/arm/cpu/start.c                    |  2 +
 arch/arm/include/asm/barebox-arm-head.h |  7 +++
 arch/arm/include/asm/barebox-arm.h      |  1 +
 common/Kconfig                          |  8 ++++
 scripts/gdb/helper.py                   | 60 +++++++++++++++++++++++++
 8 files changed, 113 insertions(+)
 create mode 100644 Documentation/user/debugging.rst
 create mode 100644 scripts/gdb/helper.py

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
