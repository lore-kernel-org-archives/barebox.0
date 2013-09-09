Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mho-02-ewr.mailhop.org ([204.13.248.72])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJ5TA-0005Ho-4R
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 17:41:49 +0000
Date: Mon, 9 Sep 2013 13:41:17 -0400
From: Jason Cooper <barebox@lakedaemon.net>
Message-ID: <20130909174117.GA12927@titan.lakedaemon.net>
References: <20130905010436.GP19598@titan.lakedaemon.net>
 <20130905064639.GO30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130905064639.GO30088@pengutronix.de>
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
Subject: Re: imx-usb-image write to usb error
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 05, 2013 at 08:46:39AM +0200, Sascha Hauer wrote:
> Hi Jason,
> 
> On Wed, Sep 04, 2013 at 09:04:36PM -0400, Jason Cooper wrote:
> > All,
> > 
> > This is the first I've messed with i.MX, so I'm a little lost. :)
> > 
> > I'm putting together a patch to add support for the SanDisk Connect
> > Wireless Media Drive [1], code dump from SanDisk is here [2].  It turns
> > out when you unplug the battery, it'll show up as the Freescale hid.
> > 
> > Here's what I get:
> > 
> > $ ./scripts/imx/imx-image -c \
> > arch/arm/boards/sandisk-connect-wmd/flash-header-lpddr1.imxcfg -f \
> > barebox.bin -o barebox.imx
> > $ sudo ./scripts/imx/imx-usb-loader -vvvvv ./barebox.imx 
> > found i.MX50 USB device [15a2:0052]
> 
> I never tested this on an i.MX50 due to lack of hardware. Have a look
> at scripts/imx/imx-usb-loader.c at imx_ids. i.MX50 is very similar to
> i.MX51. The i.MX51 has:
> 
> 	{
> 		.vid = 0x15a2,
> 		.pid = 0x0041,
> 		.name = "i.MX51",
> 		.header_type = HDR_MX51,
> 		.mode = MODE_BULK,
> 		.max_transfer = 64,
> 	},
> 
> The header_type, mode and max_transfer fields are missing for i.MX50. I
> assume that's the problem.

Well, it looks like it works, but I'm unable to get a barebox prompt on
the tty.  (patches to come once I get a prompt).  So I decided to try
tackling the problem from the other end for a bit.  Namely booting a
mainline kernel from the installed u-boot.

Something is confusing me though.  The part number on the chip is
MCIMX502CVK8B.  Which, iiuc, is an imx51.  The provided kernel spits out
this:

[    0.000000] MXC_Early serial console at MMIO 0x53fbc000 (options '115200')

However, the only imx SoCs using that address range are imx53 and imx25,
according to arch/arm/boot/dts/ in Linux, at least.

In addition, the docs for the imx50 clearly state that it uses DCD v2
(version = 0x40) [1] (Table 6-27, DCD Header), but the code in barebox's
imx-image.c says imx51 uses DCD v1...

Anyone with more experience with Freescale SoCs care to fill in the
blanks?  The first hint I'm on the wrong path is that I feel like I need
to write a whole dtsi file from scratch. :-/

thx,

Jason.

[1] http://cache.freescale.com/files/32bit/doc/ref_manual/IMX50RM.pdf

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
