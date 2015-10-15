Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zmdkv-0003QA-ES
 for barebox@lists.infradead.org; Thu, 15 Oct 2015 08:19:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Oct 2015 10:18:53 +0200
Message-Id: <1444897136-25028-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: 
To: Barebox List <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

Here are some patches that fix mvebu for out of tree builds. These
currently do not work because the kwbimage tools searches the files
given to the BINARY option in the config file relative to the current
directory rather than relative to the config file.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      scripts/kwbimage: Move configfile opening to the function that reads it
      scripts/kwbimage: Make BINARY files relative to config file
      ARM: mvebu: Lenovo IX4 300D: Fix pblb generation

 arch/arm/boards/globalscale-mirabox/kwbimage.cfg   |  2 +-
 arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg       |  2 +-
 arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg  |  2 +-
 .../boards/plathome-openblocks-ax3/kwbimage.cfg    |  2 +-
 images/Makefile.mvebu                              |  2 +-
 scripts/kwbimage.c                                 | 51 +++++++++++++---------
 6 files changed, 36 insertions(+), 25 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
