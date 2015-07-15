Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFLSU-00020F-N2
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 12:06:43 +0000
Date: Wed, 15 Jul 2015 14:06:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150715120620.GW18700@pengutronix.de>
References: <1436940123-25118-1-git-send-email-s.hauer@pengutronix.de>
 <55A63FB1.2020804@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55A63FB1.2020804@pengutronix.de>
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
Subject: Re: [PATCH 1/2] scripts: imx-image: Do not pad image
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jul 15, 2015 at 01:10:41PM +0200, Marc Kleine-Budde wrote:
> On 07/15/2015 08:02 AM, Sascha Hauer wrote:
> > We have to pad the load size to the next 4k boundary, but we don't
> > need to pad the image itself since we do not care what data the ROM
> > actually loads.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> NACK - We do for the HABv4 case.

Hm, I just wanted to make that optional, the first option letter that
came to my mind was -p for padding. Shortly afterwards I noticed this already exists
and is for: "-p           prepare image for signing". Can we attach the
padding to this option?

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
