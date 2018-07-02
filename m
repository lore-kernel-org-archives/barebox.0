Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZqeP-0004Sq-O6
 for barebox@lists.infradead.org; Mon, 02 Jul 2018 04:41:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jul 2018 06:41:04 +0200
Message-Id: <20180702044108.11466-1-s.hauer@pengutronix.de>
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
Subject: [PATCH v2 0/4] bbu: i.MX: Generalize IMX_INTERNAL_FLAG_KEEP_DOSPART
 flag
To: Barebox List <barebox@lists.infradead.org>

We have the IMX_INTERNAL_FLAG_KEEP_DOSPART flag in the i.MX bbu handlers
which has the effect that an existing DOS partition is preserved over
an update. This series generalizes this flag so that not only a DOS
partition is preserved but instead all data that is in the area unused
by the boot ROM.

Sascha Hauer (4):
  bbu: reserve upper 16 bits for handler specific flags
  ARM: i.MX: bbu: remove handler specific flags variable
  ARM: i.MX: bbu: reimplement IMX_INTERNAL_FLAG_KEEP_DOSPART flag
  ARM: i.MX: bbu: support partitions starting at i.MX header

 arch/arm/mach-imx/imx-bbu-internal.c | 93 +++++++++++-----------------
 arch/arm/mach-imx/include/mach/bbu.h | 23 +++++++
 include/bbu.h                        |  4 ++
 3 files changed, 62 insertions(+), 58 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
