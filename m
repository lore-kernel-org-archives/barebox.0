Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WeqN7-0002vG-Ey
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 18:33:46 +0000
Date: Mon, 28 Apr 2014 20:33:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140428183322.GU5858@pengutronix.de>
References: <1398671161-29045-1-git-send-email-s.hauer@pengutronix.de>
 <1398671161-29045-3-git-send-email-s.hauer@pengutronix.de>
 <20140428182200.bb0dc9bb0dbc147c522470f7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140428182200.bb0dc9bb0dbc147c522470f7@gmail.com>
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
Subject: Re: [PATCH 03/12] dts: Use dt-bindings from kernel
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 28, 2014 at 06:22:00PM +0400, Antony Pavlov wrote:
> On Mon, 28 Apr 2014 09:45:52 +0200
> > --- a/include/dt-bindings/clock/ar933x-clk.h
> > +++ /dev/null
> 
> There is no device tree support for ar933x in mainline linux!
> Please get this file back.

Yeah, I already noticed that during compile tests. Don't worry, I'll
keep the file.

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
