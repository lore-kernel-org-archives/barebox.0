Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gS2Fx-0000x2-Oa
 for barebox@lists.infradead.org; Wed, 28 Nov 2018 16:00:13 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23993903AbeK1P7vb18yf (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Wed, 28 Nov 2018 16:59:51 +0100
Date: Wed, 28 Nov 2018 16:59:48 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181128155948.GA24013@lenoch>
References: <1543416825.5085.11.camel@erwinrol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1543416825.5085.11.camel@erwinrol.com>
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
Subject: Re: imx6ul (phytec Segin board) USB/DFU
To: Erwin Rol <mailinglists@erwinrol.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Nov 28, 2018 at 03:53:45PM +0100, Erwin Rol wrote:
> Hallo All,
> 
> I am trying to get USB device (DFU) to work on my Phytec Segin board
> (imx6ul SOC). 
> 
> I can upload barebox with imx-usb-loader and it starts fine (so USB
> hardware is working)
> 
> Than when barebox runs I want to put that same USB port in DFU mode and
> update the nand flash (barebox, env, kernel, rootfs) via DFU.
> 
> But I can't get it to work, I assume USB device mode setup is missing
> from the board setup, but I can't really find info on how to add it.
> 
> Any hints are very welcome.

For custom AT91 based board I did:

$ cat arch/arm/boards/simear4/env/nv/usbgadget.dfu_function 
/dev/dataflash0.at91bootstrap(bootstrap)sr,/dev/dataflash0.barebox(bootloader)sr,/dev/nand0.bb(system)ru
EOF

$ cat arch/arm/boards/simear4/env/init/usbgadget 
#!/bin/sh

if [ ${fffa4000.gadget@fffa4000.vbus} != 1 ]
then
	echo "No USB Device cable plugged, normal boot"
	exit 0
fi

echo "USB Device cable plugged, waiting for DFU button"

global.autoboot_timeout=60

dfu_button=79
dfu=0

if gpio_get_value ${dfu_button}
then
	dfu=1
else
	timeout -s -a 1
	if gpio_get_value ${dfu_button}
	then
		dfu=1
	fi
fi

if [ ${dfu} -eq 1 ]
then
	led green 1
	led red 1
	echo "Activating DFU"
	usbgadget -a -D
else
	led green 1
	echo "Activating USB console"
	usbgadget -a
fi
EOF

Note that current DFU implemetation does not follow DFU 1.1 specification,
that's something courious reader should fix ;-)

	ladis

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
