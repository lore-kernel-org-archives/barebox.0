Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f99.mail.ru ([217.69.129.122])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeoP8-00008R-Nq
 for barebox@lists.infradead.org; Tue, 21 May 2013 15:23:12 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 21 May 2013 19:22:45 +0400
Message-ID: <1369149765.377662790@f99.mail.ru>
In-Reply-To: <1369130267-8094-9-git-send-email-s.hauer@pengutronix.de>
References: <1369130267-8094-1-git-send-email-s.hauer@pengutronix.de>
 <1369130267-8094-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSCAwOC8xMF0gQVJNOiBpLk1YNTEgYmFiYmFnZTogcHJvdmlk?=
 =?UTF-8?B?ZSBNQUMgYWRyZXNzIGluIGRldmljZXRyZWU=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/dts/imx51-babbage.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/dts/imx51-babbage.dts b/arch/arm/dts/imx51-babbage.dts
> index 9630b61..4c43312 100644
> --- a/arch/arm/dts/imx51-babbage.dts
> +++ b/arch/arm/dts/imx51-babbage.dts
> @@ -216,6 +216,10 @@
>  	status = "okay";
>  };
>  
> +&iim {
> +	barebox,provide-mac-address = <&fec 1 9>;
> +};

Fixme, is this entry compatible with kernel devicetree?
If not, should it be stripped from dt passed to kernel?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
