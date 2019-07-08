Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from your2.active-elements.de ([88.99.59.121] helo=atsonline.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUQ8-0003XU-T0
 for barebox@lists.infradead.org; Mon, 08 Jul 2019 14:15:10 +0000
Received: from Mail-10-6.ATS-Intranet.local (p57800e76.dip0.t-ipconnect.de
 [87.128.14.118])
 by xenon.active-elements.de (Postfix) with ESMTPSA id 1930D4021C06
 for <barebox@lists.infradead.org>; Mon,  8 Jul 2019 16:15:01 +0200 (CEST)
From: Andreas Geisenhainer <Andreas.Geisenhainer@atsonline.de>
Message-ID: <875f8014-b696-b0dc-3c9b-0a9e2d573aa6@atsonline.de>
Date: Mon, 8 Jul 2019 16:15:00 +0200
MIME-Version: 1.0
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Oselas 2018.12.0 toolchain seems to break barebox for AM335x
To: barebox@lists.infradead.org

Hello barebox mailinglist.

While updating my local ptxdist setup I ran into the following problem.

Updating the toolchain to OSELAS_2018.12.0 and copiling barebox
it decided not to start anymore. To my surprise, compiling the
exact same source with the previous OSELAS toolchain (2018.02.0)
just works.
I installed the toolchains through the official debian repository.

We're still running an older barebox (2015.09), so i grabed a
stock, barebox 2019.06.1 and it produces the exact same behaviour.

We're running barebox an a Phytec PhyCORE AM335x platform, and the
behaviour does emerge for the default "barebox-am335x-phytec-phycore.img"
image from barebox.

* Exhibit A: barebox 2019.06.1 compiled with OSELAS_2018.12.0 (gcc 8.2.1)
----------------------------------8<-------------------------------------
barebox@sbo800:/mnt/10.0.1.6/rootbootm -vv -c barebox_2019.06.1_k1.img

Loading ARM barebox image 'barebox_2019.06.1_k1.img'
using internal devicetree
OS image not yet relocated
Passing control to OMAP barebox handler
exitcall-> devices_shutdown+0x1/0x24
exitcall-> arch_shutdown+0x1/0x1c
---------------------------------->8-------------------------------------

* Exhibit B: barebox 2019.06.1 compiled with OSELAS_2018.02.0 (gcc 7.3.1)
----------------------------------8<-------------------------------------
barebox@sbo800:/mnt/10.0.1.6/rootbootm -vv -c barebox_2019.06.1_k2.img

Loading ARM barebox image 'barebox_2019.06.1_k2.img'
using internal devicetree
OS image not yet relocated
Passing control to OMAP barebox handler
exitcall-> devices_shutdown+0x1/0x24
exitcall-> arch_shutdown+0x1/0x1c
start.c: memory at 0x80000000, size 0x20000000
start.c: found Compressed DTB in boarddata, copying to 0x9fdfd040
start.c: initializing malloc pool at 0x8fefe820 (size 0x0fefe820)
start.c: starting barebox...
----------------------------------<8-------------------------------------

What's the best course of action to debug this further?

There's a slight possibility for a barebox config option to be the culprit,
since i copied our local config into the extracted archive.
But it does not really explain why this breaks.

kind regards
Andreas Geisenhainer

-- 
        _
   __ _| |_ ___
  / _` | __/ __|
| (_| | |_\__ \
  \__,_|\__|___/
Elektronik GmbH


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
