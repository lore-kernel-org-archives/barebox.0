Delivery-date: Mon, 03 Mar 2025 10:32:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp2A5-009HUt-27
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 10:32:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp2A4-00008w-FC
	for lore@pengutronix.de; Mon, 03 Mar 2025 10:32:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tK/sVtS+bQIgKFrt0sEeTrT/4JhTtWThn3/n1Rszsus=; b=GJIKOdtZmFYPF7tcmfWSZ8aOH6
	nNpFoLmrZdMbapPZ1ISjgaLYZfC1PSGvDMcgKdd1oTv8GqPRMN0jRdBiWJTDUw/ttjcdaiWY0dh+7
	MRw/huwMS7jkLBdByumkkkojhP9bqSjnSPBA5di0P6ZHD6I7Wr02YESNIPK0itQ3CoOruKxJwm4V+
	PW6X1yQO3npNHJRSqPcfTJ9AcO9dOORJAEc4ckXm6ly4oG6bwpux0Uk0UOnlWTv4E6yyBD8O966dw
	g6TziIoNt8NjukduMl8bK0ooyzAa7iuxxWVfidIOMk0I8sIeH/Slamql8c9clWWmWXZ4MgR0kLMZW
	iUDNJGYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp29W-000000009BR-0z5N;
	Mon, 03 Mar 2025 09:31:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1qL-000000005B2-3aTn
	for barebox@bombadil.infradead.org;
	Mon, 03 Mar 2025 09:12:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=tK/sVtS+bQIgKFrt0sEeTrT/4JhTtWThn3/n1Rszsus=; b=DAk46S+U+4FOvoNQTxWUj3AYw+
	Tj7/xx4mlNrY3+C8ZIYTmxF0khMU+R2cXtpIzD+e64NELij5n5yhvWFfByjisaGsIYQtU5y04hsk5
	QxjI1mxqcZ/C9fRNYVthYfYY1SU/EFjxmAtB/NnL8l4Ct+QcN6o+q0D1zS56Hhngriyn+GOSe0y7I
	SpIgD35M+JkBm3Qpdy53Tr4vc3CSDTleCDIwMSrz6H6x+WfcVqQgz6v5i2AdAXGhXEDFF2rZaqLiB
	mrFwY5IJIP9IajaNrBdCDQAoZJ/vumRnDsKgxKcNQBHWTCkzulTLPfYF5TKUs7jBcPJx9rjEXHEav
	Q12ZhZuQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1qI-00000004WmH-2B2H
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 09:12:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tp1qH-0006U2-8f; Mon, 03 Mar 2025 10:12:05 +0100
Message-ID: <f8f5ceab-65d0-44a3-bf19-8fce40f56bc3@pengutronix.de>
Date: Mon, 3 Mar 2025 10:12:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
References: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
 <20250303-v2025-02-0-topic-socfpga-arria10-v1-1-d66021246a66@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250303-v2025-02-0-topic-socfpga-arria10-v1-1-d66021246a66@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_091206_921726_46DF52B9 
X-CRM114-Status: GOOD (  18.83  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] ARM: SoCFPGA: move wait_on_timeout to generic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Steffen,

On 03.03.25 09:59, Steffen Trumtrar wrote:
> To be able to use the __wait_on_timeout macro in more places, move it to
> the generic socfpga header.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/mach-socfpga/arria10-xload.c | 16 ----------------
>  include/mach/socfpga/generic.h        | 16 ++++++++++++++++
>  2 files changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
> index afec55c33a278f7aa7c13d16557881a5e13f38f9..fb87135ca94a1fd12992bc8e7fb9d1725831aad6 100644
> --- a/arch/arm/mach-socfpga/arria10-xload.c
> +++ b/arch/arm/mach-socfpga/arria10-xload.c
> @@ -16,22 +16,6 @@
>  #include <mach/socfpga/generic.h>
>  #include <linux/sizes.h>
>  
> -#define __wait_on_timeout(timeout, condition) \
> -({								\
> -	int __ret = 0;						\
> -	int __timeout = timeout;				\
> -								\
> -	while ((condition)) {					\
> -		if (__timeout-- < 0) {				\
> -			__ret = -ETIMEDOUT;			\
> -			break;					\
> -		}						\
> -		arria10_kick_l4wd0();                           \
> -                __udelay(1);                                    \

Unrelated to your patch. But feeding the watchdog every 1us is
a bit excessive, isn't it?

Cheers,
Ahmad

> -	}							\
> -	__ret;							\
> -})
> -
>  int a10_update_bits(unsigned int reg, unsigned int mask,
>  		    unsigned int val)
>  {
> diff --git a/include/mach/socfpga/generic.h b/include/mach/socfpga/generic.h
> index 40224897c1d2e05b934cd49963ac4ddeaeb28a25..9891dbe4fe1016ce0732d635fdd06ae7add16ac3 100644
> --- a/include/mach/socfpga/generic.h
> +++ b/include/mach/socfpga/generic.h
> @@ -106,6 +106,22 @@ static inline void __udelay(unsigned us)
>  	for (i = 0; i < us * 3; i++);
>  }
>  
> +#define __wait_on_timeout(timeout, condition) \
> +({								\
> +	int __ret = 0;						\
> +	int __timeout = timeout;				\
> +								\
> +	while ((condition)) {					\
> +		if (__timeout-- < 0) {				\
> +			__ret = -ETIMEDOUT;			\
> +			break;					\
> +		}						\
> +		arria10_kick_l4wd0();                           \
> +		__udelay(1);                                    \
> +	}							\
> +	__ret;							\
> +})
> +
>  struct socfpga_barebox_part {
>  	unsigned int nor_offset;
>  	unsigned int nor_size;
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


