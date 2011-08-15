Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QstXl-0006yB-0l
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 09:33:13 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id D089AFFB00D
	for <barebox@lists.infradead.org>;
	Mon, 15 Aug 2011 11:33:31 +0200 (CEST)
Date: Mon, 15 Aug 2011 11:14:06 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110815091406.GD32705@game.jcrosoft.org>
References: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] parent fixups
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:46 Mon 15 Aug     , Sascha Hauer wrote:
> Hi,
> 
> We have a nice devinfo command which can print the devices as a tree.
> Let's make more use of it and make spi/network/console devices children
> of the corresponding hardware devices.
> Also, when a file under /dev/ is associated to a device, print the
> start and end with the information.
> 
> On a i.MX51 babbage board we change from:
> 
> devices:
> |----imx_serial0
> |----cs0
> |----mem0 (ram0)
> |----imx_iim0 (imx_iim_bank0, imx_iim_bank1, imx_iim_bank2, imx_iim_bank3, imx_iim_bank4, imx_iim_bank5, imx_iim_bank6, imx_iim_bank7)
> |----ramfs0
> |----devfs0
> |----mem1 (defaultenv)
> |----mem2 (mem)
> |----fec_imx0
> |----miidev0 (phy0)
> |----eth0
> |----imx-esdhc0
> |----mci0
> |----disk0
> |----imx_spi0
> |----mc13892-spi0 (mc13892)
> 
> to this:
> 
> devices:
> `---- imx_serial0
>      `---- cs0
> `---- mem0
>      `---- 0x00000000-0x1fffffff: /dev/ram0
> `---- imx_iim0
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank0
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank1
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank2
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank3
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank4
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank5
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank6
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank7
> `---- ramfs0
> `---- devfs0
> `---- mem1
>      `---- 0x00000000-0x00001e08: /dev/defaultenv
> `---- mem2
>      `---- 0x00000000-0xfffffffe: /dev/mem
> `---- fec_imx0
>      `---- miidev0
>           `---- 0x00000000-0x0000003f: /dev/phy0
>      `---- eth0
> `---- imx-esdhc0
>      `---- mci0
>           `---- disk0
> `---- imx_spi0
>      `---- mc13892-spi0
>           `---- 0x00000000-0x000000ff: /dev/mc13892
can we split tehem by bus?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
