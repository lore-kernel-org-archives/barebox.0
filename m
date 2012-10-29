Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TSk2k-0001BV-Ff
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 07:45:55 +0000
Date: Mon, 29 Oct 2012 08:45:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121029074552.GL1641@pengutronix.de>
References: <20121027195938.GB28904@game.jcrosoft.org>
 <1351368225-19521-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351368225-19521-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/5] clock: introduce non interruptible timeout
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 27, 2012 at 10:03:41PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> is_non_timeout call poller_call if the timeout is >= 100us
> 
> but on 1-wire bus we need to wait 500us and not more than 930us
> for the bus reset. So if the poller_call is caller we can not guarantee it.
> 
> So for this introduce is_non_interruptible_timeout than we only wait.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/clock.c  |   14 ++++++++++----
>  include/clock.h |    1 +
>  2 files changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/common/clock.c b/common/clock.c
> index 8adbeaf..a358b78 100644
> --- a/common/clock.c
> +++ b/common/clock.c
> @@ -135,16 +135,22 @@ uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant)
>          return (uint32_t)tmp;
>  }
>  
> -int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
> +int is_non_interruptible_timeout(uint64_t start_ns, uint64_t time_offset_ns)

Please rename to is_timeout_non_interruptible.

Otherwise ok.

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
