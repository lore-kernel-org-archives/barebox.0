Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SAzmD-0003vh-0L
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 08:23:18 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 23 Mar 2012 09:22:42 +0100
References: <CAM9uW_6qLEEmNFtTxLxNHx86zzFnHRfxB+1pm+VfRfjf4FrfBg@mail.gmail.com>
In-Reply-To: <CAM9uW_6qLEEmNFtTxLxNHx86zzFnHRfxB+1pm+VfRfjf4FrfBg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201203230922.42378.jbe@pengutronix.de>
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
Subject: Re: Network Issue with Mini2440
To: barebox@lists.infradead.org

Hi Kamel,

Kamel BOUHARA wrote:
> I'm trying to port the last release of barebox to my sbc2440-III board with
> the base config. of a mini2440 but unfortunately I'm facing a network issue
> when trying to boot from nfs or to load files with tftp.
>
> After checking all the parameters (pll, ram init etc.) I figured out that
> the chip select and interrupt pinout were not good and I changed them to
> fit with my board schematic.
> So I have a well boot on barebox everything seems to work as you can see
> here :
> [...]

I changes the DM9000 driver recently. So, I tested both DM9000 revisions I
have access to (based on the Barebox's next branch).

First on the Mini2440. It comes with a DM9000E:

---------------------------------------------------------------------------

mini2440:/ tftp barebox-mini2440 /dev/ram0
TFTP from server 192.168.1.7 ('barebox-mini2440' -> '/dev/ram0')
        #################################
mini2440:/ go /dev/ram0
## Starting application at 0x30000000 ...

barebox 2012.02.0-00259-g773e35b (Mar 23 2012 - 08:53:16)

Board: Mini 2440
NAND device: Manufacturer ID: 0xec, Chip ID: 0xf1 (Samsung NAND 128MiB 3,3V 8-bit)
Bad block table found at page 65472, version 0x01
Bad block table found at page 65408, version 0x01
nand_read_bbt: Bad block at 0x019e0000
nand_read_bbt: Bad block at 0x02540000
dm9000@dm90000: Found DM9000E at i/o: 0x20000300
s3c_mci@mci0: registered as mci0
refclk:    12000 kHz
mpll:     405000 kHz
upll:      48000 kHz
fclk:     405000 kHz
hclk:     101250 kHz
pclk:      50625 kHz
SDRAM1:   CL2@101MHz
Malloc space: 0x33a00000 -> 0x33dfffff (size  4 MB)
Stack space : 0x339f8000 -> 0x33a00000 (size 32 kB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit any key to stop autoboot:  3
mini2440:/ devinfo eth0
resources:
driver: none

Parameters:
          ipaddr = 192.168.1.241
         ethaddr = 36:CF:EC:0D:18:Bd
         gateway = <NULL>
         netmask = 255.255.255.0
        serverip = 192.168.1.7
mini2440:/ ping 192.168.1.7
phy0: Link is up - 100/Full
host 192.168.1.7 is alive

---------------------------------------------------------------------------

And here with my Mini6410. This comes with a DM9000A like your system.

---------------------------------------------------------------------------

barebox 2012.02.0-00259-g773e35b-dirty (Mar 23 2012 - 09:19:48)

Board: Mini 6410
Will write 0x00021300
dm9000@dm90000: Found DM9000A at i/o: 0x18000300
eth@eth0: got MAC address from EEPROM: 08:90:90:90:90:90
refclk:    12000 kHz
apll:     532000 kHz
mpll:     532000 kHz
CPU:      532000 kHz
hclkx2:   266000 kHz
hclk:     133000 kHz
pclk:      66500 kHz
Malloc space: 0x57bc0000 -> 0x57fbffff (size  4 MB)
Stack space : 0x57bb8000 -> 0x57bc0000 (size 32 kB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit any key to stop autoboot:  3
mini6410:/ devinfo eth0
resources:
driver: none

Parameters:
          ipaddr = 192.168.1.187
         ethaddr = 08:90:90:90:90:90
         gateway = 192.168.1.1
         netmask = 255.255.255.0
        serverip = 192.168.1.7
mini6410:/ ping 192.168.1.7
phy0: Link is up - 100/Full
host 192.168.1.7 is alive

---------------------------------------------------------------------------

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
