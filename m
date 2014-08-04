Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XENIv-0006EM-Qe
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 18:48:18 +0000
Date: Mon, 4 Aug 2014 20:47:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140804184756.GI23235@pengutronix.de>
References: <1406915539-5923-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406915539-5923-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] fixup! dtc: compile fdtget
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 01, 2014 at 09:52:19PM +0400, Antony Pavlov wrote:
> ---
>  scripts/dtc/.gitignore | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/scripts/dtc/.gitignore b/scripts/dtc/.gitignore
> index cdabdc9..80f6b50 100644
> --- a/scripts/dtc/.gitignore
> +++ b/scripts/dtc/.gitignore
> @@ -2,3 +2,4 @@ dtc
>  dtc-lexer.lex.c
>  dtc-parser.tab.c
>  dtc-parser.tab.h
> +fdtget

Squashed into the original commit. Thanks

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
