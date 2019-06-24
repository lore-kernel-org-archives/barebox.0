Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfO1A-0001mG-8D
 for barebox@lists.infradead.org; Mon, 24 Jun 2019 12:24:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>) id 1hfO18-0001W1-Hs
 for barebox@lists.infradead.org; Mon, 24 Jun 2019 14:24:14 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <rhi@pengutronix.de>) id 1hfO18-0000Wi-A2
 for barebox@lists.infradead.org; Mon, 24 Jun 2019 14:24:14 +0200
Date: Mon, 24 Jun 2019 14:24:14 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190624122414.gjwyyyw2rmgugxyy@pengutronix.de>
References: <20190624103642.19184-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624103642.19184-1-rhi@pengutronix.de>
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
Subject: Re: [PATCH] images: ignore i.MX signed (USB) images and outputs of
 imx-csf tool
To: Barebox Mailing List <barebox@lists.infradead.org>

Ah, please ignore, Rouven already sent a better patch [1] on Friday :-)

[1]: 20190621092046.17389-1-r.czerwinski@pengutronix.de,
     https://www.mail-archive.com/barebox@lists.infradead.org/msg31702.html

On Mon, Jun 24, 2019 at 12:36:42PM +0200, Roland Hieber wrote:
> Fixes: efd400504cdf4ae56224 ("images: imx: Add targets for signed images and signed usb images")
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  images/.gitignore | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/images/.gitignore b/images/.gitignore
> index 7a7493781471..662ff6fd6d7b 100644
> --- a/images/.gitignore
> +++ b/images/.gitignore
> @@ -5,6 +5,12 @@
>  *.imximg.prep
>  *.imximg.signed
>  *.imx-sram-img
> +*.simximg
> +*.simximg.csfbin
> +*.uimximg
> +*.uimximg.csfbin
> +*.usimximg
> +*.usimximg.csfbin
>  *.map
>  *.src
>  *.kwbimg
> -- 
> 2.20.1
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
