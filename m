Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkuKP-0000qT-Bl
 for barebox@lists.infradead.org; Fri, 07 Jun 2013 10:55:34 +0000
Date: Fri, 7 Jun 2013 12:55:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130607105505.GE32299@pengutronix.de>
References: <51B0B2D6.3030407@knowtrek.com>
 <20130606162120.GA32299@pengutronix.de>
 <51B16AD0.4030206@knowtrek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51B16AD0.4030206@knowtrek.com>
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
Subject: Re: how to flash barebox and set root variable?
To: Adam Furmanczuk <afurmanczuk@knowtrek.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 07, 2013 at 07:08:32AM +0200, Adam Furmanczuk wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> Hi Sascha,
> 
> thank you very much for your help.
> 
> > What board do you have? Is it one supported by barebox or do you
> > have your own patches?
> 
> The board is a imx536 based [1]. The expansion board for this is self
> made. We connect RX, TX, Ground to a OCD-Adapter [2] and are able to
> communicate with barebox.
> 
> My Barebox version is: barebox 2012.03.0-00162-g3f84abc-dirty (Sep 24
> 2012 - 10:51:42) it was already flashed in nor when we recieved the board.

I see. They should provide the source code for this. I haven't
downloaded the CD images they provide. Do you know whether there
are barebox sources provided on the CDs?

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
