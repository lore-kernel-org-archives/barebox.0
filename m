Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UP6wX-0001yv-Tv
 for barebox@lists.infradead.org; Mon, 08 Apr 2013 07:56:46 +0000
Date: Mon, 8 Apr 2013 09:56:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130408075643.GR1906@pengutronix.de>
References: <m3r4ixgmok.fsf@intrepid.localdomain>
 <m3ehexgmbs.fsf@intrepid.localdomain>
 <20130402065241.GB1906@pengutronix.de>
 <m3bo9q36ua.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3bo9q36ua.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH] ARM: Add support for IXP4xx CPU and for Goramo Multilink
 router platform.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

On Sun, Apr 07, 2013 at 01:42:21PM +0200, Krzysztof Halasa wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> >> +static struct eth_plat_info eth_pinfo[2] = {
> >
> > Why not use dynamically sized arrays?
> 
> What do you mean?

I mean:

static struct eth_plat_info eth_pinfo[]

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
