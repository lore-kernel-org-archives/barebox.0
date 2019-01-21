Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glV3l-0000hT-Ni
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 08:36:11 +0000
Date: Mon, 21 Jan 2019 09:35:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190121083555.mmsrjpw5at4kv7y2@pengutronix.de>
References: <20190119005018.31502-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190119005018.31502-1-vivien.didelot@gmail.com>
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
Subject: Re: [PATCH] defaultenv-2: trigger DHCP before booting 'net'
To: Vivien Didelot <vivien.didelot@gmail.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Fri, Jan 18, 2019 at 07:50:18PM -0500, Vivien Didelot wrote:
> Some variables may be set from DHCP requests, as shown below:
> 
>     barebox@ZII VF610 Development Board, Rev C:/ echo $global.hostname
>     dev-rev-c
>     barebox@ZII VF610 Development Board, Rev C:/ echo $global.net.server
>     0.0.0.0
>     barebox@ZII VF610 Development Board, Rev C:/ dhcp
>     eth0: 100Mbps full duplex link detected
>     T T T eth0: DHCP client bound to address 192.168.203.31
>     barebox@ZII VF610 Development Board, Rev C:/ echo $global.hostname
>     zii-dev-rev-c-1
>     barebox@ZII VF610 Development Board, Rev C:/ echo $global.net.server
>     192.168.203.1
>     barebox@ZII VF610 Development Board, Rev C:/
> 
> These variables are used by the boot/net script, so it is necessary
> to trigger DHCP before we set the TFTP file paths, otherwise booting
> from net will fail like below and will need to be triggered twice:
> 
>     running /env/bin/init...
> 
>     Hit m for menu or any key to stop autoboot:    1
>     booting 'net'
>     eth0: 100Mbps full duplex link detected
>     T T T eth0: DHCP client bound to address 192.168.203.31
>     WARNING: eth1: No MAC address set. Using random address 8a:ee:18:f5:98:e7
>     T T T T T T T T T T T T T T T T T T T T could not open /mnt/tftp/none-linux-dev-rev-c: No such file or directory
>     ERROR: Booting 'net' failed: No such file or directory
>     boot: No such file or directory
> 
>     type exit to get to the menu
>     barebox@ZII VF610 Development Board, Rev C:/ boot
>     booting 'net'
> 
>     Loading ARM Linux zImage '/mnt/tftp/none-linux-zii-dev-rev-c-1'
>     Loaded initrd unknown '/mnt/tftp/none-initramfs-zii-dev-rev-c-1'
>     initrd is at 0x82509000-0x835593ff
>     Loading devicetree from '/mnt/tftp/none-oftree-zii-dev-rev-c-1'
>     commandline:  console=ttyLP0,115200n8 ip=dhcp
>     Ucompressing Linux... done, booting the kernel.
> 
> To fix this, bring the interfaces up before setting up tftpboot.
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> ---
>  defaultenv/defaultenv-2-base/boot/net | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

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
