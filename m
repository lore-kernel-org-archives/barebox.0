Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1o0V-0001cl-Mk
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 07:31:46 +0000
Date: Mon, 17 Sep 2018 09:31:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180917073132.GA4097@pengutronix.de>
References: <20180912211951.30092-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180912211951.30092-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] checkpatch: don't check TODO file presence
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 13, 2018 at 12:19:51AM +0300, Antony Pavlov wrote:
> The commit b3baf2d86149 ("TODO: remove unused file") drops
> the TODO file. Alas scripts/checkpatch.pl checks TODO file
> presence in top_of_kernel_tree(). Without TODO checkpatch.pl
> exits with 'Must be run from the top-level dir. of a kernel tree'.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---

Applied, thanks

Sascha

>  scripts/checkpatch.pl | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 48ad4938d9..9a6f6e2298 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -330,7 +330,7 @@ sub top_of_kernel_tree {
>  	my @tree_check = (
>  		"arch", "commands", "common", "COPYING", "defaultenv",
>  		"Documentation", "drivers", "fs", "include", "lib",
> -		"MAKEALL", "Makefile", "net", "README", "scripts", "TODO"
> +		"MAKEALL", "Makefile", "net", "README", "scripts"
>  	);
>  
>  	foreach my $check (@tree_check) {
> -- 
> 2.18.0
> 
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
