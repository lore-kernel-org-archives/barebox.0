Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQSbi-0004EI-MS
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 07:11:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Jun 2018 09:11:23 +0200
Message-Id: <20180606071129.28884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/6] bootm: split bootm_load_devicetree into two functions
To: Barebox List <barebox@lists.infradead.org>

This splits bootm_load_devicetree into two functions to be able to load
the devicetree to an allocated address without having to specify a SDRAM
region, which is sometimes enough.

The rest of the series deals with getting rid of data->oftree as it's
not really clear who owns this field. If we are using
bootm_load_devicetree then this is just a reference to the SDRAM region,
which gets released by generic code, but sometimes it points to
allocated memory instead which is forgotten to be freed. So we get rid
of this field altogether.

Sascha

Sascha Hauer (6):
  ARM: bootm: drop usage of data->oftree
  ppc: bootm: rename variables
  ppc: bootm: remove unnecessary parameter
  ppc: bootm: Drop usage of data->oftree
  bootm: Drop data->oftree
  bootm: Split bootm_load_devicetree into two functions

 arch/arm/lib32/bootm.c    | 50 ++++++++++++++++-----------
 arch/arm/lib64/armlinux.c | 12 ++++++-
 arch/ppc/lib/ppclinux.c   | 52 ++++++++++++++--------------
 common/bootm.c            | 72 ++++++++++++++++++++++-----------------
 include/bootm.h           |  5 +--
 5 files changed, 111 insertions(+), 80 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
