Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SCEF0-0007f9-7B
 for barebox@lists.infradead.org; Mon, 26 Mar 2012 18:02:08 +0000
Received: by lbol5 with SMTP id l5so4938114lbo.36
 for <barebox@lists.infradead.org>; Mon, 26 Mar 2012 11:02:00 -0700 (PDT)
From: esben.haabendal@gmail.com
Date: Mon, 26 Mar 2012 20:01:57 +0200
Message-Id: <1332784917-4630-1-git-send-email-esben.haabendal@gmail.com>
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
Subject: [PATCH 0/2] mx28-evk LCD support
To: barebox@lists.infradead.org
Cc: Esben Haabendal <esben.haabendal@prevas.dk>

From: Esben Haabendal <esben.haabendal@prevas.dk>

Configure and enable LCD support for MCIMX28EVK and the 4.3" WVGA
LCD Display (add-on module).

Allan Heldgaard (1):
  mx28-evk: Add LCD support

Esben Haabendal (1):
  mx28-evk: Enable LCD support and bmp command

 arch/arm/boards/freescale-mx28-evk/mx28-evk.c |   86 +++++++++++++++++++++++++
 arch/arm/configs/imx28evk_defconfig           |    3 +
 2 files changed, 89 insertions(+), 0 deletions(-)

-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
