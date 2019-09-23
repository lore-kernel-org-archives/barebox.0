Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCOiE-0002Kb-QR
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 13:49:12 +0000
Date: Mon, 23 Sep 2019 15:49:05 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190923134905.eam54zy66hb74ujc@pengutronix.de>
References: <20190923121018.31574-1-a.fatoum@pengutronix.de>
 <20190923121018.31574-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923121018.31574-5-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 4/6] scripts/dtc: mention dtc project in
 update-dtc-source.sh commit message
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 23, 2019 at 02:10:16PM +0200, Ahmad Fatoum wrote:
> update-dtc-source.sh generates the commit message after it runs
> to completion. The word upstream is often used to refer to the
> Linux kernel within barebox, so change the wording to refer
> explicitly to dtc upstream.
> 
> Cc: Roland Hieber <r.hieber@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Acked-by: Roland Hieber <rhi@pengutronix.de>

 :)


> ---
>  scripts/dtc/update-dtc-source.sh | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/dtc/update-dtc-source.sh b/scripts/dtc/update-dtc-source.sh
> index 0a098df710c3..604ed254f542 100755
> --- a/scripts/dtc/update-dtc-source.sh
> +++ b/scripts/dtc/update-dtc-source.sh
> @@ -72,7 +72,7 @@ git add ./libfdt/libfdt.h
>  commit_msg=$(cat << EOF
>  scripts/dtc: Update to upstream version ${dtc_version}
>  
> -This adds the following commits from upstream:
> +This adds the following commits from upstream dtc:
>  
>  ${dtc_log}
>  EOF
> -- 
> 2.23.0
> 
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
