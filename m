Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV4tz-0001zt-GR
 for barebox@lists.infradead.org; Thu, 17 May 2012 17:54:16 +0000
Date: Thu, 17 May 2012 19:54:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120517175413.GI30400@pengutronix.de>
References: <1337269578-20570-1-git-send-email-eric@eukrea.com>
 <1337269578-20570-10-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337269578-20570-10-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 10/16] fs/tftp: depend on NET_TFTP
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, May 17, 2012 at 05:46:12PM +0200, Eric B=E9nard wrote:
> else the option remains selected when network gets disabled
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied this one to master.

Thanks
 Sascha

> ---
>  fs/Kconfig |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> =

> diff --git a/fs/Kconfig b/fs/Kconfig
> index e5f307f..0aa73df 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -22,6 +22,7 @@ config FS_DEVFS
>  config FS_TFTP
>  	bool
>  	prompt "tftp support"
> +	depends on NET_TFTP
>  =

>  source fs/fat/Kconfig
>  =

> -- =

> 1.7.7.6
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
