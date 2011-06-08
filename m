Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QUEa7-0006kP-3T
	for barebox@lists.infradead.org; Wed, 08 Jun 2011 08:57:43 +0000
Date: Wed, 8 Jun 2011 10:57:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110608085740.GM23771@pengutronix.de>
References: <BANLkTim_ANic48yp1a1rKP6r+me=_xiGdA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTim_ANic48yp1a1rKP6r+me=_xiGdA@mail.gmail.com>
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
Subject: Re: Support for transfer other than tftp
To: Vikram Narayanan <vikram186@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 08, 2011 at 01:42:28PM +0530, Vikram Narayanan wrote:
> Hi,
> 
> Are there any other mechanisms to transfer files to the board other
> than tftp using barebox?

Yes, nfs ;)

> I don't have ethernet support in my board.

D'oh. What do you have then? You can transfer files via USB using a
USB ethernet dongle or via USB device (using DFU, device firmware
update). SD/MMC also works. As a last fallback you can use the serial
port using the loadb command.

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
