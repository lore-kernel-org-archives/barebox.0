Delivery-date: Thu, 11 Jan 2024 13:07:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtqj-00CwvT-2o
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 13:07:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtqj-0006nv-An
	for lore@pengutronix.de; Thu, 11 Jan 2024 13:07:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E7ZHXnEHb4FF0XcvkxRPF0kXyNesMhZvejJz/IMO664=; b=rcKYiLHj9vrdc5JKW7EfpL+lFN
	RK0SPa88QHcpJTk6PhXfnDMVUe3EO3X3iQiGfihd7SouAreToYqBZKZ8U9nQ7nTzKsV5cvTLQei0Q
	kMNHm/+roux0C9rywduuLtkOMPliqPVW3dI2o5UBdlw7wOmIwsU4sM+3JEOfflJHsikKqXJDwTHsG
	r5kFgumjMloQ4hBM6NbtznC9Ljr/Kyucwkb/Ts1ynOiiKnFtpderzrVUh5cpnIQ/C2b5kBlscPtCK
	3AIsb7y9W131/+2lv+P+MlIRRrb9P0G2th2NEDWJoYVngaHg/Tq0NvO31odBCZt+La9uXs02p54UG
	Q1bBsgMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtpf-00HZ5o-2E;
	Thu, 11 Jan 2024 12:06:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtpd-00HZ5C-0h
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 12:06:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNtpb-0006Vg-N3; Thu, 11 Jan 2024 13:06:43 +0100
Message-ID: <5f1325a1-44ec-42ac-9295-f607a624327a@pengutronix.de>
Date: Thu, 11 Jan 2024 13:06:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20240111114841.2676939-1-m.felsch@pengutronix.de>
 <20240111114841.2676939-2-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240111114841.2676939-2-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_040645_251823_39737F29 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 01/18] ARM: i.MX8M: atf: make use of
 imx8m*_save_bootrom_log macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 11.01.24 12:48, Marco Felsch wrote:
>  	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE)) {
> @@ -305,9 +305,9 @@ __noreturn void imx8mq_load_and_start_image_via_tfa(void)
>  	const void *bl31;
>  	size_t bl31_size;
>  	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
> -	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(16);
> +	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);

Why this change?

>  
> -	imx8m_save_bootrom_log((void *)arm_mem_scratch(endmem));
> +	imx8mq_save_bootrom_log();
>  	imx8mq_load_bl33(bl33);
>  
>  	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_OPTEE)) {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



