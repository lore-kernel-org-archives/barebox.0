Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RCpqN-0000WP-TP
	for barebox@lists.infradead.org; Sun, 09 Oct 2011 09:38:52 +0000
Date: Sun, 9 Oct 2011 11:38:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111009093850.GO31404@pengutronix.de>
References: <1318084919-3984-1-git-send-email-plagnioj@jcrosoft.com>
	<1318084919-3984-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1318084919-3984-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/5] sha1: drop never used sha1_hmac
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 08, 2011 at 04:41:57PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  crypto/sha1.c |   39 ---------------------------------------
>  1 files changed, 0 insertions(+), 39 deletions(-)

This one does not apply. We do not have a crypto/ dir in the tree.

Sascha

> 
> diff --git a/crypto/sha1.c b/crypto/sha1.c
> index b4e2abc..e989c8a 100644
> --- a/crypto/sha1.c
> +++ b/crypto/sha1.c
> @@ -291,45 +291,6 @@ static void sha1_finish (sha1_context * ctx, uint8_t output[20])
>  	PUT_UINT32_BE (ctx->state[4], output, 16);
>  }
>  
> -/*
> - * Output = HMAC-SHA-1( input buffer, hmac key )
> - */
> -void sha1_hmac (uint8_t *key, uint32_t keylen,
> -		uint8_t *input, uint32_t ilen, uint8_t output[20])
> -{
> -	uint32_t i;
> -	sha1_context ctx;
> -	uint8_t k_ipad[64];
> -	uint8_t k_opad[64];
> -	uint8_t tmpbuf[20];
> -
> -	memset (k_ipad, 0x36, 64);
> -	memset (k_opad, 0x5C, 64);
> -
> -	for (i = 0; i < keylen; i++) {
> -		if (i >= 64)
> -			break;
> -
> -		k_ipad[i] ^= key[i];
> -		k_opad[i] ^= key[i];
> -	}
> -
> -	sha1_starts (&ctx);
> -	sha1_update (&ctx, k_ipad, 64);
> -	sha1_update (&ctx, input, ilen);
> -	sha1_finish (&ctx, tmpbuf);
> -
> -	sha1_starts (&ctx);
> -	sha1_update (&ctx, k_opad, 64);
> -	sha1_update (&ctx, tmpbuf, 20);
> -	sha1_finish (&ctx, output);
> -
> -	memset (k_ipad, 0, 64);
> -	memset (k_opad, 0, 64);
> -	memset (tmpbuf, 0, 20);
> -	memset (&ctx, 0, sizeof (sha1_context));
> -}
> -
>  struct sha1 {
>  	sha1_context context;
>  	struct digest d;
> -- 
> 1.7.6.3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
