Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGHMp-0005gR-Nj
 for barebox@lists.infradead.org; Mon, 23 Mar 2020 07:19:25 +0000
Date: Mon, 23 Mar 2020 08:19:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200323071918.GM3335@pengutronix.de>
References: <20200320160720.27134-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320160720.27134-1-cleger@kalray.eu>
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
Subject: Re: [PATCH] common: oftree: trim leading spaces from bootargs
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

On Fri, Mar 20, 2020 at 05:07:20PM +0100, Clement Leger wrote:
> When barebox concatenates all dynamic bootargs string for linux, if they
> are empty, the resulting string might be composed of only spaces.
> Currently, there is no check for such string and it leads to
> overwriting bootargs in the device tree by an empty string. To avoid
> this behavior, use skip_spaces to trim leading spaces and then check if
> the string is empty. If so, simply returns and don't patch device tree
> bootargs.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  common/oftree.c | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
