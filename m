Delivery-date: Tue, 29 Mar 2022 13:00:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ9aU-00A7Dl-L1
	for lore@lore.pengutronix.de; Tue, 29 Mar 2022 13:00:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ9aW-0001Dy-HJ
	for lore@pengutronix.de; Tue, 29 Mar 2022 13:00:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DpFNQ2IJ7SbtZrYAZOPtSbDmQNx1tWfFTJXsPhhtcuA=; b=Aeldtrw2ni++JnQ4Zc8HK/nGDr
	/Gf8Y2b1hu6I8sEcvcK+ga6YKlnwDHo7P3RSAAu8swCWytvQZn1NulT94rhVoXDpy5zpTIFSRMLOs
	GN1qLrtrCnNLDmbM3qKJvxUHyG+YgZaO7BTSJhp7GqJZahmMKVOKOD4KePP5zW/HCJABXoFC9XPcL
	hLUROF1Z2wVY3dbPCC1YZNGJYJ+wwbcFg/FERSts36RNTekt0zeqz1T3KftciXz+shGsYTD5NxRo8
	vhvIvH7DvCo2oYj3gUAUpRWTIP1Qs/f5D84a3CBg0WiZJThISvkhw4H18g6RoXxlQV/BQxHi8n4dP
	3WqyZDtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ9ZC-00Bty2-SP; Tue, 29 Mar 2022 10:59:15 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ9Z5-00BtwH-OI
 for barebox@lists.infradead.org; Tue, 29 Mar 2022 10:59:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GOtrS/0azxCZuSDZoH6OXXnGiREn8IsO96lEUBh4FMo=; b=YaW+9nPA1r8oTblOaJYjemj1Y2
 K7TpxQtpkBNLXwTOfXFTNvUr3X5GfnWj93+vl8FHpO/WeAQVbF7aO1Ng7txdJr6Y7hyPUydXDYWzS
 tem6ysWdn1heGi8yEdAqX859m9/RzjYRP/vjqyzkqkqx9MJ8HZAq1y867VfptX2O11pGWcXjgeD+X
 tNhHgiEJ7+U524WBP7DqLGK7SKsqMPQ3AcxviiLEemjmtTW8EAp2ue4ZLNyOvl/dsOnN5+1S2Px20
 ymLruHLRWDlGQg2VHXyEgpXy1PW0ikyRJXaGDiBdZz44UE5dDxk+333yb2uPUBd8CkBEW6YkGF8vh
 fFU+fQ7g==;
Received: from [89.212.21.243] (port=44180 helo=[192.168.69.86])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.95)
 (envelope-from <andrej.picej@norik.com>) id 1nZ9Yz-000FhQ-EX;
 Tue, 29 Mar 2022 12:59:01 +0200
Message-ID: <a89898ee-945a-2286-c116-eea1e975df1e@norik.com>
Date: Tue, 29 Mar 2022 12:59:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20220329085207.2779958-1-s.hauer@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
In-Reply-To: <20220329085207.2779958-1-s.hauer@pengutronix.de>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_035908_002765_C3DC02F4 
X-CRM114-Status: GOOD (  21.23  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] gpio: allocate dynamic gpio numbers top down
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 29. 03. 22 10:52, Sascha Hauer wrote:
> For GPIO controllers with dynamic GPIO number bases a free base
> is searched for bottom up. This means that GPIO controllers with
> fixed GPIO numbers must be registered before any controller with
> dynamic GPIO number base is registered, because otherwise the
> GPIO controllers with fixed GPIO numbers find their range occupied
> and can't be registered anymore.
> 
> The probe order normally makes sure the SoC internal GPIO controllers
> with fixed numbers are registered first. With deep probe enabled
> we can't rely on the probe order anymore, so we need another solution.
> 
> With this patch a free GPIO number range is searched for top down
> intead of bottom up, so as long as we have enough space in the
> ARCH_NR_GPIOS range the SoC internal GPIO controllers find their
> base unoccupied. GPIO controllers with dynamic GPIO numbers will
> change their numbers with this patch, but code shouldn't rely on
> these numbers anyway.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested on PHYTEC Mira and Nunki board. If you want you can add:
Tested-by: Andrej Picej <andrej.picej@norik.com>

Thanks.
> ---
>   drivers/gpio/gpiolib.c | 26 +++++++++++++-------------
>   1 file changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index f709d11f75..c9b33bcd6c 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -414,22 +414,19 @@ free_array:
>   }
>   EXPORT_SYMBOL(gpio_array_to_id);
>   
> -static int gpiochip_find_base(int start, int ngpio)
> +static int gpiochip_find_base(int ngpio)
>   {
>   	int i;
>   	int spare = 0;
>   	int base = -ENOSPC;
>   
> -	if (start < 0)
> -		start = 0;
> -
> -	for (i = start; i < ARCH_NR_GPIOS; i++) {
> +	for (i = ARCH_NR_GPIOS - 1; i >= 0; i--) {
>   		struct gpio_chip *chip = gpio_desc[i].chip;
>   
>   		if (!chip) {
>   			spare++;
>   			if (spare == ngpio) {
> -				base = i + 1 - ngpio;
> +				base = i;
>   				break;
>   			}
>   		} else {
> @@ -614,14 +611,17 @@ int gpiochip_add(struct gpio_chip *chip)
>   {
>   	int base, i;
>   
> -	base = gpiochip_find_base(chip->base, chip->ngpio);
> -	if (base < 0)
> -		return base;
> -
> -	if (chip->base >= 0 && chip->base != base)
> -		return -EBUSY;
> +	if (chip->base >= 0) {
> +		for (i = 0; i < chip->ngpio; i++) {
> +			if (gpio_desc[chip->base + i].chip)
> +				return -EBUSY;
> +		}
> +	} else {
> +		chip->base = gpiochip_find_base(chip->ngpio);
> +		if (chip->base < 0)
> +			return -ENOSPC;
> +	}
>   
> -	chip->base = base;
>   
>   	list_add_tail(&chip->list, &chip_list);
>   

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

