Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z03yP-0003UP-0o
 for barebox@lists.infradead.org; Wed, 03 Jun 2015 08:24:29 +0000
Date: Wed, 3 Jun 2015 10:24:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150603082406.GS6325@pengutronix.de>
References: <556C271F.6040005@meteocontrol.de>
 <20150601120652.GH6325@pengutronix.de>
 <556C4C10.3010400@meteocontrol.de>
 <556C503B.4010405@meteocontrol.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <556C503B.4010405@meteocontrol.de>
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
Subject: Re: Secure barebox
To: Moritz Warning <m.warning@meteocontrol.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jun 01, 2015 at 02:29:47PM +0200, Moritz Warning wrote:
> Oh, anyway; what happens when the timeout is 0.
> How can you access the barebox again?

You can try holding ctrl-c while starting the board. If that doesn't
work I think you have to erase the environment externally. Where do you
boot from?

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
