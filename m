Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OjAvK-0000aG-U9
	for barebox@lists.infradead.org; Wed, 11 Aug 2010 13:00:52 +0000
Date: Wed, 11 Aug 2010 15:00:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100811130049.GT27749@pengutronix.de>
References: <ae2bb35f25192515bafff6a78a1b7f915b9f0b53.1281441977.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae2bb35f25192515bafff6a78a1b7f915b9f0b53.1281441977.git.baruch@tkos.co.il>
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
Subject: Re: [PATCH] cp: fix help text
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi Baruch,

On Tue, Aug 10, 2010 at 03:06:51PM +0300, Baruch Siach wrote:
> Copy to target directory is supported since commit b36fca0c, circa 2007.

Applied to master. Thank you for working on the help texts, it seems
they can use some maintenance.

Sascha

> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  commands/cp.c |    2 --
>  1 files changed, 0 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/cp.c b/commands/cp.c
> index a0c7c84..2c35ba1 100644
> --- a/commands/cp.c
> +++ b/commands/cp.c
> @@ -80,8 +80,6 @@ out:
>  static const __maybe_unused char cmd_cp_help[] =
>  "Usage: cp <source> <destination>\n"
>  "cp copies file <source> to <destination>.\n"
> -"Currently only this form is supported and you have to specify the exact target\n"
> -"filename (not a target directory).\n"
>  "This command is file based only. See memcpy for memory copy\n";
>  
>  BAREBOX_CMD_START(cp)
> -- 
> 1.7.1
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
