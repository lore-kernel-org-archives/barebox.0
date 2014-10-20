Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XgKAh-00025i-IS
 for barebox@lists.infradead.org; Mon, 20 Oct 2014 21:07:20 +0000
Received: by mail-wi0-f178.google.com with SMTP id r20so105608wiv.17
 for <barebox@lists.infradead.org>; Mon, 20 Oct 2014 14:06:56 -0700 (PDT)
Date: Mon, 20 Oct 2014 23:06:49 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20141020210647.GA1676@omega>
References: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
 <1413828961-12605-5-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1413828961-12605-5-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 5/7] sha2: fix invalid length check
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hi Lucas,

On Mon, Oct 20, 2014 at 08:15:59PM +0200, Lucas Stach wrote:
> length is unsigned an thus can never be <0.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  crypto/sha2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/crypto/sha2.c b/crypto/sha2.c
> index 26162e8..e495313 100644
> --- a/crypto/sha2.c
> +++ b/crypto/sha2.c
> @@ -208,7 +208,7 @@ static void sha2_update(sha2_context * ctx, const uint8_t * input, size_t length
>  	size_t fill;
>  	uint32_t left;
>  
> -	if (length <= 0)
> +	if (length = 0)

should be (length == 0).

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
