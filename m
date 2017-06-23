Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail34.e-mind.com ([188.94.192.34] helo=qmail.e-mind.com)
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dOLAC-0003us-Sv
 for barebox@lists.infradead.org; Fri, 23 Jun 2017 09:46:07 +0000
References: <63687e34-f354-81d3-aed7-1a59866925c5@eurekelettronica.it>
 <2f43179e-2aa0-1dba-eafa-a9c0025afd24@eurekelettronica.it>
 <1487689380.2268.18.camel@pengutronix.de>
 <82857526-9f9a-2878-9b8e-070f124e2a41@eurekelettronica.it>
 <20170621063246.wdfct6r2boyx4xo3@pengutronix.de>
 <126e2527-f179-0c82-c384-c6c975a7c8e9@eurekelettronica.it>
 <1498045832.2904.105.camel@pengutronix.de>
 <3f12f02e-cccc-1edb-94d1-8cff2b69c808@eurekelettronica.it>
 <1498059009.2904.108.camel@pengutronix.de>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <aaba2d2b-6d53-07a7-bfdd-f70c22ad13c6@eurekelettronica.it>
Date: Fri, 23 Jun 2017 11:45:31 +0200
MIME-Version: 1.0
In-Reply-To: <1498059009.2904.108.camel@pengutronix.de>
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

On 06/21/2017 05:30 PM, Lucas Stach wrote:
> Am Mittwoch, den 21.06.2017, 17:18 +0200 schrieb gianluca:
>> On 06/21/2017 01:50 PM, Lucas Stach wrote:
>>> root@edelin:~# cat /proc/cmdline
>>> console=ttymxc2,115200 rootwait noswap ip=none noinitrd rootfstype=nilfs2 \
>>  > root=/dev/mmcblk1p3 fec.macaddr=0x7a,0x3f,0x03,0xe3,0xa2,0xff \
>>  > system_rev=0xe3600000 system_serialnr=0x00000000 \
>>  > lcd_type=am1280800n3tz fastboot quiet loglevel=3 console=tty0 \
>>  > video=mxcfb0:dev=ldb,if=RGB24,bpp=32 \
>>  > fbmem=32M vmalloc=400M imx-drm.legacyfb_depth=32
>>
>> As you can see imx-drm.legacy_depth=32 is passed to the kernel from
>> bootloader.
>
> The module is called "imxdrm" without a dash, so the correct way to
> specify the parameter on the command line is "imxdrm.legacyfb_depth=32".
>
> I'm not sure what you are trying to achieve with the mxcfb and fbmem
> parameters. They are certainly ignored by a mainline kernel.
>

It works now, the culprit was the name of the driver: imxdrm is the 
right one.


Now a little bit off-topic question:

- Is it better to use Xorg X11 (with a custom full screen application 
using Qt 5) [with all concerns about using a Debian Jessie for armhf, 
i.e.: imx-drm-vivante driver, opengl/opencl custom libraries etc.,...] 
or using a framebuffer Qt application??? I know the framebuffer does not 
have any acceleration, but I suppose the CPU (even the dual-core) is 
powerful enough to manage some simple transition of the application pages...

What do you think about this?

Regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
