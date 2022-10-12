Delivery-date: Wed, 12 Oct 2022 13:08:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiZaw-005ztG-Vc
	for lore@lore.pengutronix.de; Wed, 12 Oct 2022 13:08:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiZav-0006zw-2N
	for lore@pengutronix.de; Wed, 12 Oct 2022 13:08:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8K+CKCANZCnwBx1izdVL2crsJQ9Hjwf97j3epZTlxIk=; b=zI7ZNeDxBwHjQuB9SA8JehtXWL
	FSfOiFikxvXvkUJik96dwVacGlX4Kd0avOd3g3bqHiI7RtfR3ZPl5eY2bulp7bwb/M7JCtShm6CZ5
	9fAWcIJwh1qHOU0hjJaE6Ul8Rcj+HJOEGI3Z65oM7fQYErknzujH8rp1zVDhYY1RegjRSO2DhfLHZ
	ygWPJ2nTdDUOJYiL8Z4kQNC3uhy2sE5XheFRvCe0Cvww95gwa0ArQqqmBPj/l0ar3+IGYVEiJYuTp
	VexVjz/OuKMzNN5kXIiPr7wwEuXgarNaYd0F/GbG0sHJIQ4ym0mFPFqceQy6S5s0ZVfvm80ahi7IB
	5V8cBUHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiZYu-007mhP-EU; Wed, 12 Oct 2022 11:06:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiZYl-007mgf-W9
	for barebox@lists.infradead.org; Wed, 12 Oct 2022 11:06:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1oiZYk-0006gn-N8; Wed, 12 Oct 2022 13:05:58 +0200
Message-ID: <3185bf68-2dd7-a8f8-9583-4e8088c59bb3@pengutronix.de>
Date: Wed, 12 Oct 2022 13:05:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20221011114927.546670-1-a.fatoum@pengutronix.de>
 <20221011114927.546670-2-a.fatoum@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20221011114927.546670-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_040601_296951_E3C8E74C 
X-CRM114-Status: GOOD (  24.97  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 2/2] ARM: start: drop support for machine type casted
 to boarddata pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10/11/22 13:49, Ahmad Fatoum wrote:
> Commit 84d28cec7f49 ("ARM: add a machine number mechanism for boarddata")
> added in 2015 added a struct barebox_arm_boarddata mechanism for PBL to
> pass machine type to barebox proper without going the legacy router of
> casting the machine type integer to a pointer directly.
> 
> The legacy way with casting was mostly broken two years ago with commit
> 390bc7834ffc ("ARM: start: check for machine type last").
> 
> Only user that complained about it was using an in-tree board that has
> in the meantime been fixed to use struct barebox_arm_boarddata instead.
> 
> Take this as indication that the code is dead and can be safely removed.
> 
> This may introduce regressions for boards that happened to work, despite
> their machine type integer being dereferenced as a pointer. If you
> happen to have such a board, please pass a pointer to a
> struct barebox_arm_boarddata instead.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Tested-by: Bastian Krause <bst@pengutronix.de>

Regards,
Bastian

> ---
> v2 -> v3:
>    - no change
> v1 -> v2:
>    - no change
> ---
>   arch/arm/cpu/start.c | 12 ------------
>   1 file changed, 12 deletions(-)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 672f26e0063c..f9b617aa855a 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -189,18 +189,6 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
>   		} else if (blob_is_arm_boarddata(boarddata)) {
>   			totalsize = sizeof(struct barebox_arm_boarddata);
>   			name = "machine type";
> -		} else if ((unsigned long)boarddata < 8192) {
> -			struct barebox_arm_boarddata *bd;
> -			uint32_t machine_type = (unsigned long)boarddata;
> -			unsigned long mem = arm_mem_boarddata(membase, endmem,
> -							      sizeof(*bd));
> -			pr_debug("found machine type %d in boarddata\n",
> -				 machine_type);
> -			bd = barebox_boarddata = (void *)mem;
> -			barebox_boarddata_size = sizeof(*bd);
> -			bd->magic = BAREBOX_ARM_BOARDDATA_MAGIC;
> -			bd->machine = machine_type;
> -			malloc_end = mem;
>   		}
>   
>   		if (totalsize) {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



