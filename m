Delivery-date: Tue, 22 Jul 2025 17:25:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueErV-002bLC-2h
	for lore@lore.pengutronix.de;
	Tue, 22 Jul 2025 17:25:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueErV-000682-9Q
	for lore@pengutronix.de; Tue, 22 Jul 2025 17:25:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z2f6WZnbju2VeTX5dAUDmM1JjQbMj1c0lmTPYnYEMS8=; b=lKW2zkrqQrO01QrArDcEPEXLqX
	VQGaz31/3ErtuA1IsWJUGzau29kulSXF9ygO2jGWrHno3CUd0PzQvcqQOLXikikGyY/6CdvVP6zPb
	tSNZN4NUGCGkYPUo+qC97HItn8OTyb72DrylCVIvEGWqPamZUVewuz82kGOCeBLSaNV4j1e9nBlCX
	tyAINIfl1a8KRuWU8pYfEaC2Xd2RpbSefS6NnKQCoY2JhpEYCF9I8lyLMeqGbCTxBlPsZMRZvbHZ1
	ATS1Aoj4EzWJWbAD7o10MXlN31HvEU/KBLHK0zZbbv58mPMGwHNrc8oVn85qZVd1xQkkJ0Pg0ia5q
	qFIP05vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueEr2-00000002rYq-12Dv;
	Tue, 22 Jul 2025 15:24:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDeL-00000002dkN-24nN
	for barebox@lists.infradead.org;
	Tue, 22 Jul 2025 14:07:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ueDeK-0004X2-6t; Tue, 22 Jul 2025 16:07:20 +0200
Message-ID: <44e20622-1c1f-4087-8b34-01cf378d3004@pengutronix.de>
Date: Tue, 22 Jul 2025 16:07:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrei Lalaev <andrey.lalaev@gmail.com>, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250611175645.144025-1-andrey.lalaev@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250611175645.144025-1-andrey.lalaev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_070721_539549_45B5F6D1 
X-CRM114-Status: GOOD (  16.83  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: fastboot: send FAIL if variable does not exist
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Andrei,

On 6/11/25 19:56, Andrei Lalaev wrote:
> According to doc [1], new implementations should send FAIL if the
> variable specified in the getvar command does not exist.
> 
> [1]: https://android.googlesource.com/platform/system/core/+show/refs/heads/main/fastboot/README.md#121
> 
> Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>

Did you run into any particular issues that motivated your change?

I am asking, because this causes error output for is-logical:$partition,
which barebox didn't implement.

I sent a patch to implement it, but would be good to know the backstory
on this patch. :)

Thanks,
Ahmad

> ---
>  common/fastboot.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/fastboot.c b/common/fastboot.c
> index 56bc4e82c4..3df3c227a3 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -372,7 +372,7 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
>  		goto out;
>  
>  skip_partitions:
> -	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
> +	fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "");
>  out:
>  	fastboot_free_variables(&partition_list);
>  }

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



