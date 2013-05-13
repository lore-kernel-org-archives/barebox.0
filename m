Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbnJg-0006P8-Jv
 for barebox@lists.infradead.org; Mon, 13 May 2013 07:37:05 +0000
Date: Mon, 13 May 2013 09:36:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130513073642.GF32299@pengutronix.de>
References: <1368387430-31533-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368387430-31533-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] ppc: boards: add barebox.lds to .gitignore
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, May 12, 2013 at 11:37:10PM +0400, Antony Pavlov wrote:
> Without this patch after compiling barebox
> for a PowerPC board we have 'git status'
> output looking like this:
> 
>   # Untracked files:
>   #   (use "git add <file>..." to include in what will be committed)
>   #
>   #       arch/ppc/boards/pcm030/barebox.lds
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/ppc/boards/.gitignore |    1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 arch/ppc/boards/.gitignore
> 
> diff --git a/arch/ppc/boards/.gitignore b/arch/ppc/boards/.gitignore
> new file mode 100644
> index 0000000..d116578
> --- /dev/null
> +++ b/arch/ppc/boards/.gitignore
> @@ -0,0 +1 @@
> +barebox.lds
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
