Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YvgnM-000618-4A
 for barebox@lists.infradead.org; Fri, 22 May 2015 06:51:00 +0000
Date: Fri, 22 May 2015 08:50:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150522065037.GT6325@pengutronix.de>
References: <1432194109-4340-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1432194109-4340-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH] barebox update: add note after successful update
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, May 21, 2015 at 09:41:49AM +0200, Stefan Christ wrote:
> Some users of the barebox_update command forget to erase the external
> barebox environment after updating the barebox. Using an old barebox
> environment leads to various problems if there were major changes.
> 
> So add a gentle reminder after the successful update.
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> ---
>  common/bbu.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/common/bbu.c b/common/bbu.c
> index 7fb154a..1b125e9 100644
> --- a/common/bbu.c
> +++ b/common/bbu.c
> @@ -113,8 +113,11 @@ int barebox_update(struct bbu_data *data)
>  	if (ret == -EINTR)
>  		printf("update aborted\n");
>  
> -	if (!ret)
> +	if (!ret) {
>  		printf("update succeeded\n");
> +		if (IS_ENABLED(CONFIG_ENV_HANDLING))
> +			printf("You maybe want to erase the barebox environment.\n");

How about adding a hint ...using saveenv -z?

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
