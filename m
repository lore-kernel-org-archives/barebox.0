Delivery-date: Tue, 14 Apr 2026 10:47:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCZQM-00C1FO-1i
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 10:47:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCZQL-0008A5-V9
	for lore@pengutronix.de; Tue, 14 Apr 2026 10:47:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wZ1ULNAs6KfLyizp5lQnKJgs4QiwWW3TijezafQd7uU=; b=fYr+TMzZy0IreuK0EBwjfC1hm5
	qV9xLjQNX2fTUDCTq0Ozl2UvoZpNMQ/YGa6YkeXYToHBf5RjpcYrEeieIoxVXoRX2MearSU1UVauc
	HOkePC8mS9Nx+4IUVklxFhjf+An1QegoqiJOI78qqisW4SlDVDnGXgvZ8vQjsg2dZhp4Pajr5Yn62
	0TqkTliNNuN0LAvXOelegkZHxqJ4iiU+1DGByc/9glM/Ue31E563GL5wim0L7qhqlxmulMBcOVj9g
	STJ8lRZMa/3Jxu+s/A7IF8xRK0g29mZeaGLUcp81OiCx8HcUVHWlPQ/qzEWLQLcwyrXIigQMj0G1Y
	qj5PyJgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCZPv-0000000H0mQ-1ZNZ;
	Tue, 14 Apr 2026 08:46:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCZPs-0000000H0lm-1E2l
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 08:46:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCZPq-00085h-KG; Tue, 14 Apr 2026 10:46:38 +0200
Message-ID: <d3963e44-2b2c-45ff-9bd0-cbe71180ebac@pengutronix.de>
Date: Tue, 14 Apr 2026 10:46:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Sascha Hauer <sascha@saschahauer.de>,
 "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260413123646.3552086-1-s.hauer@pengutronix.de>
 <20260413123646.3552086-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260413123646.3552086-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_014640_415116_E88D1B36 
X-CRM114-Status: GOOD (  19.35  )
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
Subject: Re: [PATCH 2/4] efi: loader: validate section raw data bounds against
 image size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/13/26 2:36 PM, Sascha Hauer wrote:
> From: Sascha Hauer <sascha@saschahauer.de>
> 
> When loading PE sections, PointerToRawData and SizeOfRawData from the
> section header are used to memcpy from the input image without checking
> that the source region fits within the image buffer. A crafted PE with
> PointerToRawData pointing near the end of the file causes a read past
> the input buffer.
> 
> Use size_add() for the bounds check so that the addition saturates to
> SIZE_MAX on overflow instead of wrapping, which would bypass the check
> on 32-bit architectures where unsigned long is 32 bits.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  efi/loader/pe.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/efi/loader/pe.c b/efi/loader/pe.c
> index 7c5aaa1f91..3190718df5 100644
> --- a/efi/loader/pe.c
> +++ b/efi/loader/pe.c
> @@ -706,6 +706,11 @@ efi_status_t efi_load_pe(struct efi_loaded_image_obj *handle,
>  			memset(efi_reloc + sec->VirtualAddress, 0,
>  			       sec->Misc.VirtualSize);
>  		}
> +		if (size_add(sec->PointerToRawData, copy_size) > efi_size) {
> +			pr_err("Section %d exceeds image size\n", i);
> +			ret = EFI_LOAD_ERROR;
> +			goto err;
> +		}
>  		memcpy(efi_reloc + sec->VirtualAddress,
>  		       efi + sec->PointerToRawData,
>  		       copy_size);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



