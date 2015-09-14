Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZbNEz-0000ZY-NM
 for barebox@lists.infradead.org; Mon, 14 Sep 2015 06:27:51 +0000
Date: Mon, 14 Sep 2015 08:27:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150914062727.GV18700@pengutronix.de>
References: <1441992476-11703-1-git-send-email-pmamonov@gmail.com>
 <1441992476-11703-3-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441992476-11703-3-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [RFC v2 2/3] WIP: usb: ehci-hcd: use non-interruptible version
 of mdelay()
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 11, 2015 at 08:27:55PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/usb/host/ehci-hcd.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index c9bf703..3d89ec5 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -133,6 +133,14 @@ static struct descriptor {
>  	},
>  };
>  
> +static inline void mdelay_ni(unsigned long msecs)
> +{
> +	uint64_t start = get_time_ns();
> +
> +	while (!is_timeout_non_interruptible(start, msecs * MSECOND))
> +		;
> +}

Instead of introducing a new function I think the existing [mun]delay
functions should be made noninterruptible.

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
