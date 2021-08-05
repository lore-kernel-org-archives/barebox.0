Delivery-date: Thu, 05 Aug 2021 15:54:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBdpC-0001TL-Sw
	for lore@lore.pengutronix.de; Thu, 05 Aug 2021 15:54:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBdpB-0000JP-VY
	for lore@pengutronix.de; Thu, 05 Aug 2021 15:54:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mD8O8EluimqmaCmXvZuueB/WkmnL927YMsoY6DlBXbQ=; b=uLegwskf4de9jAVGkw3oHqLfD5
	7hDKXEQ67RG1pUzy7RFE6YQnqsZzZq8Xw/QqzHGJhZhglCG0EYgSy8YYORt66+5Q/f4CE9BRVPcpz
	Msu5Y5FADuG6O8qAlPyiF/mPcUmp2ZiXl5vZYZLB2ixqjyBLIRNyE16H8PAQeNXSPNRXjVPhxOOez
	5aguupQ22vZrDA1HLS22pypmNDKuR/IAlTje1K+jIDI61rQJnfT/VOX2LpYuCUIXRqBFH08m7BcYi
	/NFgD5Vb4myr55ZKptgsAm/BzZQFgdcekJDk2iTz/DTqexjdhgL/tUie45m7tVTmLJfbJ/3TeeIoZ
	AzMLb+LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBdnY-009kK0-O0; Thu, 05 Aug 2021 13:52:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBdnU-009kJO-Gw
 for barebox@lists.infradead.org; Thu, 05 Aug 2021 13:52:34 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mBdnQ-0000Ar-OO; Thu, 05 Aug 2021 15:52:28 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210805082607.1698733-1-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8879968f-3947-b754-1f07-935948e8f248@pengutronix.de>
Date: Thu, 5 Aug 2021 15:52:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210805082607.1698733-1-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_065232_617392_33B01F8D 
X-CRM114-Status: GOOD (  21.48  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: imx-esdhc-pbl: initialize fsl_esdhc_host
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.08.21 10:26, Rouven Czerwinski wrote:
> Since commit 56ca2c197e71 ("mci: sdhci: Get rid of many register ops")
> the core checks whether there is an explicit write function for the
> host. If the struct is not zero initialized, a bogus value is taken as
> the function, resulting in an unbootable board. Zero initialize the
> structs properly to let the PBL correctly load images. Fixes booting on
> the i.MX8M* board, tested on i.MX8MP EVK.
> 
> Fixes: 56ca2c197e71 ("mci: sdhci: Get rid of many register ops")
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/imx-esdhc-pbl.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
> index c3a8b377e..2e04c78fd 100644
> --- a/drivers/mci/imx-esdhc-pbl.c
> +++ b/drivers/mci/imx-esdhc-pbl.c
> @@ -233,7 +233,7 @@ static int imx8m_esdhc_init(struct fsl_esdhc_host *host,
>  int imx6_esdhc_start_image(int instance)
>  {
>  	struct esdhc_soc_data data;
> -	struct fsl_esdhc_host host;
> +	struct fsl_esdhc_host host = { 0 };
>  
>  	switch (instance) {
>  	case 0:
> @@ -272,7 +272,7 @@ int imx6_esdhc_start_image(int instance)
>  int imx7_esdhc_start_image(int instance)
>  {
>  	struct esdhc_soc_data data;
> -	struct fsl_esdhc_host host;
> +	struct fsl_esdhc_host host = { 0 };
>  
>  	switch (instance) {
>  	case 0:
> @@ -309,7 +309,7 @@ int imx7_esdhc_start_image(int instance)
>  int imx8m_esdhc_load_image(int instance, bool start)
>  {
>  	struct esdhc_soc_data data;
> -	struct fsl_esdhc_host host;
> +	struct fsl_esdhc_host host = { 0 };
>  	int ret;
>  
>  	ret = imx8m_esdhc_init(&host, &data, instance);
> @@ -337,7 +337,7 @@ int imx8m_esdhc_load_image(int instance, bool start)
>  int imx8mp_esdhc_load_image(int instance, bool start)
>  {
>  	struct esdhc_soc_data data;
> -	struct fsl_esdhc_host host;
> +	struct fsl_esdhc_host host = { 0 };
>  	int ret;
>  
>  	ret = imx8m_esdhc_init(&host, &data, instance);
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

