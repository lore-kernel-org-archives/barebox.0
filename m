Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDBGc-0007Wb-Rn
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 12:17:15 +0000
Received: from mail427.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B8304FFCC0F
 for <barebox@lists.infradead.org>; Mon, 19 Jan 2015 13:16:51 +0100 (CET)
Date: Mon, 19 Jan 2015 13:16:50 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150119121650.GF30554@ns203013.ovh.net>
References: <1421619349-22362-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421619349-22362-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] fixup! raspberry-pi: add board model detection
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 02:15 Mon 19 Jan     , Antony Pavlov wrote:
> ---
> 
> The 'has_onboard_eth' field is unused.

nack it I need for the next patch dont remove it

Best REgards,
J.
> 
> ---
>  arch/arm/boards/raspberry-pi/rpi.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
> index 81b485e..108bd28 100644
> --- a/arch/arm/boards/raspberry-pi/rpi.c
> +++ b/arch/arm/boards/raspberry-pi/rpi.c
> @@ -140,7 +140,6 @@ static void rpi_b_init(void)
>  /* See comments in mbox.h for data source */
>  static const struct {
>  	const char *name;
> -	bool has_onboard_eth;
>  	void (*init)(void);
>  } models[] = {
>  	RPI_MODEL(0, "Unknown model", NULL),
> -- 
> 2.1.4
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
