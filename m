Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f403.i.mail.ru ([185.5.136.74])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViMkS-0007qK-J4
 for barebox@lists.infradead.org; Mon, 18 Nov 2013 11:12:09 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 18 Nov 2013 15:11:42 +0400
Message-ID: <1384773102.300130062@f403.i.mail.ru>
In-Reply-To: <1384772798-3297-4-git-send-email-p.zabel@pengutronix.de>
References: <1384772798-3297-1-git-send-email-p.zabel@pengutronix.de>
 <1384772798-3297-4-git-send-email-p.zabel@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSCA0LzZdIEFSTSBpLk1YNjogc2FicmVsaXRlOiB1c2IgaXMg?=
 =?UTF-8?B?cHJvYmVkIGZyb20gZGV2aWNlIHRyZWU=?=
To: =?UTF-8?B?UGhpbGlwcCBaYWJlbA==?= <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  arch/arm/boards/freescale-mx6-sabrelite/board.c | 5 -----
>  arch/arm/dts/imx6q-sabrelite.dts                | 6 ++++++
>  2 files changed, 6 insertions(+), 5 deletions(-)
...
> diff --git a/arch/arm/dts/imx6q-sabrelite.dts b/arch/arm/dts/imx6q-sabrelite.dts
> index 1368ef1..97372dd 100644
> --- a/arch/arm/dts/imx6q-sabrelite.dts
> +++ b/arch/arm/dts/imx6q-sabrelite.dts
> @@ -117,10 +117,16 @@
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usbotg_1>;
>  	disable-over-current;
> +	phy-mode = "utmi";
> +	barebox,phy_type = "utmi";

No more need to define "barebox,phy_type".

> +	dr_mode = "host";
>  	status = "okay";
>  };
>  
>  &usbh1 {
> +	phy-mode = "utmi";
> +	barebox,phy_type = "utmi";
> +	dr_mode = "host";
>  	status = "okay";
>  };
>  
> -- 

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
