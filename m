Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y1BSF-0000e9-ES
 for barebox@lists.infradead.org; Wed, 17 Dec 2014 10:03:40 +0000
Date: Wed, 17 Dec 2014 11:03:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141217100317.GM30369@pengutronix.de>
References: <1418123146-13235-1-git-send-email-l.stach@pengutronix.de>
 <20141211073614.GB30369@pengutronix.de>
 <1418643316.2274.1.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1418643316.2274.1.camel@pengutronix.de>
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
Subject: Re: [PATCH 1/5] usb: gadget: fastboot: allow to build without BOOTM
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 15, 2014 at 12:35:16PM +0100, Lucas Stach wrote:
> > Instead of the #ifdef can we do a:
> > 
> > 	if (!IS_ENABLED(CONFIG_BOOTM)) {
> > 		fastboot_tx_print(f_fb, "FAILCommand not supported");
> > 		return;
> > 	}
> > 
> > in cb_boot?
> > 
> Actually I like they way I did it in this patch better, as it is
> explicit about why something is not available. Chasing through the code
> just to find out why cb_boot returned early with an error seems like
> obfuscation to me. Also it spreads the same error path through 2
> functions which isn't nice if we ever have to change something there.

I still like the green better, but applied.

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
