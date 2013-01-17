Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f50.google.com ([74.125.82.50])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TveSU-00052p-Mw
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 01:39:59 +0000
Received: by mail-wg0-f50.google.com with SMTP id es5so1324989wgb.29
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2013 17:39:55 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Thu, 17 Jan 2013 02:39:17 +0100
Message-Id: <1358386760-9249-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 0/3] improvements in: omap4 OPP, omap4 usb booting and archosg9
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

 .- in omap4 OPP use recommended values from datasheet
 .- when booting an omap4 through usb it failed from time to time
    this patch solves this problem
 .- on archos g9 tablet, use the same pad_conf values readden from linux
    when booting with avboot (archos own bootloader)
 .- also on archos g9 tablet reorder initialization: first voltages then clocks

Vicente Bergas (3):
  OMAP4: use OPPs recommended in datasheet
  OMAP4_USB: more stable communications
  ARCHOS: use manufacturer values for pad_conf and reorder
    initialization

 arch/arm/boards/archosg9/board.c              |   1 +
 arch/arm/boards/archosg9/lowlevel.c           |  18 +-
 arch/arm/boards/archosg9/mux.c                | 654 +++++++++-----------------
 arch/arm/mach-omap/include/mach/omap4-clock.h |  12 +-
 scripts/omap4_usbboot.c                       |  68 ++-
 scripts/usb_linux.c                           |   4 +-
 6 files changed, 295 insertions(+), 462 deletions(-)

-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
