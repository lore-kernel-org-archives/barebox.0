Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XgqhP-0004f7-BS
 for barebox@lists.infradead.org; Wed, 22 Oct 2014 07:51:15 +0000
Date: Wed, 22 Oct 2014 09:50:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141022075053.GW14443@pengutronix.de>
References: <1413909243.628274148@f65.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1413909243.628274148@f65.i.mail.ru>
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
Subject: Re: LPC43xx
To: Alexander Shiyan <shc_work@mail.ru>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Oct 21, 2014 at 08:34:03PM +0400, Alexander Shiyan wrote:
> Hello all.
> 
> We started developing device which uses NXP LPC43xx CPU. I would like to add
> support for this CPU series into barebox.
> The problem is that there is no support for this architecture in the Linux kernel,
> and it would upset the current concept (the barebox tree is very similar to Linux
> tree and we not have any orphan arch-s).
> What you recommend to do?

Just create the architecture for barebox. If the Linux Kernel gets
support for the architecture we can still rename it if we want to.

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
