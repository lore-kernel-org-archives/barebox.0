Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeiQ1-0007id-Py
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 10:04:15 +0000
Received: by mail-la0-f45.google.com with SMTP id pv20so387464lab.18
 for <barebox@lists.infradead.org>; Mon, 28 Apr 2014 03:03:50 -0700 (PDT)
Received: from [46.246.34.47] (anon-34-47.vpn.ipredator.se. [46.246.34.47])
 by mx.google.com with ESMTPSA id mw10sm18398517lbb.24.2014.04.28.03.03.48
 for <barebox@lists.infradead.org>
 (version=SSLv3 cipher=RC4-SHA bits=128/128);
 Mon, 28 Apr 2014 03:03:49 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Mon, 28 Apr 2014 12:03:47 +0200
Message-ID: <1398679427.7861.41.camel@mars>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [BUG] Fail to build: "cp: target
 `defaultenv/barebox_default_env.genenv.tmp' is not a directory"
To: barebox@lists.infradead.org

Hi,

 while building current Barebox, with out-of-tree make parameter O=,
there is an error which leads to lack of environment in final image. The
build process itself falsely doesn't get interrupted.


make -j$(nproc) ARCH=arm CROSS_COMPILE=arm-cortexa8-linux-gnueabihf- O=../o_beagle omap3530_beagle_defconfig
make -j$(nproc) ARCH=arm CROSS_COMPILE=arm-cortexa8-linux-gnueabihf- O=../o_beagle

  CC      drivers/of/mem_generic.o
  ENV     defaultenv/barebox_default_env
  CC      drivers/of/partition.o
cp: target `defaultenv/barebox_default_env.genenv.tmp' is not a directory
  ENV     defaultenv/defaultenv-2-base.bbenv
  CC      commands/automount.o
cp: target `defaultenv/defaultenv-2-base.bbenv.genenv.tmp' is not a directory
  CC      commands/global.o


in contrast to:

make -j$(nproc) ARCH=arm CROSS_COMPILE=arm-cortexa8-linux-gnueabihf- omap3530_beagle_defconfig
make -j$(nproc) ARCH=arm CROSS_COMPILE=arm-cortexa8-linux-gnueabihf-

  AS      arch/arm/lib/memcpy.o
  LD      arch/arm/mach-omap/built-in.o
  ENV     defaultenv/defaultenv-2-base.bbenv
  PBLLD   arch/arm/mach-omap/built-in-pbl.o
  CC      drivers/usb/core/usb.o
  ENVH    defaultenv/barebox_default_env.h


I haven't done bisecting, but barebox-2013.07 is fine.

Any ideas?

 Thanks
  -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
