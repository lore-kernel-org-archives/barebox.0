Delivery-date: Thu, 20 Jun 2024 09:40:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKCOz-0098SP-0i
	for lore@lore.pengutronix.de;
	Thu, 20 Jun 2024 09:40:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKCOy-00012C-JZ
	for lore@pengutronix.de; Thu, 20 Jun 2024 09:40:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oj33ojmZF3xIkr5k3amrkNl7PW3Y5bvccdclkNde8iU=; b=AdH1HI6ji/FzGbbf09MdwwscGg
	vsF7+HiKNhcYG5VlSxVmiv5dcCWgtpFhs2EzQDwZn8UcskNOh7IpVEg8Ve4N1BngBom/L4SMq6GYU
	tB1zfNzojyKZObztPVHD3WlRjAFTooZdsuHTFRddk0eUgn4wmZdaznOFLT/5uTS28gvh30WTnotF4
	IlRA7tASdXbawrRw0PCdOIgdoi/rRN5zEX8d376r557fPSP78iNshUezlUKejUr7Wvz9TZNyl6B/E
	T3gmsNl2i0+xlGxxjl2/iWPcdq6CrugBCv3KnxAZ08IQTmAb6WCLQIfVyvHkfJsCdSVSbTe3S2zcI
	bBIgyTVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKCOS-00000004104-3D9T;
	Thu, 20 Jun 2024 07:39:40 +0000
Received: from arachnodroid.de ([45.129.180.196] helo=v220200749773122244.hotsrv.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKCOP-000000040zQ-2rCy
	for barebox@lists.infradead.org;
	Thu, 20 Jun 2024 07:39:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arachnodroid.de;
	s=dkim; t=1718869173;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oj33ojmZF3xIkr5k3amrkNl7PW3Y5bvccdclkNde8iU=;
	b=lCyyJ13i+npexbhi8f1LvGAGDd+FjmYdyd8ZGKE8qfx1IG0ZUHLzWuPBzc6aT7/I8FKKVe
	bWvyMflPUuopAHyjJJzIOCgYlZHL/5/fGsT2gd7NqJ99KzOFi9w2w99ic+/sINdDxLhutd
	w+c2niV1Ee4toQLCBwPzpS0uH5DdhPg=
Received: from [192.168.3.80] (ip4d158028.dynamic.kabel-deutschland.de [77.21.128.40])
	by v220200749773122244.hotsrv.de (OpenSMTPD) with ESMTPSA id 5cb7555e (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 20 Jun 2024 07:39:33 +0000 (UTC)
Message-ID: <63348085-4a7e-47c8-8f0d-cb31a353495b@arachnodroid.de>
Date: Thu, 20 Jun 2024 09:39:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20240620071616.3228015-1-a.fatoum@pengutronix.de>
From: Michael Taubert <info@arachnodroid.de>
In-Reply-To: <20240620071616.3228015-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_003938_085574_A21E872C 
X-CRM114-Status: GOOD (  18.87  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] efi: payload: inform users on attempt to boot non
 EFI-stubbed kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tested-by: Michael Taubert <info@arachnodroid.de>

Am 20.06.24 um 09:16 schrieb Ahmad Fatoum:
> Calling bootm on an x86 kernel image that lacks an EFI stub will result
> in a "no image handler found for image type MBR sector", which can be
> very confusing.
>
> Improve upon this by directly suggesting that the kernel's
> CONFIG_EFI_STUB option needs to be enabled, so the image has the
> expected PE magic (and the EFI stub code that comes with it).
>
> Cc: cybin <info@arachnodroid.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>   efi/payload/image.c | 23 +++++++++++++++++++++++
>   1 file changed, 23 insertions(+)
>
> diff --git a/efi/payload/image.c b/efi/payload/image.c
> index 0795010cd9d2..6a41338f2a2f 100644
> --- a/efi/payload/image.c
> +++ b/efi/payload/image.c
> @@ -337,6 +337,26 @@ static struct binfmt_hook binfmt_efi_hook = {
>   	.hook = efi_execute,
>   };
>   
> +static int do_bootm_mbr(struct image_data *data)
> +{
> +	/* On x86, Linux kernel images have a MBR magic at the end of
> +	 * the first 512 byte sector and a PE magic if they're EFI-stubbed.
> +	 * The PE magic has precedence over the MBR, so if we arrive in
> +	 * this boot handler, the kernel has no EFI stub.
> +	 *
> +	 * Print a descriptive error message instead of "no image handler
> +	 * found for image type MBR sector".
> +	 */
> +	pr_err("Can't boot MBR sector: Is CONFIG_EFI_STUB disabled in your Linux kernel config?\n");
> +	return -ENOSYS;
> +}
> +
> +static struct image_handler non_efi_handle_linux_x86 = {
> +	.name = "non-EFI x86 Linux Image",
> +	.bootm = do_bootm_mbr,
> +	.filetype = filetype_mbr,
> +};
> +
>   static struct binfmt_hook binfmt_arm64_efi_hook = {
>   	.type = filetype_arm64_efi_linux_image,
>   	.hook = efi_execute,
> @@ -350,6 +370,9 @@ static int efi_register_image_handler(void)
>   	if (IS_ENABLED(CONFIG_CPU_V8))
>   		binfmt_register(&binfmt_arm64_efi_hook);
>   
> +	if (IS_ENABLED(CONFIG_X86))
> +		register_image_handler(&non_efi_handle_linux_x86);
> +
>   	return 0;
>   }
>   late_efi_initcall(efi_register_image_handler);


