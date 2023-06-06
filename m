Delivery-date: Tue, 06 Jun 2023 10:09:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Rl4-00Cnyz-29
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 10:09:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Rl1-0001GC-LP
	for lore@pengutronix.de; Tue, 06 Jun 2023 10:09:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9OVU5rra6up2IZfl5VR2yVNzGkoezNrqykFpz3BTTrs=; b=HjRnwXQk5jtYpS4fQab2hDhYOf
	rgtbByTRD7F6J+kaHZP0l4IMl87FA4ZHHLdUn0F705O4a2x8BKCz4e+c3GwC/DU0RFBJLQFnIb3/D
	II9Nu7s06h/HYJeLt59hY0VHlBt2p30Ezc6hepD69SmGYifRQSEQs4z/USOrXdN8u8WYn46GGQmOg
	iUgV1SZ2UW4EBbsTVnYlVkGnGeGnwzXcoygnOoBlTktLslUNZtCAT3tos4gtyDKsoIPcYp6cemroZ
	Ea2ZXpih1DfGJt1sv0AITEBFFL5RQBGvCGfYUfts8HeI5UBs0rkHGkvtvEMZi8OtUqYoTETP+AZjt
	qRGXesog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Rjx-000jf0-2o;
	Tue, 06 Jun 2023 08:08:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Rju-000jdM-23
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 08:08:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6Rjs-0001AZ-Pv; Tue, 06 Jun 2023 10:08:24 +0200
Message-ID: <a0d9ab6c-593e-d67b-cd9f-26de0aa56273@pengutronix.de>
Date: Tue, 6 Jun 2023 10:08:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230605202634.42175-1-denorl2009@gmail.com>
 <20230605202634.42175-4-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230605202634.42175-4-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_010826_669243_88301EDF 
X-CRM114-Status: GOOD (  18.81  )
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
Subject: Re: [PATCH 03/17] MIPS: reloc: fix relocation with CONFIG_64BIT
 enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.06.23 22:10, Denis Orlov wrote:
> Use CKSEG instead of KSEG, allowing it to compile on 64BIT
> configurations. Also make sure that we do not truncate target
> relocation address by writing it into a 32-bit wide variable.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

Reviewd-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/mips/lib/reloc.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
> index b084a88be7..3c845a9663 100644
> --- a/arch/mips/lib/reloc.c
> +++ b/arch/mips/lib/reloc.c
> @@ -108,8 +108,7 @@ static void apply_reloc(unsigned int type, void *addr, long off)
>  
>  void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
>  {
> -	unsigned long addr, length, bss_len;
> -	u32 relocaddr, new_stack;
> +	unsigned long addr, length, bss_len, relocaddr, new_stack;
>  	uint8_t *buf;
>  	unsigned int type;
>  	long off;
> @@ -121,9 +120,9 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
>  	length = __bss_stop - __image_start;
>  	relocaddr = ALIGN_DOWN(ram_size - length, SZ_64K);
>  	if (IS_ENABLED(CONFIG_MMU)) {
> -		relocaddr = KSEG0ADDR(relocaddr);
> +		relocaddr = CKSEG0ADDR(relocaddr);
>  	} else {
> -		relocaddr = KSEG1ADDR(relocaddr);
> +		relocaddr = CKSEG1ADDR(relocaddr);
>  	}
>  	new_stack = relocaddr - MALLOC_SIZE - 16;
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



