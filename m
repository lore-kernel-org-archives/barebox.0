Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo5.mail-out.ovh.net ([178.33.109.111]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TCQ0S-000127-Po
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 07:08:06 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 4A919FFA5DC
 for <barebox@lists.infradead.org>; Fri, 14 Sep 2012 09:09:38 +0200 (CEST)
Date: Fri, 14 Sep 2012 09:01:24 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120914070124.GC20834@game.jcrosoft.org>
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
Subject: [PATCH] Barebox logo
To: barebox@lists.infradead.org


Hi,

please pull
The following changes since commit 8b3bf5971afbdf1acc5becabb6f15ba4b2a5559d:

  tap: fix missing parent setting on eth_device (2012-09-12 17:26:26 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/logo

for you to fetch changes up to 92c02ce92eea4ce02fce1cca11f73e6ed121ea76:

  add barebox logo (2012-09-14 14:54:38 +0800)

----------------------------------------------------------------
Barebox Logo

in logo/ you will found the barebox logo with color or white
in:
 - png24 (transparent)
 - png8 (black background)

for the following size
 - 100x100
 - 200x200
 - 400x400
 - 600x600
 - 800x800

The logo are origanize in a way to be able to include them in the envfs
by just point as it.

A vector version will be published later

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (1):
      add barebox logo

 logo/LICENCE                                |   22 ++++++++++++++++++++++
 logo/png24/100x100/color/barebox.png        |  Bin 0 -> 22724 bytes
 logo/png24/100x100/white/barebox.png        |  Bin 0 -> 12053 bytes
 logo/png24/200x200/color/barebox.png        |  Bin 0 -> 71557 bytes
 logo/png24/200x200/white/barebox.png        |  Bin 0 -> 31132 bytes
 logo/png24/400x400/color/barebox.png        |  Bin 0 -> 217170 bytes
 logo/png24/400x400/white/barebox.png        |  Bin 0 -> 78591 bytes
 logo/png24/600x600/color/barebox.png        |  Bin 0 -> 406788 bytes
 logo/png24/600x600/while/barebox.png        |  Bin 0 -> 137235 bytes
 logo/png24/800x800/color/barebox.png        |  Bin 0 -> 627433 bytes
 logo/png24/800x800/white/barebox.png        |  Bin 0 -> 210397 bytes
 logo/png8/100x100/color/blackbg/barebox.png |  Bin 0 -> 8279 bytes
 logo/png8/100x100/white/blackbg/barebox.png |  Bin 0 -> 6089 bytes
 logo/png8/200x200/color/blackbg/barebox.png |  Bin 0 -> 23616 bytes
 logo/png8/200x200/white/blackbg/barebox.png |  Bin 0 -> 14838 bytes
 logo/png8/400x400/color/blackbg/barebox.png |  Bin 0 -> 71295 bytes
 logo/png8/400x400/white/blackbg/barebox.png |  Bin 0 -> 38480 bytes
 logo/png8/600x600/color/blackbg/barebox.png |  Bin 0 -> 130709 bytes
 logo/png8/600x600/while/blackbg/barebox.png |  Bin 0 -> 68648 bytes
 logo/png8/800x800/color/blackbg/barebox.png |  Bin 0 -> 205281 bytes
 logo/png8/800x800/white/blackbg/barebox.png |  Bin 0 -> 104173 bytes
 21 files changed, 22 insertions(+)
 create mode 100644 logo/LICENCE
 create mode 100644 logo/png24/100x100/color/barebox.png
 create mode 100644 logo/png24/100x100/white/barebox.png
 create mode 100644 logo/png24/200x200/color/barebox.png
 create mode 100644 logo/png24/200x200/white/barebox.png
 create mode 100644 logo/png24/400x400/color/barebox.png
 create mode 100644 logo/png24/400x400/white/barebox.png
 create mode 100644 logo/png24/600x600/color/barebox.png
 create mode 100644 logo/png24/600x600/while/barebox.png
 create mode 100644 logo/png24/800x800/color/barebox.png
 create mode 100644 logo/png24/800x800/white/barebox.png
 create mode 100644 logo/png8/100x100/color/blackbg/barebox.png
 create mode 100644 logo/png8/100x100/white/blackbg/barebox.png
 create mode 100644 logo/png8/200x200/color/blackbg/barebox.png
 create mode 100644 logo/png8/200x200/white/blackbg/barebox.png
 create mode 100644 logo/png8/400x400/color/blackbg/barebox.png
 create mode 100644 logo/png8/400x400/white/blackbg/barebox.png
 create mode 100644 logo/png8/600x600/color/blackbg/barebox.png
 create mode 100644 logo/png8/600x600/while/blackbg/barebox.png
 create mode 100644 logo/png8/800x800/color/blackbg/barebox.png
 create mode 100644 logo/png8/800x800/white/blackbg/barebox.png

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
