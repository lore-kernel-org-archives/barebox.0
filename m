Delivery-date: Mon, 17 Oct 2022 16:49:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okRQj-00Bgri-E1
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 16:49:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okRQh-00013o-EB
	for lore@pengutronix.de; Mon, 17 Oct 2022 16:49:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J7m+juo5Ro/sqWf0ZgMIepRQOJFoeipBq0O86B8xFPI=; b=Ofepfw3aDYqlKep4jneu7tryjy
	P/cXrmk0hnItX9qB5oXCDisGkebDtFW4SGYF8UCpPKrkrYuhtbd0B0DuYs8/LSV9fk7pPWQXZcHRo
	PMSzfiatRow1izAnVLDfEYpx8hRlS24oPZCwf5TgaGTWvHGU/Wk2V4GpnBd1kc6xB9LMpxFH4Bghi
	3zVMvCovYJDBPWF24k0x7ee3Vk+RSvZP52XIGmxhI1UBPARmZZrRkOyJstNYjS69oe+ETzRXGlzTp
	vWWITbtYxTD2SotTfUO8jKkhwA6NzfZjz4sObwp8xxggdtMXrbdLx64emlQSuUq2yCEBJs/9VsPC3
	Xa+yr4DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRPC-00Cq8J-7i; Mon, 17 Oct 2022 14:47:50 +0000
Received: from smtp95.iad3b.emailsrvr.com ([146.20.161.95])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRP7-00Cpzh-1y
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 14:47:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1666018063;
	bh=knhvvOy86u9tUT6+8A5BYp1/+lgjdhjvZOv7yLSOJJQ=;
	h=Date:Subject:To:From:From;
	b=Bfy3k8J5799/TCB+BVshSa9IJiIPaYIpHc1tAyZ+ycSE3ucLTzefWqGRFWbPYFJvv
	 IsIOKh4Iy+EY1ASiNdvXVpSEiBDgtXpDRU23psZcDrveBmo1/3NvCg3E4bpD73xgbl
	 QX/q3TF/7Zuz0bk9dOWuvHH46VIZgqvPorZhWGeA=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp12.relay.iad3b.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 48257C0106;
	Mon, 17 Oct 2022 10:47:43 -0400 (EDT)
Message-ID: <21c1503b-1522-a3f7-046b-e3868d6e525b@mev.co.uk>
Date: Mon, 17 Oct 2022 15:47:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-GB
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20221017133859.299705-1-a.fatoum@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <20221017133859.299705-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Classification-ID: 97527fe9-e4f2-4c71-b6de-0ef98f2216f9-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_074745_211613_0F2A8460 
X-CRM114-Status: GOOD (  16.20  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] resource: fix recently broken memory bank fusing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17/10/2022 14:39, Ahmad Fatoum wrote:
> barebox will fuse overlapping memory banks to avoid the common issue of
> the device tree being modified upstream to contain a minimum RAM size
> that would then conflict with a RAM size barebox determines by
> querying the memory controller. This was recently broken, because we
> changed memory banks to have IORESOURCE_MEM in their flags field,
> but resource_contains() used to compare regions won't return true if
> memory type differs. Fix this by settings .flags = IORESOURCE_MEM
> for the new resource as well.
> 
> Reported-by: Ian Abbott <abbotti@mev.co.uk>
> Fixes: d0b5f6bde15b ("of: reserved-mem: reserve regions prior to mmu_initcall()")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>   common/memory.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/common/memory.c b/common/memory.c
> index 7e24ecb2bd03..0ae9e7383cce 100644
> --- a/common/memory.c
> +++ b/common/memory.c
> @@ -149,6 +149,7 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
>   	struct resource newres = {
>   		.start = start,
>   		.end = start + size - 1,
> +		.flags = IORESOURCE_MEM,
>   	};
>   
>   	for_each_memory_bank(bank) {

Tested-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-



