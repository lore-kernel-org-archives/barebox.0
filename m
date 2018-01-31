Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqCD-0002QY-4I
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:04:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:04:35 +0100
Message-Id: <20180131110438.22620-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/3] of: Allow for const properties
To: Barebox List <barebox@lists.infradead.org>

This series allows to unflatten a DTB while reusing the existing property
data from the DTB in the unflattened tree. This can make the memory
consumption much smaller when big properties are stored in the flattened
tree. While there's normally not much use of such an optimization
there's one user which profits from it: The FIT image code as FIT images
a only DTBs with kernel and ramdisk images stored in properties.

Sascha Hauer (3):
  pinctrl: do not dereference a device tree property directly
  of: Allow for const properties
  of: fdt: add of_unflatten_dtb_const

 commands/of_property.c    |   1 +
 drivers/of/base.c         | 107 +++++++++++++++++++++++++++++++++++++---------
 drivers/of/fdt.c          |  36 +++++++++++++++-
 drivers/pinctrl/pinctrl.c |  18 +++-----
 include/of.h              |   5 +++
 5 files changed, 132 insertions(+), 35 deletions(-)

-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
