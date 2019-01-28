Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1go2kU-0003xR-1z
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 08:59:02 +0000
Date: Mon, 28 Jan 2019 09:58:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190128085832.m3hu6jb6dqfjtkw2@pengutronix.de>
References: <1b58b623-806b-7e15-7419-7fdd97a85f2a@data-modul.com>
 <20190111111316.i4sbti24awp2in3e@pengutronix.de>
 <4561415.JmzvUQDMJA@llp-hemp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4561415.JmzvUQDMJA@llp-hemp>
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
Subject: Re: build barebox for imx8mqevk
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 25, 2019 at 02:16:40PM +0100, Christian Hemp wrote:
> Hello Sascha,
> 
> Am Freitag, 11. Januar 2019, 12:13:16 CET schrieb Sascha Hauer:
> > You have to pass ARCH=arm as environment variable. It seems that you
> > pass ARCH=arm64.
> > 
> > In barebox both ARM 32bit and 64bit are handled under arch/arm,
> > nevertheless you have to pass a suitable toolchain.
> 
> Is there a specific reason why ARM 32bit and 64bit are handled under arch/arm 
> and not separate?

Yes. They share a lot of code.

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
