Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-sn1nam01on0100.outbound.protection.outlook.com
 ([104.47.32.100] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuIxf-0008I3-Fq
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 14:57:49 +0000
From: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Date: Mon, 27 Aug 2018 14:57:35 +0000
Message-ID: <54f919ba308c6df58ba98eeb7859ecb878fef4d2.camel@allegion.com>
References: <1535378254-2593-1-git-send-email-oleg.karfich@wago.com>
In-Reply-To: <1535378254-2593-1-git-send-email-oleg.karfich@wago.com>
Content-Language: en-US
Content-ID: <A00CAFAFF3065740B160E888D6BA43E7@prod.exchangelabs.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands: of_property: do not free data in general
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "Oleg.Karfich@wago.com" <Oleg.Karfich@wago.com>

Hello Oleg,

(I wrote that patch.)

You are right, it works only if the property does not already exist.
In that case we'd probably also need a free() in the else-branch,
where of_new_property is called (otherwise we have a leak), because
that actually copies what is contained in data.

Sorry for that regression.


Best Regards
Florian

Am Montag, den 27.08.2018, 13:57 +0000 schrieb Oleg.Karfich@wago.com:
> With commit 748d1b8 the function do_of_property_set_now is introduced. With this
> commit an unwanted free(data) is added wich leads to that an free on the value
> is done that is previously set to the property. As a consequence the command
> of_dump reads freed data an printis the value as hex. Fix this by moving
> free(data) to the right place like before the above commit.
> 
> Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
> ---
>  commands/of_property.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/commands/of_property.c b/commands/of_property.c
> index 8ce12e5..ea32e51 100644
> --- a/commands/of_property.c
> +++ b/commands/of_property.c
> @@ -275,10 +275,12 @@ static int do_of_property_set_now(struct device_node *root, const char *path,
>  		pp->value_const = NULL;
>  
>  		/* limit property data to the actual size */
> -		if (len)
> +		if (len) {
>  			pp->value = xrealloc(data, len);
> -		else
> +		} else {
>  			pp->value = NULL;
> +			free(data);
> +		}
>  
>  		pp->length = len;
>  	} else {
> @@ -374,7 +376,6 @@ static int do_of_property(int argc, char *argv[])
>  				free(data);
>  		} else {
>  			ret = do_of_property_set_now(NULL, path, propname, data, len);
> -			free(data);
>  		}
>  
>  		return ret;
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
