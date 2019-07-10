Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl7Ue-0006Xm-51
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 07:58:26 +0000
Date: Wed, 10 Jul 2019 09:58:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190710075821.vhbdbkv67raa4zf4@pengutronix.de>
References: <875f8014-b696-b0dc-3c9b-0a9e2d573aa6@atsonline.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <875f8014-b696-b0dc-3c9b-0a9e2d573aa6@atsonline.de>
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
Subject: Re: Oselas 2018.12.0 toolchain seems to break barebox for AM335x
To: Andreas Geisenhainer <Andreas.Geisenhainer@atsonline.de>
Cc: barebox@lists.infradead.org

Hi Andreas,

On Mon, Jul 08, 2019 at 04:15:00PM +0200, Andreas Geisenhainer wrote:
> Hello barebox mailinglist.
> 
> While updating my local ptxdist setup I ran into the following problem.
> 
> Updating the toolchain to OSELAS_2018.12.0 and copiling barebox
> it decided not to start anymore. To my surprise, compiling the
> exact same source with the previous OSELAS toolchain (2018.02.0)
> just works.
> I installed the toolchains through the official debian repository.
> 
> We're still running an older barebox (2015.09), so i grabed a
> stock, barebox 2019.06.1 and it produces the exact same behaviour.
> 
> We're running barebox an a Phytec PhyCORE AM335x platform, and the
> behaviour does emerge for the default "barebox-am335x-phytec-phycore.img"
> image from barebox.

I just tried to reproduce this on a beaglebone black as this is at least
the same SoC. Unfortunately I was not successful. I saw this one time:

| barebox@TI AM335x BeagleBone black:/ bootm mnt/tftp/b
| eth0: 100Mbps full duplex link detected
| eth0: DHCP client bound to address 192.168.24.94
| 
| Loading ARM barebox image 'mnt/tftp/b'
| unable to handle paging request at address 0x020c8260
| pc : [<900a7ba6>]    lr : [<900a7c3b>]
| sp : 9ffefd70  ip : 00000000  fp : 00000000
| r10: 900a4b50  r9 : 900a7abd  r8 : 9fe6aba2
| r7 : 9ffefd70  r6 : 40000000  r5 : 00000d80  r4 : 402f0400
| r3 : 020c8260  r2 : 00000006  r1 : 00000d80  r0 : 40000000
| Flags: nZCv  IRQs off  FIQs on  Mode SVC_32
| 
| WARNING: [<9fe58229>] (unwind_backtrace+0x1/0x68) from [<9fe00ff5>] (panic+0x1d/0x34)
| WARNING: [<9fe00ff5>] (panic+0x1d/0x34) from [<9fe5657d>] (do_exception+0xd/0x10)
| WARNING: [<9fe5657d>] (do_exception+0xd/0x10) from [<9fe565dd>] (do_data_abort+0x21/0x2c)
| WARNING: [<9fe565dd>] (do_data_abort+0x21/0x2c) from [<9fe561f4>] (do_abort_6+0x48/0x54)

Unfortunately this disappeared after some changes and never came back.

Does your barebox always crash or does the behaviour change when you try
adding debugging? you might want to add some putc_ll() at earlier places
to see how far you get.

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
