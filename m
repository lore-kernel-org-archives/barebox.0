Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.42])
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cgBs5-0007Wu-OJ
 for barebox@lists.infradead.org; Tue, 21 Feb 2017 14:56:56 +0000
References: <63687e34-f354-81d3-aed7-1a59866925c5@eurekelettronica.it>
 <2f43179e-2aa0-1dba-eafa-a9c0025afd24@eurekelettronica.it>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <07c421c6-d583-9b6f-4ff5-f62c368df986@eurekelettronica.it>
Date: Tue, 21 Feb 2017 15:56:29 +0100
MIME-Version: 1.0
In-Reply-To: <2f43179e-2aa0-1dba-eafa-a9c0025afd24@eurekelettronica.it>
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
To: barebox@lists.infradead.org

On 02/21/2017 02:04 PM, gianluca wrote:
>
> Hello everybody!
>
> I am fighting to enable ldb in Linux 4.9.7. In barebox the SAME
> device-tree is modified by barebox to enable/disable the ldb or hdmi
> depending on what is found.
>
> During Linux bootup with HDMI only, it works with no hassle.
>
> If booting with ldb it does not start the ldb driver registration due to
> a panel/bridge missing.
>
> In the config of linux kernel I have (as imx_v6_v7_defconfig) all drm
> and simple panel enabled.
>
> What is missing???
>

At the moment I can clearly state that (as kernel 4.9.7):

in the imx-ldb.c (line 711) in the function imx_ldb_bind() the error is 
the channel->panel AND channel->bridge ARE both NULL.

The struct device_node *ep = of_graph_get_endpoint_by_regs(child, 
imx_ldb->lvds_mux ? 4 : 2, -1) is not null and the remote struct 
device_node as full name has: /panel.

This look suspicious to me as I am expecting a full_name as: 
/soc/node/this/is/a/complete/name/panel stuff.

Anyway this issue is preventing to continue and registering a frame 
buffer on the lvds channel.

Can anybody point me in the right direction? In the next few moments I 
will try to diff the device-tree passed from barebox to linux kernel and 
the device-tree expected.

Hold on... ;-)

Regards,
Gianluca
>
> -------- Forwarded Message --------
> Subject: Barebox 2017.02 works great but no Linux Framebuffer... :-/
> Date: Mon, 20 Feb 2017 16:36:06 +0100
> From: gianluca <gianlucarenzi@eurekelettronica.it>
> To: Sascha Hauer <s.hauer@pengutronix.de>
>
> Hello Sascha,
>
> During last week I was able to activate/deactivate the hdmi and ldb
> nodes from internal device-tree of Barebox and everything is working great.
>
> Now I would like to boot up with the kernel 4.9.7 with the following
> commandline but it fails.
>
> The kernelcmd line is:
>
>> console=ttymxc2,115200 rootwait noswap ip=none noinitrd
>> rootfstype=nilfs2 root=/dev/mmcblk1p3
>> fec.macaddr=0x7a,0x3f,0x03,0xe3,0xa2,0xff system_rev=0xe3600000
>> system_serialnr=0x00000000 lcd_type=am1280800n3tz fastboot quiet
>> loglevel=3 console=tty0  video=mxcfb0:dev=ldb,if=RGB24,bpp=32
>> fbmem=32M vmalloc=400M
>
> The problem is the ldb (imx-ldb.c you wrote in kernel
> drivers/gpu/drm/imx...). It fails with the following error:
>
>> [    7.526349] imx-ldb 2000000.aips-bus:ldb@020e0008: panel/bridge not
>> found: /panel --
>> [    7.526369] imx-drm display-subsystem: failed to bind
>> 2000000.aips-bus:ldb@020e0008 (ops 0xc097aaa0): -517
>> [    7.526785] imx-drm display-subsystem: master bind failed: -517
>
> The device-tree is attached.
>
> The device tree is the same as Barebox (it has only an #included
> commented out).
>
> Both hdmi and ldb nodes are initially left "disabled" then barebox
> enable the node corresponding to the hardware found (i.e. it changes the
> status to "okay")
>
> In barebox everything is working.
>
> In linux NOT. What is exactly a 'channel->bridge' and 'channel->panel'
> in device-tree therminology?
>
> Barebox is working without it, so I suppose it was working in Linux
> kernel too...
>
> Regards,
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>


-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
