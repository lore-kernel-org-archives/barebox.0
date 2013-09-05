Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VHTLM-0000tM-8l
 for barebox@lists.infradead.org; Thu, 05 Sep 2013 06:47:05 +0000
Date: Thu, 5 Sep 2013 08:46:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130905064639.GO30088@pengutronix.de>
References: <20130905010436.GP19598@titan.lakedaemon.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130905010436.GP19598@titan.lakedaemon.net>
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
To: Jason Cooper <barebox@lakedaemon.net>
Cc: barebox@lists.infradead.org

Hi Jason,

On Wed, Sep 04, 2013 at 09:04:36PM -0400, Jason Cooper wrote:
> All,
> 
> This is the first I've messed with i.MX, so I'm a little lost. :)
> 
> I'm putting together a patch to add support for the SanDisk Connect
> Wireless Media Drive [1], code dump from SanDisk is here [2].  It turns
> out when you unplug the battery, it'll show up as the Freescale hid.
> 
> Here's what I get:
> 
> $ ./scripts/imx/imx-image -c \
> arch/arm/boards/sandisk-connect-wmd/flash-header-lpddr1.imxcfg -f \
> barebox.bin -o barebox.imx
> $ sudo ./scripts/imx/imx-usb-loader -vvvvv ./barebox.imx 
> found i.MX50 USB device [15a2:0052]

I never tested this on an i.MX50 due to lack of hardware. Have a look
at scripts/imx/imx-usb-loader.c at imx_ids. i.MX50 is very similar to
i.MX51. The i.MX51 has:

	{
		.vid = 0x15a2,
		.pid = 0x0041,
		.name = "i.MX51",
		.header_type = HDR_MX51,
		.mode = MODE_BULK,
		.max_transfer = 64,
	},

The header_type, mode and max_transfer fields are missing for i.MX50. I
assume that's the problem.

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
