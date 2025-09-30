Delivery-date: Tue, 30 Sep 2025 13:28:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3YWi-002lI5-34
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 13:28:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3YWi-0006a6-DU
	for lore@pengutronix.de; Tue, 30 Sep 2025 13:28:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2kA7p6xFMOpq/jtmLGz3jRfx2NVjKxXWMIwRCd9aSYM=; b=SvlhseFo/A/qqiuEJ+iNHHMfBh
	fsfp94jZlcyf9oKrLsrlk9qneCOpPGkPR4vYTVfg9q/evsXSEBdigR30WfEF8k0Lf4W1h7vBGf/M8
	DIEmx6HJqjSF2GtvkGIEyg08IZfBZCPwJ9Kcv7pDZ9qzoW0hQ0V/vKGdZmMRYWvtz4zefcrVaCk8r
	HODKSWuJu3cFycwuOn4jmM8vNWOvcntxOPzvUf+O2bIrFP83a+3G5PNJhVL02mE6fKhxqyVgv3sJt
	iXjCSlppGdIj3+hOI9ozhbBINLGPHi2VoIY1fPM8ROa9YhumCSpuDHO4Kau7BJ3mTM5pHV0jv/Qdl
	tDl9tGHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3YWF-000000058ak-2egJ;
	Tue, 30 Sep 2025 11:27:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3YWD-000000058aL-2LRt
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 11:27:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3YWC-0006Qz-00; Tue, 30 Sep 2025 13:27:40 +0200
Message-ID: <3648cf53-cb62-4122-96cc-d122fb8c148b@pengutronix.de>
Date: Tue, 30 Sep 2025 13:27:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Thorsten Scherer <t.scherer@eckelmann.de>, barebox@lists.infradead.org
References: <20250930112140.45620-1-t.scherer@eckelmann.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250930112140.45620-1-t.scherer@eckelmann.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_042741_627618_A09627EB 
X-CRM114-Status: GOOD (  14.92  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc3: am62: Fix name of driver struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 9/30/25 1:21 PM, Thorsten Scherer wrote:
> Fixes: a3cff6704f83 ("usb: dwc3: add am62 support")
> Signed-off-by: Thorsten Scherer <t.scherer@eckelmann.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  drivers/usb/dwc3/dwc3-am62.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/dwc3/dwc3-am62.c b/drivers/usb/dwc3/dwc3-am62.c
> index 27324276f9c5..1266522bd58f 100644
> --- a/drivers/usb/dwc3/dwc3-am62.c
> +++ b/drivers/usb/dwc3/dwc3-am62.c
> @@ -266,12 +266,12 @@ static const struct of_device_id dwc3_ti_of_match[] = {
>  };
>  MODULE_DEVICE_TABLE(of, dwc3_ti_of_match);
>  
> -static struct driver dwc3_of_simple_driver = {
> +static struct driver dwc3_ti_driver = {
>  	.probe = dwc3_ti_probe,
>  	.name = "dwc3-of-simple",
>  	.of_compatible = DRV_OF_COMPAT(dwc3_ti_of_match),
>  };
> -device_platform_driver(dwc3_of_simple_driver);
> +device_platform_driver(dwc3_ti_driver);
>  
>  MODULE_ALIAS("platform:dwc3-am62");
>  MODULE_AUTHOR("Aswath Govindraju <a-govindraju@ti.com>");

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



