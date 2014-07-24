Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAFR9-00032d-Hq
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 09:35:47 +0000
Date: Thu, 24 Jul 2014 11:35:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140724093521.GK23235@pengutronix.de>
References: <1406108204-7201-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406108204-7201-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH] barebox: common: Add missing filetype description
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 23, 2014 at 11:36:44AM +0200, Wadim Egorov wrote:
> Added missing filetype description for UBIFS.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>

Applied, thanks

Sascha

> ---
>  common/filetype.c |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/common/filetype.c b/common/filetype.c
> index a04fbdd..86e544a 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -51,6 +51,7 @@ static const struct filetype_str filetype_str[] = {
>  	[filetype_png] = { "PNG image", "png" },
>  	[filetype_ext] = { "EXT filesystem", "ext" },
>  	[filetype_gpt] = { "GUID Partition Table", "gpt" },
> +	[filetype_ubifs] = { "UBIFS image", "ubifs" },
>  	[filetype_bpk] = { "Binary PacKage", "bpk" },
>  	[filetype_barebox_env] = { "barebox environment file", "bbenv" },
>  	[filetype_ch_image] = { "TI OMAP CH boot image", "ch-image" },
> -- 
> 1.7.0.4
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
