Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkCCN-0000du-WF
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 10:43:45 +0000
Date: Thu, 28 Jun 2012 12:43:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120628104341.GW1623@pengutronix.de>
References: <4FBD05B8.40001@crane-soft.de>
 <20120524195543.GB30400@pengutronix.de>
 <4FBF5268.1040900@crane-soft.de>
 <20120531182724.GA30400@pengutronix.de>
 <4FEBFF6C.6010304@crane-soft.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4FEBFF6C.6010304@crane-soft.de>
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
Subject: Re: Booting PhyTec PCM043/IMX35  from USB/SD-Card
To: "Peter Kuennemann@Crane-Soft" <pkue@crane-soft.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 28, 2012 at 08:53:32AM +0200, Peter Kuennemann@Crane-Soft wrote:
> > 
> > Has this been solved in the mean time? The above looks correct, I have
> > no idea what's wrong.
> 
> The case has been partly solved now. I am able to boot from NAND and NOR but I cannot
> access the MMC. Reason for the kernel messages ...(driver?) above was a missing device
> "mxc_nand" in the kernel parms for mtdparts:
> 
>     mtdparts=physmap-flash.0:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root); \
>     mxc_nand:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)
> 
> However, I still cannot access the mmc from barebox. It would be enough to be able to
> read the mmc. I want to be able to store kernel or rootfs image updates on the mmc
> and flash them to either NAND or NOR after reboot to enable remote update services.
> 
> Question: "How can I access the MMC from barebox (read only may be sufficient)

The pcm043 currently does not have mmc support. You have to add this to
the board file:

imx35_add_mmc0(NULL);

or

imx35_add_mmc1(NULL);

depending on which port is routed to the slot. Also you have to setup
the iomuxer (you can probably copy the pin settings from the kernel). Of
course you also have to enable MMC support in the config.

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
