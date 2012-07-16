Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqhUM-0006zY-Ik
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 09:21:11 +0000
Date: Mon, 16 Jul 2012 11:21:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120716092101.GI30009@pengutronix.de>
References: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
 <20120716085418.GG30009@pengutronix.de>
 <OFCC857403.C150E96B-ONC1257A3D.003283FD-C1257A3D.0032D943@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OFCC857403.C150E96B-ONC1257A3D.003283FD-C1257A3D.0032D943@o0802.rafi.inhouse>
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
Subject: Re: Antwort: Re: barebox image size
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

On Mon, Jul 16, 2012 at 11:15:24AM +0200, christian.buettner@rafi.de wrote:
> 
> imx_nand_load_image() is never used in my imx53 board init code.. is this 
> the fault?
> 

On i.MX53 there might be a similar issue. You probably have something
like this in your board:

struct imx_flash_header_v2 __flash_header_section flash_header = {
	.header.tag		= IVT_HEADER_TAG,
	.header.length		= cpu_to_be16(32),
	.header.version		= IVT_VERSION,

	.entry			= APP_DEST + 0x1000,
	.dcd_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, dcd),
	.boot_data_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, boot_data),
	.self			= APP_DEST + 0x400,

	.boot_data.start	= APP_DEST,
	.boot_data.size		= DCD_BAREBOX_SIZE,

.boot_data.size is the interesting field. What do you have here?

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
