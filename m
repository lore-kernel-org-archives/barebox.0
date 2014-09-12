Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSJbv-0005WP-Ju
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 05:41:33 +0000
Date: Fri, 12 Sep 2014 07:41:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140912054107.GQ4992@pengutronix.de>
References: <1410428991-7686-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410428991-7686-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] checkpatch.pl: check for the FSF mailing address
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 11, 2014 at 01:49:51PM +0400, Antony Pavlov wrote:
> This check code is imported from Linux v3.16 checkpatch.pl.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Ah good move. I hope this helps not getting the address back into the
tree every now and then.

Applied, thanks.

Sascha

> ---
>  scripts/checkpatch.pl | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 153af8d..419436d 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -1425,6 +1425,16 @@ sub process {
>  			$rpt_cleaners = 1;
>  		}
>  
> +# Check for FSF mailing addresses.
> +		if ($rawline =~ /\bwrite to the Free/i ||
> +		    $rawline =~ /\b59\s+Temple\s+Pl/i ||
> +		    $rawline =~ /\b51\s+Franklin\s+St/i) {
> +			my $herevet = "$here\n" . cat_vet($rawline) . "\n";
> +			my $msg_type = \&ERROR;
> +			$msg_type = \&CHK if ($file);
> +			&{$msg_type}("Do not include the paragraph about writing to the Free Software Foundation's mailing address from the sample GPL notice. The FSF has changed addresses in the past, and may do so again. barebox already includes a copy of the GPL.\n" . $herevet)
> +		}
> +
>  # check for Kconfig help text having a real description
>  # Only applies when adding the entry originally, after that we do not have
>  # sufficient context to determine whether it is indeed long enough.
> -- 
> 2.1.0
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
