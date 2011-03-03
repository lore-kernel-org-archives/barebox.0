Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pv9kI-0007bz-VK
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 14:43:16 +0000
Date: Thu, 3 Mar 2011 15:43:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110303144312.GS29521@pengutronix.de>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FC6@SRV-VS06.TELEVIC.COM>
	<20110303123324.GK29521@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FE1@SRV-VS06.TELEVIC.COM>
	<20110303141338.GR29521@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FEC@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FEC@SRV-VS06.TELEVIC.COM>
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
Subject: Re: bootargs
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Mar 03, 2011 at 03:23:07PM +0100, Vanalme Filip wrote:
> List of all partitions:
> No filesystem could mount root, tried:  jffs2
> Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(2,0)

You'll need to register the nand device in your board, i.e. something
like this:

static const struct mxc_nand_platform_data
pca100_nand_board_info __initconst = {
        .width = 1,
        .hw_ecc = 1,
};

	imx27_add_mxc_nand(&pca100_nand_board_info);

The vanilla kernel does not (yet) support nand on the i.MX27 pdk.

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
