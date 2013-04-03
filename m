Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNMek-0001r8-Kj
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 12:19:12 +0000
Date: Wed, 3 Apr 2013 14:19:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130403121906.GW1906@pengutronix.de>
References: <1364883674-6637-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1364883674-6637-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] dtc: add .gitignore for generated files
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 02, 2013 at 08:21:14AM +0200, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied, thanks

Sascha

> ---
>  arch/arm/dts/.gitignore | 1 +
>  scripts/dtc/.gitignore  | 4 ++++
>  2 files changed, 5 insertions(+)
>  create mode 100644 arch/arm/dts/.gitignore
>  create mode 100644 scripts/dtc/.gitignore
> 
> diff --git a/arch/arm/dts/.gitignore b/arch/arm/dts/.gitignore
> new file mode 100644
> index 0000000..077903c
> --- /dev/null
> +++ b/arch/arm/dts/.gitignore
> @@ -0,0 +1 @@
> +*dtb*
> diff --git a/scripts/dtc/.gitignore b/scripts/dtc/.gitignore
> new file mode 100644
> index 0000000..cdabdc9
> --- /dev/null
> +++ b/scripts/dtc/.gitignore
> @@ -0,0 +1,4 @@
> +dtc
> +dtc-lexer.lex.c
> +dtc-parser.tab.c
> +dtc-parser.tab.h
> -- 
> 1.8.1.4
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
