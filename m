Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ef9eb-0007t9-Es
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 19:27:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jan 2018 20:26:42 +0100
Message-Id: <20180126192644.5434-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/2] Make finding fixup nodes more robust
To: Barebox List <barebox@lists.infradead.org>

Recently the node names in i.MX6 device tree files have changed. The
leading zeroes were removed from the addresses. With this a newer
barebox doesn't find the nodes to fixup in an old device tree and
an older barebox doesn't find the nodes in a new device tree. To
fix this we create new names of the nodes based on things that hopefully
don't change: We iterate up to a node which is MMIO space mappable
and get a name that starts with "[adr]". For the remaining parts of
a node we add "<reg>" when the hierarchy level has a "reg" property
and only as last fallback we add "{nodename}" in curly brackets.
This name is safe against node name changes and also against adding
a new hierarchy level in the device tree (when for example a bus level
is added).

This series aims for v2018.01.1

Sascha Hauer (2):
  of: Add function to find the same node in another tree
  of: mtd: partition: Use reproducible node names for fixup

 drivers/of/base.c      | 63 ++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/of/partition.c |  5 +++-
 include/of.h           |  5 +++-
 3 files changed, 71 insertions(+), 2 deletions(-)

-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
