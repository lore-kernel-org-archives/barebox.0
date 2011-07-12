Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QgdQE-0007Ml-Eg
	for barebox@lists.infradead.org; Tue, 12 Jul 2011 13:54:48 +0000
Date: Tue, 12 Jul 2011 15:54:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110712135443.GW6069@pengutronix.de>
References: <CAM9uW_57ecdoGWdV9pqNjBfkCo5xS-R1zkY910_yvBLKHEYzxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM9uW_57ecdoGWdV9pqNjBfkCo5xS-R1zkY910_yvBLKHEYzxQ@mail.gmail.com>
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
Subject: Re: FEC Not working with imx27 based board
To: Kamel BOUHARA <k.bouhara@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 11, 2011 at 05:14:54PM +0200, Kamel BOUHARA wrote:
> Hi,
> 
> Im trying to port barebox to my Armadeus apf27 board (based on the Freescale
> imx27 with a 512MiB NAND and 1GB of SDRAM).
> I've first tried the phytec imx27 configuration and I got it worked until
> the Linux uncompressing task (the machine ID is bad so I didn't expect it
> will boot fine :)).
> So I just copied the phycard-imx27 board directory and I followed the
> boards.dox in order to add support for my board.
> But when I've tried to boot again it was not working anymore ...
> 
> There are somethings stranges with the FEC, here is the result of a memory
> display with both phytec and my own board :
> 
> > barebox@Phytec phyCard-i.MX27:/ md -s /dev/phy0
> >
> > 00000000: ffffffff ffffffff ffffffff ffffffff ................
> >
> > 00000010: ffffffff ffffffff ffffffff ffffffff ................
> >
> > 00000020: ffffffff ffffffff ffffffff ffffffff ................
> >
> > 00000030: ffffffff ffffffff ffffffff ffffffff ................

This means your phy is not configured correctly. Do you usse the correct
address (can be passed in platform_data).

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
