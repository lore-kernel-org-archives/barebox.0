Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PF3jp-0004Kq-C0
	for barebox@lists.infradead.org; Sun, 07 Nov 2010 11:48:46 +0000
Date: Sun, 7 Nov 2010 12:48:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101107114842.GB6017@pengutronix.de>
References: <24A9345B397CD24AA76A4E82E237956544B9560AE5@XCHTS.tmt.telital.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24A9345B397CD24AA76A4E82E237956544B9560AE5@XCHTS.tmt.telital.com>
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
Subject: Re: AT91SAM9260-EK NAND Driver error
To: Fabio Porcedda <Fabio.Porcedda@telit.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Fabio,

On Fri, Nov 05, 2010 at 06:26:43PM +0100, Fabio Porcedda wrote:
> Hi all,
> I have trouble reading from the nand device driver.
> I'm using the Atmel AT91SAM9260-EK board with barebox v2010.11.0,
> I'm using the at91sam9260ek default config with the "Atmel (AT91SAM9xxx) NAND driver" enabled .
> 
> When I try to access the nand device I have an error:
> 
> barebox:/ md -s /dev/nand0
> err -74
> read: error 74

74 is EBADMSG which means that the checksum is wrong. Does this sector
work with U-Boot?
U-Boot seems to work in software ecc mode whereas barebox uses hardware
ecc. Both have incompatible oob layouts. So either erase your nand and
write it again with babebox (in which case U-Boot won't be able to
access the nand) or switch barebox to software ecc (look for ecc_mode in
your board file).

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
