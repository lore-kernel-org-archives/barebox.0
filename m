Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y86sp-00006F-5Q
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 12:35:43 +0000
Message-ID: <1420461321.6731.34.camel@lws-gamez.phytec.de>
From: Teresa =?ISO-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
Date: Mon, 05 Jan 2015 13:35:21 +0100
In-Reply-To: <3444471.6ba7DjKbWe@laroq>
References: <3444471.6ba7DjKbWe@laroq>
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
Subject: Re: [PATCH] net: cpsw: Fix crashes on beaglebone black
To: ledphilippe@gmail.com
Cc: barebox@lists.infradead.org

Hello Philippe,

Am Samstag, den 27.12.2014, 15:39 +0100 schrieb ledphilippe@gmail.com:
> Hello,
> 
> The current version (2014.12.0-00116-ge91702b) crashes on the beaglebone black 
> if the ethernet driver is enabled. Here is the trace:
> 
> barebox 2014.12.0-00116-ge91702b #15 Sat Dec 27 15:30:25 CET 2014
> 
> 
> Board: TI AM335x BeagleBone black
> detected 'BeagleBone Black'
> cpsw 4a100000.ethernet: detected phy mask 0x1
> mdio_bus: miibus0: probed
> eth0: got preset MAC address: d0:39:72:41:0a:26
> cpsw 4a100000.ethernet: probe failed: I/O error
> unable to handle paging request at address 0x6e6f62f2
> pc : [<9fe24e4a>]    lr : [<9fe0751f>]
> sp : 9ffffe60  ip : ffffffff  fp : 00000000
> r10: 8ff1d8b8  r9 : 8ff12534  r8 : 8ff1d974
> r7 : ffffffff  r6 : 8ff1d8e0  r5 : 9fe55220  r4 : 6e6f62f2
> r3 : 00000000  r2 : 00000000  r1 : 8ff1d8e0  r0 : 6e6f62f2
> Flags: nZCV  IRQs off  FIQs on  Mode SVC_32
> [<9fe24e4a>] (strcmp+0xc/0x1a) from [<9fe0751f>] 
> (get_device_by_name_id+0x1f/0x38)
> [<9fe0751f>] (get_device_by_name_id+0x1f/0x38) from [<9fe07837>] 
> (register_device+0x17/0xc8)
> [<9fe07837>] (register_device+0x17/0xc8) from [<9fe1dcb3>] 
> (of_platform_device_create+0x17b/0x1b0)
> [<9fe1dcb3>] (of_platform_device_create+0x17b/0x1b0) from [<9fe1dd13>] 
> (of_platform_bus_create+0x2b/0x68)
> [<9fe1dd13>] (of_platform_bus_create+0x2b/0x68) from [<9fe1dda7>] 
> (of_platform_populate+0x2f/0x44)
> [<9fe1dda7>] (of_platform_populate+0x2f/0x44) from [<9fe07967>] 
> (platform_probe+0x9/0xa)
> [<9fe07967>] (platform_probe+0x9/0xa) from [<9fe07561>] 
> (device_probe+0x11/0x44)
> [<9fe07561>] (device_probe+0x11/0x44) from [<9fe075bb>] 
> (match.part.2+0x27/0x2e)
> [<9fe075bb>] (match.part.2+0x27/0x2e) from [<9fe076d5>] 
> (register_driver+0x59/0x74)
> [<9fe076d5>] (register_driver+0x59/0x74) from [<9fe00827>] 
> (start_barebox+0x1b/0xb8)
> [<9fe00827>] (start_barebox+0x1b/0xb8) from [<9fe3291f>] (__start+0xa3/0xb8)
> [<9fe3291f>] (__start+0xa3/0xb8) from [<9fe00005>] (__bare_init_start+0x1/0xc)
> 
> [<9fe32349>] (unwind_backtrace+0x1/0x58) from [<9fe258e9>] (panic+0x1d/0x34)
> [<9fe258e9>] (panic+0x1d/0x34) from [<9fe327e1>] (do_exception+0xd/0x10)
> [<9fe327e1>] (do_exception+0xd/0x10) from [<9fe32849>] 
> (do_data_abort+0x21/0x2c)
> [<9fe32849>] (do_data_abort+0x21/0x2c) from [<9fe32508>] 
> (data_abort+0x48/0x60)
> 
> 

I suspect the issue comes from the dummy cpsw_emac1 node which adds a
non existing phy in the beaglebone device tree. So the mdiobus_scan
fails. This patch will workaround the issue but I'm unsure about right
solution here. 

Regards,
Teresa 

> 
> The following patch resolves the problem on my board. Please review it and 
> check if it is fine.
> 
> Regards,
> 
> 
> Signed-off-by: Philippe Leduc <ledphilippe@gmail.com>
> ---
>  drivers/net/cpsw.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
> index b6618ad..311cd44 100644
> --- a/drivers/net/cpsw.c
> +++ b/drivers/net/cpsw.c
> @@ -1202,10 +1202,8 @@ int cpsw_probe(struct device_d *dev)
>                 struct phy_device *phy;
>  
>                 phy = mdiobus_scan(&priv->miibus, priv->slaves[i].phy_id);
> -               if (IS_ERR(phy)) {
> -                       ret = PTR_ERR(phy);
> -                       goto out;
> -               }
> +               if (IS_ERR(phy))
> +                       continue;
>  
>                 phy->dev.device_node = priv->slaves[i].dev.device_node;
>                 ret = phy_register_device(phy);



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
