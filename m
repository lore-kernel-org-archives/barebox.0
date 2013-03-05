Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo1.mail-out.ovh.net ([178.32.97.206]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCr2Y-0007SE-Rt
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 12:32:20 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id C5CCDFFA243
 for <barebox@lists.infradead.org>; Tue,  5 Mar 2013 13:48:35 +0100 (CET)
Date: Tue, 5 Mar 2013 13:31:20 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130305123120.GM23022@game.jcrosoft.org>
References: <1362431430-24286-1-git-send-email-plagnioj@jcrosoft.com>
 <20130305110025.GV1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130305110025.GV1906@pengutronix.de>
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
Subject: Re: [PATCH 1/1] highbank: switch to defaultenv-2
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Rob Herring <rob.herring@calxeda.com>

On 12:00 Tue 05 Mar     , Sascha Hauer wrote:
> On Mon, Mar 04, 2013 at 10:10:30PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Cc: Rob Herring <rob.herring@calxeda.com>
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> > 
> > diff --git a/arch/arm/boards/highbank/env/boot/ahci b/arch/arm/boards/highbank/env/boot/ahci
> > new file mode 100644
> > index 0000000..9a41366
> > --- /dev/null
> > +++ b/arch/arm/boards/highbank/env/boot/ahci
> > @@ -0,0 +1,21 @@
> > +#!/bin/sh
> > +
> > +if [ "$1" = menu ]; then
> > +	boot-menu-add-entry "$0" "AHCI (part 0 or boot if UEFI)"
> > +	exit
> > +fi
> > +
> > +path="/mnt/ahci"
> > +
> > +global.bootm.image="${path}/vmlinuz"
> > +
> > +. /env/data/oftree
> > +
> > +oftree=${path}/oftree
> > +if [ -f $oftree ]; then
> > +	global.bootm.oftree="$oftree"
> > +fi
> > +
> > +# The rootdevice may actually be mmcblk1p2 if a card
> > +# is inserted to the back MMC slot
> 
> This seems to copy copy pasted from the Efika Smartbook and I doubt this
> is correct for highbank.
> 
> > +global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2"
> 
> The entry is named ahci and it sets the root device to mmcblk?
yeah
> 
> > diff --git a/arch/arm/boards/highbank/env/boot/mmc b/arch/arm/boards/highbank/env/boot/mmc
> > new file mode 100644
> > index 0000000..43a04b5
> > --- /dev/null
> > +++ b/arch/arm/boards/highbank/env/boot/mmc
> > @@ -0,0 +1,21 @@
> > +#!/bin/sh
> > +
> > +if [ "$1" = menu ]; then
> > +	boot-menu-add-entry "$0" "MMC slot"
> > +	exit
> > +fi
> > +
> > +path="/mnt/mmc"
> > +
> > +global.bootm.image="${path}/zimage"
> > +
> > +. /env/data/oftree
> > +
> > +oftree=${path}/oftree
> > +if [ -f $oftree ]; then
> > +	global.bootm.oftree="$oftree"
> > +fi
> > +
> > +# The rootdevice may actually be mmcblk1p2 if a card
> > +# is inserted to the back MMC slot
> > diff --git a/arch/arm/boards/highbank/env/data/oftree b/arch/arm/boards/highbank/env/data/oftree
> > new file mode 100644
> > index 0000000..9a94b31
> > --- /dev/null
> > +++ b/arch/arm/boards/highbank/env/data/oftree
> > @@ -0,0 +1,4 @@
> > +#!/bin/sh
> > +
> > +#device tree provided by the firmware
> > +global.bootm.oftree="/dev/dtb"
> > diff --git a/arch/arm/boards/highbank/env/bin/init_board b/arch/arm/boards/highbank/env/init/001-dtb-probe
> > similarity index 100%
> > rename from arch/arm/boards/highbank/env/bin/init_board
> > rename to arch/arm/boards/highbank/env/init/001-dtb-probe
> > diff --git a/arch/arm/boards/highbank/env/init/bootseq b/arch/arm/boards/highbank/env/init/bootseq
> > new file mode 100644
> > index 0000000..7a76759
> > --- /dev/null
> > +++ b/arch/arm/boards/highbank/env/init/bootseq
> > @@ -0,0 +1,6 @@
> > +#!/bin/sh
> > +
> > +mkdir /env/boot.d
> > +ln /env/boot/ahci /env/boot.d/010
> > +ln /env/boot/mmc /env/boot.d/011
> > +ln /env/boot/net /env/boot.d/012
> 
> Doesn't this give ugly errors when the files exist already on a persistent environment?
> 
> Also, isn't a bootsequence supposed to be changeable?
no this is the default one fixed

via IMPI you will be able to select deferent boot sequence
on highbank you will control boot sequence via IMPI


but we can add them in the env as the envfs support the symlink instead of
create them on the fly

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
