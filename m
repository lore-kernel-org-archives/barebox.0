Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRHfr-0000Ht-0Q
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 08:20:48 +0000
Date: Wed, 2 Oct 2013 10:20:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131002082024.GF30088@pengutronix.de>
References: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
 <1380484776-32266-2-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380484776-32266-2-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/8] images: correctly linebreak built images output
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sun, Sep 29, 2013 at 09:59:29PM +0200, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  images/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/images/Makefile b/images/Makefile
> index c723b1a..ac5cf8c 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -120,7 +120,7 @@ targets += $(foreach m, $(image-y), $(FILE_$(m)))
>  SECONDARY: $(addprefix $(obj)/,$(targets))
>  
>  images: $(addprefix $(obj)/, $(image-y)) FORCE
> -	@echo "images built:\n" $(patsubst %,%\\n,$(image-y))
> +	@echo -e "images built:\n" $(patsubst %,%\\n,$(image-y))

Gnagnagna

This was working on Debian because there a quite broken dash builtin for
'echo' was used. The dash echo builtin does its best to be incompatible
with stanard echo behaviour: It interpretes control characters even if
-e is not given. Instead of at least ignoring the -e option it echos
'-e' to standard out.

I changed the above to:

	@echo "images built:"
	@for i in $(image-y); do echo $$i; done

The next step would be to use the SHELL make variable to force to a
known shell.

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
