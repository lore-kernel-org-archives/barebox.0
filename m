Delivery-date: Mon, 22 Sep 2025 09:38:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0b7d-005sLQ-2J
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 09:38:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0b7d-0003F7-4A
	for lore@pengutronix.de; Mon, 22 Sep 2025 09:38:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JIfJN6pl5Z6vljZxzBG47ST4nJbliXYyoEo4BeBsDsA=; b=1gW9rCijRSf4kdVk1kuzST8wRG
	3sOaFBqJzDU6KttgjROiUSDq/tbJaQxFyELUVbA04E943kxxU0jmvalQ2Ajat6UsTz4a1V1QigzGA
	beNze6wI045g8TKFUOBa1gjHs2UHH/juBAs3Ncqe4wINDPiSDT1NGtMEQP7gVyR5zSU6gVLGo09xn
	+ckJAPn5DxU+AYTS371euCXod1nCmcn6riIUBUth51xYmubUda89ZkkL7H+sOW7+ck/T8eES7f9fx
	FCi+uqG4okMsC9FKfc0RNjsNTMhg4mt/2xOmDD0CkH9OGsfOUf6ej/oQoiG626KaPfmNNz8Yg+ugp
	RUe36vWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0b7F-00000009OxJ-0rkT;
	Mon, 22 Sep 2025 07:37:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0b7C-00000009Ov5-32Lr
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 07:37:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v0b7A-0003BE-U1; Mon, 22 Sep 2025 09:37:37 +0200
Message-ID: <ef69e047-03df-483f-80b2-30c67a4b093d@pengutronix.de>
Date: Mon, 22 Sep 2025 09:37:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_003738_773872_E4AF1DD6 
X-CRM114-Status: GOOD (  14.39  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/15] Implement efi loader to run barebox as efi payload
 app and then load efi stubed application/kernels.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 20.09.25 05:03, chalianis1@gmail.com wrote:
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

There's still some refactoring needed to avoid intermittent changes
that are removed/reworked in the same series.

I am collaborating on it with Anis and a revised series will follow
for wider review.

Cheers,
Ahmad

> ---
> Ahmad Fatoum (5):
>       efi: payload: split image handling from legacy handover boot support
>       efi: payload: add support for efi stub boot
>       efi: payload: add support for fit image
>       efi: payload: make selectable without COMPILE_TEST
>       ARM: cpu: allow selecting CPU_V7/CPU_V8 directly
> 
> Chali Anis (10):
>       arm: efi: add a generic defconfig for v8 efi payload,
>       efi: payload: initrd: implement efi initrd media protocol.
>       common: filetype: add x86 linux filetype.
>       efi: payload: early-mem: helps to correctly boot x86 linux.
>       efi: payload: bootm: add x86 efi stub boot support.
>       efi: payload: x86: enable the possibility to efi stub bootm for x86.
>       malloc: tlsf: efi: add a fallback for allocate more memory when we are in efi.
>       configs: efi: arm64: x86: enable the use of efi malloc fallback.
>       efi: payload: earlymem: allocate only the barebox needs in term of memory.
>       efi: payload: bootm: remove redundant reallocations in image loader
> 
>  arch/arm/configs/efi_v8_defconfig | 267 +++++++++++++++++++++
>  arch/arm/cpu/Kconfig              |   7 +-
>  arch/x86/configs/efi_defconfig    |   1 +
>  common/Kconfig                    |   9 +
>  common/Makefile                   |   1 +
>  common/efi_malloc.c               |  80 +++++++
>  common/filetype.c                 |   4 +
>  common/tlsf_malloc.c              |  22 +-
>  efi/Kconfig                       |  23 +-
>  efi/guid.c                        |   7 +
>  efi/payload/Kconfig               |  11 +
>  efi/payload/Makefile              |   3 +
>  efi/payload/bootm.c               | 477 ++++++++++++++++++++++++++++++++++++++
>  efi/payload/early-mem.c           |  19 +-
>  efi/payload/efi-initrd.c          | 123 ++++++++++
>  efi/payload/entry-multi.c         |   5 +-
>  efi/payload/entry-single.c        |   5 +-
>  efi/payload/handover.c            | 195 ++++++++++++++++
>  efi/payload/image.c               | 228 +-----------------
>  efi/payload/image.h               |  14 ++
>  efi/payload/setup_header.h        |  63 +++++
>  include/efi.h                     |   4 +
>  include/efi/efi-payload.h         |   5 +-
>  include/filetype.h                |   6 +
>  include/malloc.h                  |  19 ++
>  25 files changed, 1352 insertions(+), 246 deletions(-)
> ---
> base-commit: 3366e9e04a284b7fed71c4b8729fe331b6547d6b
> change-id: 20250919-efi-loader-cdff44ad2d40
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


