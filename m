Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8pd-0002pQ-Ok
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 06:58:36 +0000
Date: Fri, 7 Jun 2019 08:58:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190607065831.tyfnb5bu2znlpjdw@pengutronix.de>
References: <20190606064212.23238-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606064212.23238-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH 1/2] images: ignore *.csfbin files
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 06, 2019 at 08:42:11AM +0200, Rouven Czerwinski wrote:
> The csfbin files are created during a HABV4 build, ignore them since they
> are automatically generated.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  images/.gitignore | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/images/.gitignore b/images/.gitignore
> index fcde7f3c42..2de98228a3 100644
> --- a/images/.gitignore
> +++ b/images/.gitignore
> @@ -19,6 +19,7 @@
>  *.mlospi
>  *.mxsbs
>  *.mxssd
> +*.csfbin
>  pbl.lds
>  barebox.x
>  barebox.z
> -- 
> 2.21.0
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
