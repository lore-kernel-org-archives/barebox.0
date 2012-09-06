Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9VCm-00078J-L3
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 06:04:47 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id D5A3DFF8C2F
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 08:12:19 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  6 Sep 2012 08:04:49 +0200
Message-Id: <1346911500-12902-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120906060058.GE4761@game.jcrosoft.org>
References: <20120906060058.GE4761@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/12] add barebox logo
To: barebox@lists.infradead.org

in logo/ you will found the barebox logo with color or white
in:
 - bmp (black background)
 - png24 (transparent or black background)
 - png8 (black background)

for the following size
 - 100x100
 - 200x200
 - 400x400
 - 600x600
 - 800x800
 - 900x900

The logo are origanize in a way to be able to include them in the envfs
by just point as it.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 logo/bmp/100x100/color/blackbg/barebox.bmp   |  Bin 0 -> 30056 bytes
 logo/bmp/100x100/white/blackbg/barebox.bmp   |  Bin 0 -> 30056 bytes
 logo/bmp/200x200/color/blackbg/barebox.bmp   |  Bin 0 -> 120056 bytes
 logo/bmp/200x200/white/blackbg/barebox.bmp   |  Bin 0 -> 120056 bytes
 logo/bmp/400x400/color/blackbg/barebox.bmp   |  Bin 0 -> 480056 bytes
 logo/bmp/400x400/white/blackbg/barebox.bmp   |  Bin 0 -> 480056 bytes
 logo/bmp/600x600/color/blackbg/barebox.bmp   |  Bin 0 -> 1080056 bytes
 logo/bmp/600x600/while/blackbg/barebox.bmp   |  Bin 0 -> 1080056 bytes
 logo/bmp/800x800/color/blackbg/barebox.bmp   |  Bin 0 -> 1920056 bytes
 logo/bmp/800x800/white/blackbg/barebox.bmp   |  Bin 0 -> 1920056 bytes
 logo/bmp/900x900/color/blackbg/barebox.bmp   |  Bin 0 -> 2430056 bytes
 logo/bmp/900x900/white/blackbg/barebox.bmp   |  Bin 0 -> 2430056 bytes
 logo/png24/100x100/color/barebox.png         |  Bin 0 -> 22724 bytes
 logo/png24/100x100/color/blackbg/barebox.png |  Bin 0 -> 19254 bytes
 logo/png24/100x100/white/barebox.png         |  Bin 0 -> 12053 bytes
 logo/png24/100x100/white/blackbg/barebox.png |  Bin 0 -> 10940 bytes
 logo/png24/200x200/color/barebox.png         |  Bin 0 -> 71557 bytes
 logo/png24/200x200/color/blackbg/barebox.png |  Bin 0 -> 60836 bytes
 logo/png24/200x200/white/barebox.png         |  Bin 0 -> 31132 bytes
 logo/png24/200x200/white/blackbg/barebox.png |  Bin 0 -> 28578 bytes
 logo/png24/400x400/color/barebox.png         |  Bin 0 -> 217170 bytes
 logo/png24/400x400/color/blackbg/barebox.png |  Bin 0 -> 188172 bytes
 logo/png24/400x400/white/barebox.png         |  Bin 0 -> 78591 bytes
 logo/png24/400x400/white/blackbg/barebox.png |  Bin 0 -> 72957 bytes
 logo/png24/600x600/color/barebox.png         |  Bin 0 -> 406788 bytes
 logo/png24/600x600/color/blackbg/barebox.png |  Bin 0 -> 353328 bytes
 logo/png24/600x600/while/barebox.png         |  Bin 0 -> 137235 bytes
 logo/png24/600x600/while/blackbg/barebox.png |  Bin 0 -> 130454 bytes
 logo/png24/800x800/color/barebox.png         |  Bin 0 -> 627433 bytes
 logo/png24/800x800/color/blackbg/barebox.png |  Bin 0 -> 547772 bytes
 logo/png24/800x800/white/barebox.png         |  Bin 0 -> 210397 bytes
 logo/png24/800x800/white/blackbg/barebox.png |  Bin 0 -> 198356 bytes
 logo/png24/900x900/color/barebox.png         |  Bin 0 -> 713120 bytes
 logo/png24/900x900/color/blackbg/barebox.png |  Bin 0 -> 611586 bytes
 logo/png24/900x900/white/barebox.png         |  Bin 0 -> 204449 bytes
 logo/png24/900x900/white/blackbg/barebox.png |  Bin 0 -> 190770 bytes
 logo/png8/100x100/color/blackbg/barebox.png  |  Bin 0 -> 8279 bytes
 logo/png8/100x100/white/blackbg/barebox.png  |  Bin 0 -> 6089 bytes
 logo/png8/200x200/color/blackbg/barebox.png  |  Bin 0 -> 23616 bytes
 logo/png8/200x200/white/blackbg/barebox.png  |  Bin 0 -> 14838 bytes
 logo/png8/400x400/color/blackbg/barebox.png  |  Bin 0 -> 71295 bytes
 logo/png8/400x400/white/blackbg/barebox.png  |  Bin 0 -> 38480 bytes
 logo/png8/600x600/color/blackbg/barebox.png  |  Bin 0 -> 130709 bytes
 logo/png8/600x600/while/blackbg/barebox.png  |  Bin 0 -> 68648 bytes
 logo/png8/800x800/color/blackbg/barebox.png  |  Bin 0 -> 205281 bytes
 logo/png8/800x800/white/blackbg/barebox.png  |  Bin 0 -> 104173 bytes
 logo/png8/900x900/color/blackbg/barebox.png  |  Bin 0 -> 236679 bytes
 logo/png8/900x900/white/blackbg/barebox.png  |  Bin 0 -> 106472 bytes
 48 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 logo/bmp/100x100/color/blackbg/barebox.bmp
 create mode 100644 logo/bmp/100x100/white/blackbg/barebox.bmp
 create mode 100644 logo/bmp/200x200/color/blackbg/barebox.bmp
 create mode 100644 logo/bmp/200x200/white/blackbg/barebox.bmp
 create mode 100644 logo/bmp/400x400/color/blackbg/barebox.bmp
 create mode 100644 logo/bmp/400x400/white/blackbg/barebox.bmp
 create mode 100644 logo/bmp/600x600/color/blackbg/barebox.bmp
 create mode 100644 logo/bmp/600x600/while/blackbg/barebox.bmp
 create mode 100644 logo/bmp/800x800/color/blackbg/barebox.bmp
 create mode 100644 logo/bmp/800x800/white/blackbg/barebox.bmp
 create mode 100644 logo/bmp/900x900/color/blackbg/barebox.bmp
 create mode 100644 logo/bmp/900x900/white/blackbg/barebox.bmp
 create mode 100644 logo/png24/100x100/color/barebox.png
 create mode 100644 logo/png24/100x100/color/blackbg/barebox.png
 create mode 100644 logo/png24/100x100/white/barebox.png
 create mode 100644 logo/png24/100x100/white/blackbg/barebox.png
 create mode 100644 logo/png24/200x200/color/barebox.png
 create mode 100644 logo/png24/200x200/color/blackbg/barebox.png
 create mode 100644 logo/png24/200x200/white/barebox.png
 create mode 100644 logo/png24/200x200/white/blackbg/barebox.png
 create mode 100644 logo/png24/400x400/color/barebox.png
 create mode 100644 logo/png24/400x400/color/blackbg/barebox.png
 create mode 100644 logo/png24/400x400/white/barebox.png
 create mode 100644 logo/png24/400x400/white/blackbg/barebox.png
 create mode 100644 logo/png24/600x600/color/barebox.png
 create mode 100644 logo/png24/600x600/color/blackbg/barebox.png
 create mode 100644 logo/png24/600x600/while/barebox.png
 create mode 100644 logo/png24/600x600/while/blackbg/barebox.png
 create mode 100644 logo/png24/800x800/color/barebox.png
 create mode 100644 logo/png24/800x800/color/blackbg/barebox.png
 create mode 100644 logo/png24/800x800/white/barebox.png
 create mode 100644 logo/png24/800x800/white/blackbg/barebox.png
 create mode 100644 logo/png24/900x900/color/barebox.png
 create mode 100644 logo/png24/900x900/color/blackbg/barebox.png
 create mode 100644 logo/png24/900x900/white/barebox.png
 create mode 100644 logo/png24/900x900/white/blackbg/barebox.png
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
 create mode 100644 logo/png8/900x900/color/blackbg/barebox.png
 create mode 100644 logo/png8/900x900/white/blackbg/barebox.png

skip as too big

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
