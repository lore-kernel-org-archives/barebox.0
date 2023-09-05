Delivery-date: Tue, 05 Sep 2023 16:36:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdXAb-0051in-Eu
	for lore@lore.pengutronix.de; Tue, 05 Sep 2023 16:36:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdXAZ-0008LO-9P
	for lore@pengutronix.de; Tue, 05 Sep 2023 16:36:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7iwN7gLuWyHuxzMcV1OAbTqd34I7rZdaH3lr74/gFcU=; b=JsnCfkXy5tWZQIAaviwTVaZurD
	/vjhopZDV1JAuUb7Du7Z3vMTTI1xigZBsb3v36cCXXN9lvVNzWRfDzHlsJwwnzKzchYgNE3y2esyQ
	Hcp8By8zoaWLBS6eUjmOgjuicCU0rPChtKyBpfUd6d+09X1WXLVzKyowow2nBGUvSnCMHPFWVNi4k
	v9rA3Q/7aCpdrmx7ZxOMB7c8TlOVbPnV8VUxfXpR3+oiZETuQxni1NRyAFvGgZzPDEQz2E/g9WRC6
	wfYauaPVXIP3LaMfusj73zk7POK9dD6TkDoQ4L5run9vHgEmoJyilRek1Dwz/NaBqqOrM5Q3Pr7kt
	fNB79XaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdX9Q-006BpL-2h;
	Tue, 05 Sep 2023 14:35:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdX9N-006Bol-0z
	for barebox@lists.infradead.org;
	Tue, 05 Sep 2023 14:35:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qdX9L-0007Vz-S5; Tue, 05 Sep 2023 16:35:27 +0200
Message-ID: <591d7cc9-b875-0509-62b3-c9a803adab6c@pengutronix.de>
Date: Tue, 5 Sep 2023 16:35:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20230905142648.2936237-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230905142648.2936237-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_073529_341759_0804AB00 
X-CRM114-Status: GOOD (  20.79  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: i.MX8M: romapi: reserve scratch space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 05.09.23 16:26, Ahmad Fatoum wrote:
> We have 32K of RAM at the end of the initial memory, where a
> prebootloader can place data for future use. i.MX8M is currently the
> only user and currently uses it to save the ROM API log, which is
> located in SRAM and is inaccessible by the time barebox proper runs
> in EL2. This area was so far not reserved, which can lead to clobbering
> it when chainloading barebox. Avoid this by requesting the region.

Please only apply after <20230905093210.2067770-1-m.felsch@pengutronix.de>,
otherwise a chainloaded barebox on systems with >6G would end up completely
in >4G space, which triggers a bug that will be fixed separately (but is
worked around by Marco's patch above).

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/romapi.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
> index 2fd803b0d998..aef0ff0534c9 100644
> --- a/arch/arm/mach-imx/romapi.c
> +++ b/arch/arm/mach-imx/romapi.c
> @@ -10,6 +10,8 @@
>  #include <mach/imx/xload.h>
>  #include <asm/barebox-arm.h>
>  #include <zero_page.h>
> +#include <memory.h>
> +#include <init.h>
>  #include <pbl.h>
>  
>  static int imx8m_bootrom_load(struct rom_api *rom_api, void *adr, size_t size)
> @@ -84,6 +86,14 @@ const u32 *imx8m_get_bootrom_log(void)
>  	return NULL;
>  }
>  
> +static int imx8m_reserve_scratch_area(void)
> +{
> +	return PTR_ERR_OR_ZERO(request_sdram_region("scratch area",
> +				    (ulong)arm_mem_scratch_get(),
> +				    sizeof(struct imx_scratch_space)));
> +}
> +device_initcall(imx8m_reserve_scratch_area);
> +
>  void imx8m_save_bootrom_log(void *dest)
>  {
>  	const u32 *rom_log;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



