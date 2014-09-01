Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XOMQY-0001kl-Vn
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 07:53:27 +0000
Date: Mon, 1 Sep 2014 09:52:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901075255.GD5352@pengutronix.de>
References: <1409223701-1124-1-git-send-email-m.grzeschik@pengutronix.de>
 <20140828152711.d56341d04ffec8f217b1f073@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140828152711.d56341d04ffec8f217b1f073@gmail.com>
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
Subject: Re: [PATCH] ubi: add setting devnum to ubiattach
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 28, 2014 at 03:27:11PM +0400, Antony Pavlov wrote:
> >  BAREBOX_CMD_START(ubiattach)
> >  	.cmd		= do_ubiattach,
> >  	BAREBOX_CMD_DESC("attach mtd device to UBI")
> > -	BAREBOX_CMD_OPTS("[-O] MTDDEV")
> > +	BAREBOX_CMD_OPTS("[-dO] MTDDEV")
> 
> Can we use a more accurate variant? Something like this one:

BAREBOX_CMD_OPTS for other commands look like Michael did it. The full
option semantics is still in the full help text.

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
