Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TKDzQ-0000Ht-Pb
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 19:55:20 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1349455505-31731-1-git-send-email-s.hauer@pengutronix.de>
 <1349455505-31731-3-git-send-email-s.hauer@pengutronix.de>
Date: Fri, 05 Oct 2012 21:55:04 +0200
In-Reply-To: <1349455505-31731-3-git-send-email-s.hauer@pengutronix.de>
 (Sascha Hauer's message of "Fri, 5 Oct 2012 18:45:03 +0200")
Message-ID: <87txu8y9rb.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/4] introduce region_overlap() function
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> To check if two regions overlap
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  include/common.h |   13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/include/common.h b/include/common.h
> index c1f44b4..e30774a 100644
> --- a/include/common.h
> +++ b/include/common.h
> @@ -256,4 +256,17 @@ static inline void barebox_banner(void) {}
>  		(__x < 0) ? -__x : __x;         \
>  	})
>  
> +/*
> + * Check if two regions overlap. returns true if they do, false otherwise
> + */
> +static inline bool region_overlap(unsigned long starta, unsigned long lena,
> +		unsigned long startb, unsigned long lenb)
> +{
> +	if (starta + lena <= startb)
> +		return 0;
> +	if (startb + lenb <= starta)
> +		return 0;
> +	return 1;
> +}
> +
>  #endif	/* __COMMON_H_ */

Or if you look for perfomance (I presume not in barebox) :
static inline bool region_overlap(unsigned long starta, unsigned long lena,
		unsigned long startb, unsigned long lenb)
{
        return starta <= startb + lenb && starta + lena >= startb;
}

It's a bit more obfuscated, but performance wise no branch prediction :)

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
