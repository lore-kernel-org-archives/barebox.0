Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cibuV-0006Tx-0v
 for barebox@lists.infradead.org; Tue, 28 Feb 2017 07:09:25 +0000
Date: Tue, 28 Feb 2017 08:09:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170228070901.gbkwxlh772plqi4e@pengutronix.de>
References: <20170227101416.GB12475@mail.ovh.net>
 <1488190770-4034-1-git-send-email-plagnioj@jcrosoft.com>
 <1488190770-4034-5-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1488190770-4034-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 5/8] clocksource: allow to have multiple device from
 clock source
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 27, 2017 at 11:19:27AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> use the one with the most priority.
> 
> We can not select the clocksource at user level.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/clock.c  | 11 +++++++++++
>  include/clock.h |  3 ++-
>  2 files changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/common/clock.c b/common/clock.c
> index 2c5dd91cc..d99d06853 100644
> --- a/common/clock.c
> +++ b/common/clock.c
> @@ -213,6 +213,17 @@ EXPORT_SYMBOL(mdelay_non_interruptible);
>  
>  int init_clock(struct clocksource *cs)
>  {
> +	if (current_clock && cs->priority < current_clock->priority)
> +		return -EBUSY;

You should return successfully here. Otherwise driver probe functions
return -EBUSY for something which is not the drivers fault. In fact,
it's not an error, it's just that we currently don't have any use for an
additional clock. Also consider testing for <= current_clock->priority
instead of <. All current clocks have priority 0 and we want to
initialize only the first one.

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
