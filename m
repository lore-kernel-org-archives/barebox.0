Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OT9qe-0006pe-Lg
	for barebox@lists.infradead.org; Mon, 28 Jun 2010 08:37:49 +0000
Date: Mon, 28 Jun 2010 10:37:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100628083746.GI12115@pengutronix.de>
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
	<1277372356-32370-5-git-send-email-s.hauer@pengutronix.de>
	<878w634m3r.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878w634m3r.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH 04/11] memcpy cmd: Do not expect to read/write the
	whole chunk at once
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

On Fri, Jun 25, 2010 at 09:17:44AM +0200, Peter Korsgaard wrote:
> >>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> Hi,
> 
>  Sascha> read() does not necessarily return the number of bytes
>  Sascha> we want to read, so deal with less bytes.
> 
>  Sascha> -		if ((w = write(destfd, rw_buf, r)) < 0) {
>  Sascha> -			perror("write");
>  Sascha> -			goto out;
>  Sascha> -		}
>  Sascha> -
>  Sascha> -		if (r < now)
>  Sascha> +		if (!r)
>  Sascha>  			break;
>  
>  Sascha> -		if (w < r)
>  Sascha> -			break;
>  Sascha> +		tmp = 0;
>  Sascha> +		now = r;
>  Sascha> +		while (now) {
>  Sascha> +			w = write(destfd, rw_buf + tmp, now);
>  Sascha> +			if (w < 0) {
>  Sascha> +				perror("write");
>  Sascha> +				goto out;
>  Sascha> +			}
>  Sascha> +	                if (!w)
>  Sascha> +			        break;
>  
>  Sascha> -		count -= now;
>  Sascha> +			now -= w;
>  Sascha> +			tmp += w;
>  Sascha> +		}
>  Sascha> +
> 
> This is probably not the only place we need this. What about moving this
> to a helper function like busybox' full_write()?

I merged this for now, but I'll remember it for next time I implement
such a loop.

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
