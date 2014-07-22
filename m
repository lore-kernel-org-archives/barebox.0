Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9gM7-0000TI-BH
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 20:08:15 +0000
Date: Tue, 22 Jul 2014 22:07:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140722200749.GD23235@pengutronix.de>
References: <1405598523-2835-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1405598523-2835-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] scripts/checkpatch.pl: don't search for Doxyfile when
 checking top_of_kernel_tree()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 17, 2014 at 04:02:03PM +0400, Antony Pavlov wrote:
> Doxygen documentation is removed in the commit
> 
>   commit 98360be0fefd58bf27df03c47d887dd676a31d73
>   Author: Sascha Hauer <s.hauer@pengutronix.de>
>   Date:   Tue Jun 17 10:27:03 2014 +0200
> 
>       Documentation: remove doxygen documentation
> 
> But checkpatch.pl still trying to check 'Doxyfile' presence.
> There is not such 'Doxyfile' and checkpatch.pl exits with
> 'Must be run from the top-level dir. of a kernel tree' message.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  scripts/checkpatch.pl | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index e80926f..153af8d 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -329,7 +329,7 @@ sub top_of_kernel_tree {
>  
>  	my @tree_check = (
>  		"arch", "commands", "common", "COPYING", "CREDITS", "defaultenv",  
> -		"Documentation", "Doxyfile", "drivers", "fs", "include", "lib",
> +		"Documentation", "drivers", "fs", "include", "lib",
>  		"MAKEALL", "Makefile", "net", "README", "scripts", "TODO"
>  	);
>  
> -- 
> 2.0.1
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
