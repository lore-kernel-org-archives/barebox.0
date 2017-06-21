Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail34.e-mind.com ([188.94.192.34] helo=qmail.e-mind.com)
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dNhP1-0004iV-EW
 for barebox@lists.infradead.org; Wed, 21 Jun 2017 15:18:45 +0000
References: <63687e34-f354-81d3-aed7-1a59866925c5@eurekelettronica.it>
 <2f43179e-2aa0-1dba-eafa-a9c0025afd24@eurekelettronica.it>
 <1487689380.2268.18.camel@pengutronix.de>
 <82857526-9f9a-2878-9b8e-070f124e2a41@eurekelettronica.it>
 <20170621063246.wdfct6r2boyx4xo3@pengutronix.de>
 <126e2527-f179-0c82-c384-c6c975a7c8e9@eurekelettronica.it>
 <1498045832.2904.105.camel@pengutronix.de>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <3f12f02e-cccc-1edb-94d1-8cff2b69c808@eurekelettronica.it>
Date: Wed, 21 Jun 2017 17:18:15 +0200
MIME-Version: 1.0
In-Reply-To: <1498045832.2904.105.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Fwd: Barebox 2017.02 works great but no Linux Framebuffer... :-/
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/21/2017 01:50 PM, Lucas Stach wrote:

> The fbdev emulation in the imx-drm driver defaults to 16bpp. If you want
> to change this you need to provide the module parameter
> "legacyfb_depth=32".
>

>
> Debian GNU/Linux 8 edelin ttymxc2
>
> edelin login: root
> Password:
> Linux edelin 4.9.7-EK20170621 #1 SMP Wed Jun 21 15:23:57 CEST 2017 armv7l
>
> The programs included with the Debian GNU/Linux system are free software;
> the exact distribution terms for each program are described in the
> individual files in /usr/share/doc/*/copyright.
>
> Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
> permitted by applicable law.
> root@edelin:~# fbset
>
> mode "1280x800"
>     geometry 1280 800 1280 800 16
>     timings 0 0 0 0 0 0 0
>     accel true
>     rgba 5/11,6/5,5/0,0/0
> endmode
>
> root@edelin:~# cat /proc/cmdline
> console=ttymxc2,115200 rootwait noswap ip=none noinitrd rootfstype=nilfs2 \
 > root=/dev/mmcblk1p3 fec.macaddr=0x7a,0x3f,0x03,0xe3,0xa2,0xff \
 > system_rev=0xe3600000 system_serialnr=0x00000000 \
 > lcd_type=am1280800n3tz fastboot quiet loglevel=3 console=tty0 \
 > video=mxcfb0:dev=ldb,if=RGB24,bpp=32 \
 > fbmem=32M vmalloc=400M imx-drm.legacyfb_depth=32

As you can see imx-drm.legacy_depth=32 is passed to the kernel from 
bootloader.

The CONFIG for FrameBuffer Emulation with DRM and HELPERS are enabled.

But fbset is telling me 16 bpp... :-(

Any help?
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
