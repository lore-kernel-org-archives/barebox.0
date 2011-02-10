Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PnVLa-0003Xe-42
	for barebox@lists.infradead.org; Thu, 10 Feb 2011 12:10:07 +0000
Date: Thu, 10 Feb 2011 13:10:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110210121003.GT9041@pengutronix.de>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FEA30445A@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FEA30445A@SRV-VS06.TELEVIC.COM>
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
Subject: Re: barebox startup
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Feb 10, 2011 at 10:04:26AM +0100, Vanalme Filip wrote:
> After struggling a while with i.MX27 NAND flash controller, I was able to start Barebox. Now, I have added some device, but I am not sure that everything starts as it should.
> This is how my devices_init function looks like now : 
> 
> static struct memory_platform_data ram_pdata = {
> 	.name = "ram0",
> 	.flags = DEVFS_RDWR,
> };
> 
> static struct device_d sdram_dev = {
> 	.id	  = -1,
> 	.name     = "mem",
> 	.map_base = 0xa0000000,
> 	.size     = 128 * 1024 * 1024,  /* 128 MB SDRAM */
> 	.platform_data = &ram_pdata,
> };
> 
> static struct fec_platform_data fec_info = {
> 	.xcv_type = MII100,
> 	.phy_addr = 1,
> };

The phy address may be wrong, please check in the schematics/phy data
sheet whether it is correct.

> 
> 
> I expected to see the autoboot count-down and at least something about
> the network initialization.  I think it probably has something to do
> with the env/config script file. I don't know exactly how it should be
> used. I ran ./scripts/bareboxenv -s -p 0x10000 arch/arm/imx27pdk/env
> env.bin which created env.bin in the barebox root. Afterwards, when
> doing a make all, I could see that there is a /env folder on my device
> which contains the config file. I could execute that script from the
> command line, but I suppose it should be executed automatically
> somehow.

You should have something like the following in your config to get an
environment:

CONFIG_DEFAULT_ENVIRONMENT=y
CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/karo-tx28/env"

(with karo-tx28 being your board)

> 
> 
> For the moment, I don't have any activity on my Ethernet ports (no
> leds on or blinking), although I added the fec device. When I execute
> the dhcp command, I get :
> 
> barebox:/ dhcp
> warning: No MAC address set. Using random address 8E:A2:E8:DD:E2:73
> phy0: Link is up - 100/Full
> transmission timeout
> T transmission timeout
> T transmission timeout
> 
> But, whether I connect the cable or not, it always shows "phy0:Link is up - 100/Full".

Have a look at the output of md -s /dev/phy0. You should see valid phy
registers, not 0xffffffff.

> 
> I also have a problem with the environment settings. Obviously, I can
> set some environment variables, e.g. ipaddr=192.168.1.10 :
> 
> barebox:/ ipaddr=192.168.1.10
> barebox:/ printenv
> locals:
> ipaddr=192.168.1.10
> globals:
> barebox:/ saveenv
> saving environment
> barebox:/
> 
> But, although I did a saveenv (obviously successful), the environment
> settings disappear after resetting the board.

Unlike U-Boot barebox does not save the content of environment
variables. Instead it saves the content of /env/. So to change the ip
address do a 'edit /env/config', saveenv. Also, the ip address is stored
in a device variable which is accessible through eth0.ipaddr=a.b.c.d.

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
