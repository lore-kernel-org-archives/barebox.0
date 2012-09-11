Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBOsF-0001tX-PU
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 11:43:24 +0000
Date: Tue, 11 Sep 2012 13:43:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120911114321.GW18243@pengutronix.de>
References: <20120911102103.GH31207@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120911102103.GH31207@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/1 v2] genenv: Allow to also specify files for the
 environment instead of only directories
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 11, 2012 at 12:21:03PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> we may specify file in the defconfig
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  scripts/genenv |    6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/genenv b/scripts/genenv
> index c84af0c..ff7972b 100755
> --- a/scripts/genenv
> +++ b/scripts/genenv
> @@ -11,7 +11,11 @@ shift 2
>  tempdir=$(mktemp -d tmp.XXXXXX)
>  
>  for i in $*; do
> -	cp -r $i/* $tempdir
> +	if [ -d $i ]; then
> +		cp -r $i/* $tempdir
> +	else
> +		cp -a $i $tempdir
> +	fi
>  done
>  
>  find $tempdir -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
> -- 
> 1.7.10.4
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
