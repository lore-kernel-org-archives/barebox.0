Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYpXp-0007Nw-C5
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 09:50:38 +0000
Date: Mon, 17 Dec 2018 10:50:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181217095022.b254abkvsovecph5@pengutronix.de>
References: <20181214152305.30412-1-a.fatoum@pengutronix.de>
 <20181214152305.30412-2-a.fatoum@pengutronix.de>
 <ef23a991-be38-c018-3bf6-1940de7a3e6c@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ef23a991-be38-c018-3bf6-1940de7a3e6c@pengutronix.de>
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
Subject: Re: [PATCH 2/2] net: fec_imx: fix timeout off by *1000 error
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 14, 2018 at 04:29:02PM +0100, Ahmad Fatoum wrote:
> Hello,
> 
> I didn't change read*_poll_timeout to take nanoseconds because it is copied
> over from Linux.
> 
> On 14/12/18 16:23, Ahmad Fatoum wrote:
> > read*_poll_timeout's final timeout parameter is in microseconds,
> > but the supplied arguments in fec_imx.c were in nanoseconds,
> > which might lead to barebox getting seemingly stuck in fec_halt
> > (loops for a thousand seconds instead of one).
> 
> So, how about dropping the (U|M|)SECOND defines in include/clock.h and replace
> them across the tree by the corresponding NSEC_PER_(U|M|)SEC?
> 
> I find them more readable and they would avoid such mistakes in future.

You are probably right that these are more readable, but still you have
to know that is_timeout() takes nanoseconds and readl_poll_timeout takes
microseconds.

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
