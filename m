Delivery-date: Wed, 11 Jan 2023 11:21:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFYEw-008j9h-0b
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 11:21:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFYEu-0005iz-0B
	for lore@pengutronix.de; Wed, 11 Jan 2023 11:21:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vJ3r+t9/h+IDgy3V9HNfAgEem7wpsgDAw5LsPlH7UoY=; b=PYOPgSrEBq2haasWAajaSbNJ71
	GInH4FIbxcXnffTes/E70mDO30pM9qh3t2jxu/x5JesMNPvtTjTq1a5JuzjEtds5IURKo7TRJw8v6
	YsTOfAgxxJ7iAxQEGSVaDMTO5vqdv7DemW8uYw1NsXN0Fklnb9EyRm132AXMP5tEP1eGBo82qN4sA
	cHQw2i+j1Il3E1a5EdlMBRsEg/c6lKjGC2ymksPeqs4Z8uYquV+00RxU3KmpVEzslLHUrV/CPHzZE
	f5kXZ82vQfV9kzcmj5xquwFXW6m686yf8W6Iwc40Qdtq9P0uzYz27Bv5AKxrn675hLGNSyKr0SUW7
	rA1lZTTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYDj-00AkLy-Lx; Wed, 11 Jan 2023 10:20:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYDf-00AkLJ-DX
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 10:20:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pFYDe-0005Rw-3I; Wed, 11 Jan 2023 11:20:30 +0100
Message-ID: <600fb691-b7ce-bc5b-321a-6284534a3c9f@pengutronix.de>
Date: Wed, 11 Jan 2023 11:20:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
References: <20230111100111.677018-1-johannes.schneider@leica-geosystems.com>
 <20230111100111.677018-2-johannes.schneider@leica-geosystems.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230111100111.677018-2-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_022031_480424_1CFF00BE 
X-CRM114-Status: GOOD (  12.47  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/1] ARM: i.MX8M: fix typo in function call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.01.23 11:01, Johannes Schneider wrote:
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>

Please add commit messages. Even for seemingly trivial changes, there
is always something that can be explained, e.g.

"While both functions are equivalent, it looks out-of-place to use
 the imx8mm_ variant in an i.MX8MN board's code and in future we may
 elect to configure clocking differently on the i.MX8MP."

Which brings us to:

> -	imx8mm_early_clock_init();
> +	imx8mp_early_clock_init();

Did you compile-test this? There's no imx8mp_early_clock_init defined..

>  	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
>  
>  	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



