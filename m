Delivery-date: Fri, 08 Jul 2022 08:04:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9h61-00AAor-TQ
	for lore@lore.pengutronix.de; Fri, 08 Jul 2022 08:04:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9h63-0002m6-Vn
	for lore@pengutronix.de; Fri, 08 Jul 2022 08:04:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4HI1srrJCa+cTo6Faa8XapTR/GVt2Tpsg2e+AegdfTM=; b=J9r07vZpbJUH1H4R8tLnM49kBD
	ajHdqaRHWBD3FSQBsstDZyoKvy85AdhtjbV+n+G5fKYl45FbrJNfd0sCD5A+67QgCkjXv+B5bIL2K
	W1uzxZ8iTkxlL8dfbki9KH4J840UQBlWaKjbuC6uTXRUfcuVEyYOnVsBmHnWvOH+UNK/cPR9zdNCK
	P0NXGi5g7M4STDiNTFMhJM/5bx6vb2XBulGiCtOFSlucbAvqVm0dK8FsW237JWCooI2PBEVxmk0oG
	gRNFm5xheoI9USicPpC7XuMwKpwxrP+pOwWR7mgD8O/JNqqalGmCbetz0apw8fKLWaUlON5pSNzKz
	QkrnrTBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9h4i-001uX1-3Y; Fri, 08 Jul 2022 06:02:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9h4d-001uUt-1c
	for barebox@lists.infradead.org; Fri, 08 Jul 2022 06:02:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o9h4W-0002OE-7c; Fri, 08 Jul 2022 08:02:36 +0200
Message-ID: <ed29b5c7-ea3c-9ba9-26a1-f51dba9ea5ff@pengutronix.de>
Date: Fri, 8 Jul 2022 08:02:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
References: <20220708055359.1176212-1-ahmad@a3f.at>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220708055359.1176212-1-ahmad@a3f.at>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_230243_144974_0849FAD4 
X-CRM114-Status: GOOD (  20.89  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] regulator: fixed: remove duplicate always-on handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 08.07.22 07:53, Ahmad Fatoum wrote:
> Regulator core already handles always-on property, so remove handling in
> fixed-regulator driver. For this to have no functional change, all
> regulator uses must be balanced as regulator code implements always-on
> by initializing use count to baseline of 1, while fixed-regulator
> prevents disabling altogether. As mismatched regulator enable/disable
> is a bug in need of fixing anyway, this is tolerated.

Rethinking it, I guess we should just move this into regulator core
instead. That's what Linux does as well.

> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/regulator/fixed.c | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
> index c5f97d78df40..ec64f39b86c7 100644
> --- a/drivers/regulator/fixed.c
> +++ b/drivers/regulator/fixed.c
> @@ -15,7 +15,6 @@
>  
>  struct regulator_fixed {
>  	int gpio;
> -	int always_on;
>  	struct regulator_dev rdev;
>  	struct regulator_desc rdesc;
>  };
> @@ -34,9 +33,6 @@ static int regulator_fixed_disable(struct regulator_dev *rdev)
>  {
>  	struct regulator_fixed *fix = container_of(rdev, struct regulator_fixed, rdev);
>  
> -	if (fix->always_on)
> -		return 0;
> -
>  	if (!gpio_is_valid(fix->gpio))
>  		return 0;
>  
> @@ -76,12 +72,6 @@ static int regulator_fixed_probe(struct device_d *dev)
>  	if (!of_property_read_u32(np, "off-on-delay-us", &delay))
>  		fix->rdesc.off_on_delay = delay;
>  
> -	if (of_find_property(np, "regulator-always-on", NULL) ||
> -	    of_find_property(np, "regulator-boot-on", NULL)) {
> -		fix->always_on = 1;
> -		regulator_fixed_enable(&fix->rdev);
> -	}
> -
>  	ret = of_regulator_register(&fix->rdev, np);
>  	if (ret)
>  		goto err;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


