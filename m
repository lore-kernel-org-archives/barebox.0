Delivery-date: Fri, 26 May 2023 09:46:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2S9k-00Em06-2k
	for lore@lore.pengutronix.de; Fri, 26 May 2023 09:46:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2S9h-0007yQ-BL
	for lore@pengutronix.de; Fri, 26 May 2023 09:46:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Y2rgtfRZnOaevhnLhu38Ao6QZICAHOdOwxzCEEg0ls=; b=WSDrJU4OeTdPXmMnxD7k3An8rR
	2Eu7GemSYqki0KjIEza8CQROI1Y5NdEAY1OcDdXckYwz7DsoY3LH20jd46FI2FYVitscBx94+DTcW
	w8ExnimdpX0yRvGw/KWjAcL7+n+X3sa/7AKkrAcvA7h/+SOyrNmOGeHu7p4RXtSV+DqkycF2AdAN4
	iEMZ0TbSvmvl6ukPtlHVNv52bSYcDu6q07TKAi5MULRGwm09qAZk8PHoQcNp5uzLGhKZc4HflgagS
	UMtIEAP2KaWyGJfYsaa9Pjyy7yGB2Biq7kbZ1IbsanVDeTuwLmwZZ22MYaeB003fycwzEKH075tDm
	RklxpE3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2S8Z-001UJy-1g;
	Fri, 26 May 2023 07:45:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2S8V-001UJD-2a
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 07:45:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q2S8U-0007dK-84; Fri, 26 May 2023 09:45:18 +0200
Message-ID: <919f0a5e-14e1-694d-ccf2-ca5f3b055b11@pengutronix.de>
Date: Fri, 26 May 2023 09:45:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230526063746.1155297-1-a.fatoum@pengutronix.de>
 <20230526063746.1155297-4-a.fatoum@pengutronix.de>
 <20230526065436.GQ17518@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230526065436.GQ17518@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_004519_839956_B7669ACE 
X-CRM114-Status: GOOD (  30.60  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 3/7] include: sync <linux/linkage.h> with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 26.05.23 08:54, Sascha Hauer wrote:
> On Fri, May 26, 2023 at 08:37:42AM +0200, Ahmad Fatoum wrote:
>> Linux has added new SYM_ macros in the assembly code and deprecated
>> ENTRY/PROC. Import the necessary definitions to make kernel code
>> porting easier.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/Kconfig          |   6 +
>>  include/linux/linkage.h | 321 ++++++++++++++++++++++++++++++++++++----
>>  2 files changed, 298 insertions(+), 29 deletions(-)
>>
>> diff --git a/common/Kconfig b/common/Kconfig
>> index ce94718c848a..5346ba5a623c 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -1710,3 +1710,9 @@ config DDR_SPD
>>  
>>  config HAVE_ARCH_ASAN
>>  	bool
>> +
>> +config ARCH_USE_SYM_ANNOTATIONS
>> +	bool
>> +	help
>> +	  This is selected by architectures that exclusively use the new SYM_
>> +	  macros in their assembly code and not the deprecated ENTRY/PROC.
>> diff --git a/include/linux/linkage.h b/include/linux/linkage.h
>> index efb2d6fa407b..c262c7b36907 100644
>> --- a/include/linux/linkage.h
>> +++ b/include/linux/linkage.h
>> @@ -3,9 +3,16 @@
>>  #ifndef _LINUX_LINKAGE_H
>>  #define _LINUX_LINKAGE_H
>>  
>> -#include <linux/compiler.h>
>> +#include <linux/compiler_types.h>
>> +#include <linux/stringify.h>
>> +#include <linux/export.h>
> 
> This breaks compilation zylonite310_defconfig. include/linux/export.h is
> not safe for being included from assembly files when CONFIG_MODULES is
> enabled. We could drop this inclusion here as linux/export.h doesn't
> contain anything useful for assembly code. However, I added the
> following instead to not trap into this again should linux/linkage.h
> be updated again.
> 
> Sascha
> 
> From 36b3448b724db0ed1888d61de7069df0ebcfcdc1 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Fri, 26 May 2023 08:48:55 +0200
> Subject: [PATCH] include: make linux/export.h safe for being included from
>  assembly
> 
> include/linux/linkage.h is included from assembly files and itself
> includes linux/export.h, so add #ifndef __ASSEMBLY__ protection
> to that file as well.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Looks good to me. Thanks!

> ---
>  include/linux/export.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/include/linux/export.h b/include/linux/export.h
> index 88d318bd8a..90f6ada2d5 100644
> --- a/include/linux/export.h
> +++ b/include/linux/export.h
> @@ -2,6 +2,8 @@
>  #ifndef _LINUX_EXPORT_H
>  #define _LINUX_EXPORT_H
>  
> +#ifndef __ASSEMBLY__
> +
>  #define THIS_MODULE	0
>  
>  #ifdef CONFIG_MODULES
> @@ -36,4 +38,6 @@ struct kernel_symbol
>  
>  #endif /* CONFIG_MODULES */
>  
> +#endif /* __ASSEMBLY__ */
> +
>  #endif /* _LINUX_EXPORT_H */

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



