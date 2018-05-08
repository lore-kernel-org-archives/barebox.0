Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fG4pM-0001Bw-Di
 for barebox@lists.infradead.org; Tue, 08 May 2018 15:46:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <rhi@pengutronix.de>) id 1fG4p8-00042E-Vp
 for barebox@lists.infradead.org; Tue, 08 May 2018 17:46:42 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <rhi@pengutronix.de>) id 1fG4p8-0002uF-L0
 for barebox@lists.infradead.org; Tue, 08 May 2018 17:46:42 +0200
Date: Tue, 8 May 2018 17:46:42 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20180508154642.lpauozcpszxonpxx@pengutronix.de>
References: <20180508154249.30171-1-r.hieber@pengutronix.de>
 <20180508154249.30171-2-r.hieber@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180508154249.30171-2-r.hieber@pengutronix.de>
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
Subject: Re: [PATCH 2/2] doc: boards: imx: link to mxs documentation
To: barebox@lists.infradead.org

For both:

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>

On Tue, May 08, 2018 at 05:42:49PM +0200, Roland Hieber wrote:
> ---
>  Documentation/boards/imx.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
> index 9b1eb82d41..343643cd75 100644
> --- a/Documentation/boards/imx.rst
> +++ b/Documentation/boards/imx.rst
> @@ -7,7 +7,7 @@ SoCs up to i.MX31 support only the external Boot Mode. Newer SoCs
>  can be configured for internal or external Boot Mode with the internal
>  boot mode being the more popular mode. The i.MX23 and i.MX28, also
>  known as i.MXs, are special. These SoCs have a completely different
> -boot mechanism.
> +boot mechanism, see :doc:`mxs` instead.
>  
>  Internal Boot Mode
>  ------------------
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
