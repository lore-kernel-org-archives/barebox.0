Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORopZ-0005P8-P9
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 15:59:10 +0000
Date: Thu, 24 Jun 2010 17:59:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100624155907.GD12115@pengutronix.de>
References: <ed04cb68b50f6426c0f154e489cf6436877e4b7a.1277385845.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ed04cb68b50f6426c0f154e489cf6436877e4b7a.1277385845.git.baruch@tkos.co.il>
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
Subject: Re: [PATCH net-pu] tftp: fix get
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi Baruch,

On Thu, Jun 24, 2010 at 04:26:16PM +0300, Baruch Siach wrote:
> With this patch tftp start requesting block 0 instead of 1. This fixes
> tftp get on i.MX25 based board with tftpd-hpa server.

This is strange. In case of tftp get this variable is not used for
sending packets. We do not request blocks with a certain number, we only
request a file and ack incoming packets. If you look at 'case TFTP_DATA'
in tftp_handler(), you'll see tftp_block getting overwritten by the
block number of the incoming packet.

The initialization of tftp_block is only used for tftp push. For tftp
push RFC1350 says that the first packet we send has to have block number
one (not zero). 

> 
> tftp push isn't working though. I get:
> 
> error frame: 0x83705178 0x00000882
> 
> from the fec driver. I'll investigate this if I have time.

I also see this message sometimes, but usually this is not a problem.
The transfer continues once the timeout handler triggers and the packet
is resent.

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
