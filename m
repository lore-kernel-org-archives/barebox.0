Delivery-date: Tue, 06 Jan 2026 14:27:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd75U-001uHp-1I
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:27:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd75R-0007ip-4n
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:27:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UvALQvmc3B0169UzraZxa5qnQo8klzNV4WSn4+lByTg=; b=JO4lxL70JcHOHPE8mwwmv/ZXPp
	635/4b+6MBtpAsQxXJp7wts1YYwpWlpNQGAYZVU9jbKuilAy8ifooX7JLY0n3HBY4ssVhLLKQ85zy
	DcjtVnQ7rCtLZKfYdt0L7cTbpdyADh8coiR05zWRdiMFd96LnktiK7cReRONG7XOBi9b2b1CeIi5L
	LEfMkWgjyw14WrZxLrbQFvnOj5gkpEmwHKNiw/KAwROCs0D56/LIoDU8sq5PcxXhGHVCCWwZrRg7+
	ufcF+X+lPr/Lvp/m0/N5V3ay6cJenmCoiwLQ66ac7f8wU1Db/tscP9kXSqqihjX4Biy6Kp28eo/Y9
	D8ZiFi/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd74z-0000000D64o-1ZNY;
	Tue, 06 Jan 2026 13:26:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd74w-0000000D63o-42eF
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:26:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd74v-0007dq-7O; Tue, 06 Jan 2026 14:26:29 +0100
Message-ID: <f08d61d1-382a-4f95-b9f8-69f37213bbb8@pengutronix.de>
Date: Tue, 6 Jan 2026 14:26:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-2-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-2-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_052631_002851_5566D59B 
X-CRM114-Status: GOOD (  16.27  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 02/21] elf: build for PBL as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> We'll link barebox proper as an ELF image into the PBL later, so compile
> ELF support for PBL as well.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

As we have a separate CONFIG_ARM_BOOTM_ELF, we should end up discarding
ELF support code in barebox proper when it's disabled, so:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/Makefile b/common/Makefile
> index 36dee5f7a98a7b2bbf67263ee5942520e6ce53e0..b1170ea4a801de2e7d0279edaddbf6f370a053c1 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -14,7 +14,7 @@ obj-y				+= misc.o
>  obj-pbl-y			+= memsize.o
>  obj-y				+= resource.o
>  obj-pbl-y			+= bootsource.o
> -obj-$(CONFIG_ELF)		+= elf.o
> +obj-pbl-$(CONFIG_ELF)		+= elf.o
>  obj-y				+= restart.o
>  obj-y				+= poweroff.o
>  obj-y				+= slice.o
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



