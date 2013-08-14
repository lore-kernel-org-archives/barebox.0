Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9WBI-0008Ma-MV
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 08:11:52 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1V9WAw-00079o-MO
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 10:11:26 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1V9WAw-0004P1-Kz
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 10:11:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Aug 2013 10:11:18 +0200
Message-Id: <1376467885-29489-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of_property and phandles
To: barebox@lists.infradead.org

This adds the support for phandles to the of_property command.

The of_property command is able to manipulate devicetree properties,
but so far it hasn't been able to specify phandles. With this
series the following is possible:

of_property -s /soc/somenode propname </soc/someothernode 0xdeadbeef>

The /soc/someothernode is inserted into the property as phandle.

The projected usecase currently is to chose a display out of several
possible during runtime.

Sascha

----------------------------------------------------------------
Sascha Hauer (7):
      of: fix merge mode in of_unflatten_dtb
      of: parse phandles during unflatten
      of: default to internal tree in of_find_node_by_path_from
      of: introduce some new helpers
      of_property command: allow to specify a node by alias
      of_property command: allow to set phandles
      oftree command: Allow to specify node by alias

 commands/of_property.c |  36 ++++++++++++--
 commands/oftree.c      |   2 +-
 drivers/of/base.c      | 126 ++++++++++++++++++++++++++++++++++++++++++-------
 drivers/of/fdt.c       |   5 +-
 include/of.h           |  14 ++++++
 5 files changed, 160 insertions(+), 23 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
