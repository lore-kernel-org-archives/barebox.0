Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-dm6nam08on2108.outbound.protection.outlook.com
 ([40.107.102.108] helo=NAM04-DM6-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXjKU-0004Oi-8O
 for barebox@lists.infradead.org; Wed, 28 Oct 2020 11:09:23 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Wed, 28 Oct 2020 11:09:18 +0000
Message-ID: <MN2PR16MB3135009790C9E05DD2D996BB91170@MN2PR16MB3135.namprd16.prod.outlook.com>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: bareboxenv-target
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

I am building bareboxenv-target for a  cortex-A9 board (not present upstream) with gcc 9.3.0 and got this error:

arm-oe-linux-gnueabi-gcc -Wp,-MMD,scripts/.bareboxenv-target.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89  -I /mnt/projects/all/openware-core/home/renaud/sandbox/bootloader/barebox-rebase/scripts/include      -o scripts/bareboxenv-target scripts/bareboxenv-target.c
In file included from scripts/bareboxenv-target.c:1:
scripts/bareboxenv.c:17:10: fatal error: stdio.h: No such file or directory
   17 | #include <stdio.h>
      |          ^~~~~~~~~


It looks like sysroot is missing as when I add to scripts/Makefile:
ifdef SDKTARGETSYSROOT
    userccflags += --sysroot=$(SDKTARGETSYSROOT)
endif

It builds.

Not much came out from search on google but one thread that refers to this problem when building with Yocto.

Could it it be related to  how our toolchain got build?

Cheers,
Renaud

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
