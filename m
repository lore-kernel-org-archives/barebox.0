Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUPso-0006UM-IJ
 for barebox@lists.infradead.org; Mon, 19 Oct 2020 07:47:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Oct 2020 09:47:00 +0200
Message-Id: <20201019074702.8809-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/2] AT91: Update partition tables
To: Barebox List <barebox@lists.infradead.org>

This updates the NAND partition tables of the AT91sam9263ek and the
AT91sam9x5ek boards. The current partition tables are unsuitable for
modern Kernel and barebox sizes, so take the step and update to an
incompatible partitioning. While this breaks existing setups I still
think that this is acceptable for Evaluation boards.

This is series is meant to be placed before Ahmads "ARM: at91: define new
at91_multi_defconfig" patch: With it we are able to enable the
at91sam9263ek and the at91sam9x5ek for the new multi_defconfig as well.

Sascha Hauer (2):
  ARM: at91sam9263ek: Update NAND partitioning
  ARM: at91sam9x5ek: Update NAND partitioning

 arch/arm/dts/at91sam9263ek.dts | 34 +++++++++++++++++++++++++++++++++-
 arch/arm/dts/at91sam9x5ek.dts  | 32 ++++++++++++++++++++++++++++++++
 2 files changed, 65 insertions(+), 1 deletion(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
