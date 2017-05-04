Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6EWx-0007yr-NK
 for barebox@lists.infradead.org; Thu, 04 May 2017 11:02:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1d6EWb-0001Vt-Fr
 for barebox@lists.infradead.org; Thu, 04 May 2017 13:02:21 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1d6EWb-0007RI-74
 for barebox@lists.infradead.org; Thu, 04 May 2017 13:02:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  4 May 2017 13:02:15 +0200
Message-Id: <20170504110219.17929-1-s.hauer@pengutronix.de>
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
Subject: state fixes/clarifications
To: Barebox List <barebox@lists.infradead.org>

There are some common pitfalls when using the barebox state framework.
This series has some fixes clarifications to hopefully make usage easier.
First of all it doesn't seem to be clear that the state node in the device
tree the Kernel is started with is created by barebox; a previously existing
node will be replaced. For this reason we now issue a warning when a device
tree contains a state node which does not have any effect.
The userspace barebox-state utility needs a alias which for the state node
(it may work with a full path to the node, like /state, but this has some
additional surprises). We therefore make the alias mandatory so that we
can issue a clear error message when no alias exists and we can make
sure barebox-state will find an alias.

----------------------------------------------------------------
Sascha Hauer (4):
      state: Binding: remove @0 from node name
      state: warn when a state node will be overwritten
      state: Make an alias mandatory
      state: Create alias in of_state_fixup()

 .../devicetree/bindings/barebox/barebox,state.rst  |  8 ++++++-
 common/state/state.c                               | 28 +++++++++++++++++++---
 2 files changed, 32 insertions(+), 4 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
