Delivery-date: Thu, 07 Apr 2022 14:27:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncREn-00AQrn-H5
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 14:27:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncREk-0005nZ-Fb
	for lore@pengutronix.de; Thu, 07 Apr 2022 14:27:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYkpLWM4WeYY1wJBO6OVgBLaKViImoT9l7XkMgVALH8=; b=nnnBJvR/IkN+aw
	vvAGYkrU5HbP/9P/+Z89LUQdT122rFgPFYiBITqBa2PZrqW58R+86Kc200wTJmkgTd4dGqhrQ55y2
	Jj/qNs6bKienaI3qVX0mMHtMRt94OnrlbyUpzMYDkP1mQ0GZQY+yEfOpwulOud+VdyNGV+beouUqW
	SJqazGZk6bZOuTfV6FeYhpxujHD8V82QsDJJsIWBaXEk5orM1EOJ2mfYJfmalpmROQoPR7eg0ONDs
	wjINJKY5CgBmB7G0vEliifGcKVDfnWzAQhagjSvAJT1eKIoP2cdU442n5f4dbUbZxGj4EpYVMjUwe
	F0R5OT69dWq2d4Aq6Bfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncRDZ-00BqXf-7u; Thu, 07 Apr 2022 12:26:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncRDQ-00BqVG-Bh
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 12:26:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ncRDO-0005Zf-T6; Thu, 07 Apr 2022 14:26:18 +0200
Message-ID: <daaff335-c133-e29e-ef4d-0dbe75ed63f2@pengutronix.de>
Date: Thu, 7 Apr 2022 14:26:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20220407085933.952078-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220407085933.952078-1-o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_052620_443076_728B1EE2 
X-CRM114-Status: GOOD (  13.01  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] ARM: dts: at91-microchip-ksz9477-evb: start using
 kernel DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.04.22 10:59, Oleksij Rempel wrote:
> This DT is mainlined to the kernel. Now we can start using kernel
> version. At same time it will fix SPI and KSZ switch detection.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---

>  / {
> -	model = "Microchip EVB-KSZ9477";
> -	compatible = "atmel,sama5d3-ksz9477-evb", "atmel,sama5d3", "atmel,sama5";
> -
> -	aliases {
> -		mmc0 = &mmc0;
> -	};

Doesn't this change the name of the MMC device?

> +&reg_vcc_mmc0 {
> +	status = "disabled";
>  };

Why?



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

