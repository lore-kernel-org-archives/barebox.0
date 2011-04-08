Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Bzp-0000SO-Hs
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 13:45:10 +0000
Date: Fri, 8 Apr 2011 15:37:13 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110408133713.GC13978@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] defaultenv boot updates 
To: barebox@lists.infradead.org

HI,

	this following patch series make boot script more configurable


The following changes since commit 8dfebf96d79aa8e37c2299af8c02a84d30f5e9e7:

  Merge branch 'nand-pu' into next (2011-04-06 09:21:56 +0200)

are available in the git repository at:

  game ..BRANCH.NOT.VERIFIED..

Jean-Christophe PLAGNIOL-VILLARD (4):
      defaultenv/boot: switch to getopt
      defaultenv/boot: add -k and -t option to specify the kernel location and image type
      defaultenv/boot: add -r and -T option to select rootfs location and type
      defaultenv/boot: add -i option to select the ip mode

 defaultenv/bin/boot      |   52 ++++++++++++++++++++++++++++++++++++++++++---
 defaultenv/bin/boot_help |   36 +++++++++++++++++++++++++++++++
 2 files changed, 84 insertions(+), 4 deletions(-)
 create mode 100644 defaultenv/bin/boot_help

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
