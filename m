Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SYv4O-0007y5-FK
 for barebox@lists.infradead.org; Mon, 28 May 2012 08:12:53 +0000
Received: by laap9 with SMTP id p9so2331191laa.36
 for <barebox@lists.infradead.org>; Mon, 28 May 2012 01:12:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 28 May 2012 12:12:31 +0400
Message-Id: <1338192756-3688-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v20120528 0/5] ARM: initial Tegra support
To: barebox@lists.infradead.org

This patch series adds initial NVidia Tegra SoC support.

Also it introduces Tegra 250-based Toshiba AC100 netbook support.
Barebox can start from U-Boot only.

[PATCH v20120528 1/5] ARM: initial Tegra support
[PATCH v20120528 2/5] ARM: Tegra: add Toshiba AC100 support
[PATCH v20120528 3/5] usb: set MAXINTERFACES = 16
[PATCH v20120528 4/5] toshiba-ac100: add USB host support
[PATCH v20120528 5/5] toshiba_ac100: add defconfig

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
