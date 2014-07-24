Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XALKj-0002mk-FJ
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 15:53:31 +0000
Received: by mail-lb0-f181.google.com with SMTP id 10so2380512lbg.40
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 08:53:06 -0700 (PDT)
Date: Thu, 24 Jul 2014 20:05:45 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140724200545.009a9c6c143abf1b344721a5@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Tegra2 USB issue
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hi!

I have just tested this commit

commit d8bdd537220dd83912949f19ba67029bd1f11c58
Author: Lucas Stach <dev@lynxeye.de>
Date:   Fri Apr 12 12:28:14 2013 +0200

    tegra: switch to proper CPU type
    =

    Tegras main CPUs are all ARMv7.
    =

    Signed-off-by: Lucas Stach <dev@lynxeye.de>
    Tested-by: Antony Pavlov <antonynpavlov@gmail.com>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index bb9b47b..dfb7e24 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -137,7 +137,7 @@ config ARCH_VEXPRESS
 =

 config ARCH_TEGRA
        bool "Nvidia Tegra-based boards"
-       select CPU_ARM926T
+       select CPU_V7
        select HAS_DEBUG_LL
 =

 config ARCH_ZYNQ

This commit breaks 'usb' command --- it does not scan devices anymore, just=
 hangs.

I have used codesourcery arm-2013.11 toolchain.

I'll try to check latest barebox from next, but just now I have no means to=
 burn
barebox-tegra20-toshiba-ac100.img into AC100's ROM.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
