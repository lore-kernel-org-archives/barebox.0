Delivery-date: Wed, 28 Sep 2022 15:40:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odXIp-00HNf4-4M
	for lore@lore.pengutronix.de; Wed, 28 Sep 2022 15:40:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odXIo-0001S0-7q
	for lore@pengutronix.de; Wed, 28 Sep 2022 15:40:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g4445WIds8Mh1ixIWmAD9hDjDOb6YXPftLzE0piDXAo=; b=rp3OlEFAbqTkha6EQfqLEU6QjC
	zEZRjMmjhqs2z01jeIn6XFvJ5mGZCq15/T+sD/uPscsEjNhgBICI240j8U23GNv0+Vbh/W9EwxBGm
	TT2jzniCba3zMLmJiz5zxAt8VQqp9q6xpXV5UwUGPOIv834UlTTRGcOlAoeaHNcREhkCI6VffVcrA
	o06wtYhJrhbOjzkuqELE/OCoUvKCFQ/rFGLoUJtaKuDdB8E6Nhwumx7t+NpjQvTnPct9M6vJABZgj
	9M0lQMXGVnUwyGIEpn+gbLO97Q8vtiIhW62GFU2S4CWyiUhD9XHPx/nmNN5v0kSG7zvRQmEeZEmU5
	ce1Tcv8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odXFw-00GVVe-2C; Wed, 28 Sep 2022 13:37:44 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odXFp-00GVTA-V1
	for barebox@lists.infradead.org; Wed, 28 Sep 2022 13:37:40 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28SDbXTG1279448
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Wed, 28 Sep 2022 15:37:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1664372253;
	bh=g4445WIds8Mh1ixIWmAD9hDjDOb6YXPftLzE0piDXAo=; l=454;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=oUHkU+VaRUKf9vMgamsOEAzyl+At7az5NkKiSsblbaONQHTZ+w7nwL9bWM1eg1YUz
	 QY4AR8RlG/HzkDBvEWPWJX/vZJ4G+QA/cxZjwhMYQJdswzMPdGS7J30AW2cRH67Sxe
	 LMMznZnxFlaGMtxTluvEmfcbBA13JMEUiZ8OrJGLO1qDC/VL+kjxhSi3jO0f1QoEO4
	 5+z/7uV7Ui8k07+EtMmTuNUYX266hGXTQRpjXx43dvck+B8l9UK8tUQkvNygVybF6R
	 VcDh7PUvng2XQ+aCBnGO/l8fE+KOzMbwGJBmKOc1RyAhRzJ0uq4xIWC9fv8Mzrgm4s
	 vT1bnJkipdbgQ==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 28SDbUNV3952098
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Wed, 28 Sep 2022 15:37:31 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ([192.168.12.72])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id 322L10RMMY; Wed, 28 Sep 2022 15:37:30 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28SDbUPY1046341
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Wed, 28 Sep 2022 15:37:30 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.96)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1odXFi-00EVu7-0x;
	Wed, 28 Sep 2022 15:37:30 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
	<20220905103546.1476277-5-a.fatoum@pengutronix.de>
Date: Wed, 28 Sep 2022 15:37:30 +0200
In-Reply-To: <20220905103546.1476277-5-a.fatoum@pengutronix.de> (Ahmad
	Fatoum's message of "Mon, 5 Sep 2022 12:35:45 +0200")
Message-ID: <lyv8p7wrfp.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-REDDOXX-Id: 63344e1a934b9d3e05358ab3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_063738_169944_1A0D609C 
X-CRM114-Status: UNSURE (   8.95  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] commands: gpio: add -d argument to set/get commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ahmad Fatoum <a.fatoum@pengutronix.de> writes:

> For debugging, it can be useful to reference GPIOs relative to a
> controller, e.g.:
>
>   gpio_direction_output -d gpio4 20 1
>
> -	if (argc < count)
> +	if (optind < count)
>  		return COMMAND_ERROR_USAGE;

This change seems to make '-d ...' mandatory.  E.g.

| :/ gpio_get_value 65
| 
| gpio_get_value - return value of a GPIO pin
| 
| Usage: gpio_get_value [-d CONTROLLER] GPIO


Enrico


