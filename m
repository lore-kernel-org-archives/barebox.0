Delivery-date: Wed, 10 Jan 2024 07:48:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNSOI-00BIt5-2T
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 07:48:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNSOI-0007Hw-6n
	for lore@pengutronix.de; Wed, 10 Jan 2024 07:48:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x6o3ZDQILGdn2lIjabteQkK0lf3a3PaDg6N1pf5T3ho=; b=AD22gc7PEEhT+6L/nfC8EmeUuu
	EGOXSMnYRvC/kSdUI7y9OqN7qu577f8idZodLMQ+r7zPNA/+jyP8RO+F616n/ZvCh+6FjuI+mgoYE
	BhM6hulfxK7TZgoL9gE1tvByRWvEhg8XdCdG5i1iznyNhlNz69dkuI4P1i3B1kkAdu9SnzEeRwl4B
	XMWNy5p16wzqZ+X4PKqa6GV5VqsnQUWV7EsHhV0cUG3KbCQRjHc8tdluZ+qscSg16h4Js9LIwteps
	sXwpxRAcF1bKcIAvKu0HUnOxgvHtNHvU1qnQ45qsbnBHg3RPpJ/A71z5gcVjfsN0HIpcRqoXX29IS
	RBXhGqfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNSNI-00AWat-0o;
	Wed, 10 Jan 2024 06:47:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNSNF-00AWZz-0K
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 06:47:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSND-00076o-TC; Wed, 10 Jan 2024 07:47:35 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSND-001e0W-Gq; Wed, 10 Jan 2024 07:47:35 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSND-00BANz-Eg; Wed, 10 Jan 2024 07:47:35 +0100
Date: Wed, 10 Jan 2024 07:47:35 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240110064735.GM1318922@pengutronix.de>
References: <20240108132721.1666173-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240108132721.1666173-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_224737_141701_0E7F765A 
X-CRM114-Status: GOOD (  19.23  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] usb: dwc3: of-simple: remove unmatchable compatibles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 08, 2024 at 02:27:21PM +0100, Ahmad Fatoum wrote:
> Only three of the compatibles listed exist in up-to-date upstream device
> trees. As barebox need not worry about backwards compatibility with
> older device trees, remove the rest that would never be matched.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/dwc3/dwc3-of-simple.c | 6 ------
>  1 file changed, 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
> index e8155321ad22..1e622240152e 100644
> --- a/drivers/usb/dwc3/dwc3-of-simple.c
> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
> @@ -67,13 +67,7 @@ static void dwc3_of_simple_remove(struct device *dev)
>  static const struct of_device_id of_dwc3_simple_match[] = {
>  	{.compatible = "rockchip,rk3399-dwc3"},
>  	{.compatible = "xlnx,zynqmp-dwc3"},
> -	{.compatible = "fsl,ls1046a-dwc3"},
>  	{.compatible = "fsl,imx8mp-dwc3"},
> -	{.compatible = "cavium,octeon-7130-usb-uctl"},
> -	{.compatible = "sprd,sc9860-dwc3"},
> -	{.compatible = "amlogic,meson-axg-dwc3"},
> -	{.compatible = "amlogic,meson-gxl-dwc3"},
> -	{.compatible = "allwinner,sun50i-h6-dwc3"},
>  	{/* Sentinel */}};
>  MODULE_DEVICE_TABLE(of, of_dwc3_simple_match);
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


