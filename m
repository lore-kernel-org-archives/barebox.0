Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZIHD-0001nn-Et
 for barebox@lists.infradead.org; Mon, 06 May 2013 10:04:12 +0000
Date: Mon, 6 May 2013 12:03:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130506100349.GE32299@pengutronix.de>
References: <1366966527.864498237@f391.i.mail.ru>
 <1367833931.133443941@f394.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367833931.133443941@f394.i.mail.ru>
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
Subject: Re: OTG Device mode on i.MX51
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, May 06, 2013 at 01:52:11PM +0400, Alexander Shiyan wrote:
> > Hello.
> > 
> > Is anyone have successful works OTG in device mode on iMX51?
> > Thanks!.
> 
> ping

I have the driver working in devicemode on several boards, but not on an
i.MX51 I think. I have no indication though that the UDC core itself is
in any way different to the ones on other i.MXs.

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
