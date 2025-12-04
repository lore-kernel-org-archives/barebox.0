Delivery-date: Thu, 04 Dec 2025 08:16:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vR3ZX-007mtz-2P
	for lore@lore.pengutronix.de;
	Thu, 04 Dec 2025 08:16:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vR3ZX-0008Ei-5P
	for lore@pengutronix.de; Thu, 04 Dec 2025 08:16:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0dINsO5FpiJvnItI5dIfuc5RPBrAEEWQBp9DIDYjzqk=; b=IpYuj6SrS/AZQSk49O7uWrXNfk
	YPrdVTGqLSpmv3yY7dsAkAkrfga7mK5WzXKy3nh2Tum400R+Ns0go/1aAp1qgx2A90I6k0C0DVxov
	qICoTZtnlQvYki2dgYd253GZnlfraqmPJOCdyarrUB/FEcDFX8kxOMEBDoTdgOAhu0gRtWr0yCFRT
	i9qDtLvLithsdI0hJLG8aRKrhV+iuIMDsCPhk7fu7lwkwGjG41OoXLx584TalFNboa/wGx1mvvlpe
	DtemyiRA/agMWbjSg6NlEpNeqzQgcolPe+zx/296rR2E+NRzWhJ0Xr54O5BQCE5rTTr7hLHU/krj5
	cZ1tJKQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR3Yq-00000007bfE-2HQI;
	Thu, 04 Dec 2025 07:15:32 +0000
Received: from email3.ecloud.global ([2a01:4f9:3a:1386::2] helo=mail3.ecloud.global)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR3Yl-00000007beA-3Xbk
	for barebox@lists.infradead.org;
	Thu, 04 Dec 2025 07:15:32 +0000
Received: from authenticated-user (mail3.ecloud.global [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail3.ecloud.global (Postfix) with ESMTPSA id 7CCE388A4E6
	for <barebox@lists.infradead.org>; Thu,  4 Dec 2025 07:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=murena.io; s=mail3;
	t=1764832516;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0dINsO5FpiJvnItI5dIfuc5RPBrAEEWQBp9DIDYjzqk=;
	b=W+oEXWsKtU205ZgrhzYaHAxAcQJqK/pZGNdqIpywRbJaRBeJjmRtE6GWluMaISsSjyUcXa
	FcjLX6w7iaDFRxtmAwAQd/KC7Cmxdn6UgItY4OzFAKl08T2+0sbds33go/c0AJEf4uWM4I
	ji3/vvVUG6yrqfx6xYGryz3MNupW4xE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=murena.io;
	s=mail3; t=1764832516;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0dINsO5FpiJvnItI5dIfuc5RPBrAEEWQBp9DIDYjzqk=;
	b=WzdhnCTZKoLhn3D8FGfCNjwF8olUG6XwAMy/ZGf9cJ0tPn2NuXfyg1UdlY3oI2tAiUIjSO
	wwX2qyez3stKFCXwqy1aag9Q7wHJyDjrjhCeCb83SO68qT6j7zUiDfB/5a2RFLGKOJJ/7D
	rxo4/X6fe3i6T32az4d9FrM2HFEici0=
ARC-Authentication-Results: i=1;
	mail3.ecloud.global;
	auth=pass smtp.mailfrom=maud_spierings@murena.io
ARC-Seal: i=1; s=mail3; d=murena.io; t=1764832516; a=rsa-sha256; cv=none;
	b=aIhALLnKXFQxANx6NaiqyWzXM6fGqSyFP+35k5S3ewDO780FDQH9XbBYsoeu295L9vFp4G
	5xU3Oq3bU37I9DLQdxYtvc1NizwDJGZQjoFs3cA8WdM77yZNULhDnstK+kXjyeX/I+BIMg
	3e20SJYno+wcNiwXawTFEuHSiWfzxNk=
Message-ID: <af43d538-d7ea-4a29-abda-835f37e6564c@murena.io>
Date: Thu, 4 Dec 2025 08:15:11 +0100
MIME-Version: 1.0
To: barebox@lists.infradead.org
References: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
Content-Language: en-US
From: Maud Spierings <maud_spierings@murena.io>
In-Reply-To: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_231528_391943_21655E43 
X-CRM114-Status: GOOD (  12.46  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/3] ARM: stm32mp: Add Avenger96 board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 12/3/25 18:13, Sohaib Mohamed wrote:
> Add support for Arrow STM32MP157A Avenger96 board with bootloader
> update handlers for MMC and NOR flash.
> 
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
> ---
> Changes in v2:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v1: https://lore.kernel.org/r/20251128-avenger96-v1-0-009b13bd8df7@gmail.com

It seems you forgot to update your cover letter for v2 with a changelog, 
maybe send a reply email the amend it to help with review.

> ---
> Sohaib Mohamed (3):
>        common: bbu: refactor flash operations into separate function
>        ARM: stm32mp: bbu: add NOR flash FIP update handler
>        ARM: stm32mp: add support for STM32MP157A Avenger96 board
> 
>   arch/arm/boards/Makefile                    |  1 +
>   arch/arm/boards/dhcor-stm32mp1/Makefile     |  2 +
>   arch/arm/boards/dhcor-stm32mp1/board.c      | 47 ++++++++++++++++++
>   arch/arm/configs/multi_v7_defconfig         |  2 +
>   arch/arm/configs/stm32mp_defconfig          |  2 +
>   arch/arm/dts/Makefile                       |  1 +
>   arch/arm/dts/stm32mp157a-dhcor-stm32mp1.dts |  4 ++
>   arch/arm/mach-stm32mp/Kconfig               |  4 ++
>   arch/arm/mach-stm32mp/bbu.c                 | 77 +++++++++++++++++++++++++++++
>   common/bbu.c                                | 17 ++++---
>   include/bbu.h                               |  2 +
>   include/mach/stm32mp/bbu.h                  | 10 ++++
>   12 files changed, 163 insertions(+), 6 deletions(-)
> ---
> base-commit: a831f32782a5ce216301ccb52e4d27e3462632f3
> change-id: 20251128-avenger96-2b70277cdd7a
> 
> Best regards,



