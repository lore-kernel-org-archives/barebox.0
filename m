Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlxEJ-0007Ml-Nv
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 10:54:52 +0000
Date: Tue, 13 Oct 2015 12:54:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151013105428.GJ7858@pengutronix.de>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <87d1wk74nt.fsf@belgarion.home> <561BFECA.1010105@gmail.com>
 <87k2qr6go0.fsf@belgarion.home> <561C111E.7010106@gmail.com>
 <874mhv5cxm.fsf@belgarion.home> <561CD48A.9000301@gmail.com>
 <20151013102725.GH7858@pengutronix.de>
 <87wpur3ves.fsf@belgarion.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wpur3ves.fsf@belgarion.home>
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
Subject: Re: [PATCH 00/17] Armada 370/XP NAND driver
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On Tue, Oct 13, 2015 at 12:38:51PM +0200, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > In your temporary patch you have:
> >
> >> @@ -67,6 +71,9 @@ static int zylonite_devices_init(void)
> >>  			   &smsc91x_pdata);
> >>  	add_generic_device("mrvl_nand", DEVICE_ID_DYNAMIC, NULL,
> >>  			   0x43100000, 0x1000, IORESOURCE_MEM, &nand_pdata);
> >> +	clk = clk_get_sys("nand", NULL);
> >> +	if (!IS_ERR(clk))
> >> +		clkdev_add_physbase(clk, 0x43100000, NULL);
> >
> > Could it be that you register the clk lookup after the nand driver is probed? This
> > hunk should be moved before the nand device registration.
> That's what I had thought, but changing the order gave me a panic, so I didn't
> push forward.
> 
> This is what I had, decoded in [1].
> 
> Cheers.
> 
> --
> Robert
> 
> [1] My backtrace with the inversion :
> 
> barebox@Zylonite:/ bootm /mnt/tftp/barebox.bin
> bootm /mnt/tftp/barebox.bin
> netconsole: netconsole initialized with 255.255.255.255:6662
> eth0: 100Mbps full duplex link detected
> DHCP client bound to address 192.168.1.232
> 
> Loading ARM barebox image '/mnt/tftp/barebox.bin'
> commandline: ram=64M console=ttyS0,115200   mtdparts=pxa3xx_nand-0:128k@0(TIMH)ro,128k@128k(OBMI)ro,768k@256k(barebox),256k@1024k(barebox-env),12M@1280k(kernel),38016k@13568k(root)
> arch_number: 1233
> netconsole: port not set
> netconsole: registered as netconsole-1
> smc91c111 smc91c1110: chip is revision= 9, version= 2
> mdio_bus: miibus0: probed
> eth0: got preset MAC address: 00:0e:0c:a7:26:f7
> zylonite_devices_init(): clk = 83703328
> alloc_nand_resource(): clk_get() -> 83703328
> unable to handle NULL pointer dereference at address 0x00000004
> pc : [<83f15b9c>]    lr : [<83f15b90>]
> sp : 83fffed0  ip : 000001b0  fp : 00000000
> r10: 00000002  r9 : 83706888  r8 : 83f8c88c
> r7 : 00000000  r6 : 00000000  r5 : 83706948  r4 : 00000000
> r3 : 83706888  r2 : 43100000  r1 : 83f60783  r0 : 00000000
> Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
> (mrvl_nand_probe+0x1ac/0x650) from device_probe (/drivers/base/driver.c:93)
> (device_probe+0x30/0xb8) from match.part.3 (/drivers/base/driver.c:153)
> (match.part.3+0x44/0x54) from register_device (/drivers/base/driver.c:192)
> (register_device+0x120/0x15c) from add_generic_device (/drivers/base/resource.c:84)
> (add_generic_device+0x3c/0x48) from zylonite_devices_init (/arch/arm/boards/zylonite/board.c:78)
> (zylonite_devices_init+0x9c/0x108) from start_barebox (/common/startup.c:101)
> (start_barebox+0x30/0xe8) from __start (/arch/arm/cpu/start.c:142)
> (__start+0x124/0x13c) from 0x8386c290
> 
> (unwind_backtrace+0x0/0x90) from panic (/common/misc.c:209)
> (panic+0x28/0x38) from do_exception (/arch/arm/cpu/interrupts.c:85)
> (do_exception+0x10/0x14) from do_data_abort (/arch/arm/cpu/interrupts.c:139)
> (do_data_abort+0x2c/0x38) from do_abort_6 (:?)
> ### ERROR ### Please RESET the board ###
> 
> And a special gift :
> rj@belgarion:~/mio_linux/barebox$ addr2line -i -e barebox 0x83f15b9c
> /home/rj/mio_linux/barebox/drivers/mtd/nand/nand_mrvl_nfc.c:1172
> /home/rj/mio_linux/barebox/drivers/mtd/nand/nand_mrvl_nfc.c:1202

This seems to be in mrvl_nand_probe_dt() and we are probing without
device tree here, right?

We have:

	struct device_node *np = host->dev->device_node;
	const struct of_device_id *match =
		of_match_node(mrvl_nand_dt_ids, np);
	const struct mrvl_nand_variant *variant = match->data;

of_match_node() is a static inline wrapper returning NULL, so next line
we dereference a NULL pointer.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
