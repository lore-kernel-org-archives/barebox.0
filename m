Delivery-date: Tue, 02 Jan 2024 12:05:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcaq-000Uzz-0G
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 12:05:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcao-0003X5-Sq
	for lore@pengutronix.de; Tue, 02 Jan 2024 12:05:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q3Hy4AdqiVhvO0IlyP0vXhWX8SlqU3s1vvJ1z2nEkE0=; b=1I7QlwxsJqIEQGJXf1npU1ik6I
	ZY2Rdu0LNFPhbu0nXEUNrJC8JudpMNrLYWnvNzvz2GuLJsuIdcMxleXjux4GoGFWdbm+y3jO094E3
	BA+8l3B3O8NalkVerxVnb/E8m5o5Gb7hSTfHVVPYHXf1tXQKjQLaQBd1MDcXFPO+CETd7j3tduUra
	LfFTkMhGvUEWbTaHOkl/Y5WWxL3j6/YaYc/JbedRcGXoz0JOoz0x4BzVxBQtnY1klla4PyznGA7eO
	HKDWC8s1ewCOJyU5dUuw0PDsT4PiWoxfAkPq9XlBJeieAt7KcgjvY2TERE0/SINyZsbRlt4yLOuVa
	3nQWpKWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcZo-007fqL-2I;
	Tue, 02 Jan 2024 11:04:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcZl-007fpp-1o
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 11:04:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rKcZk-0003Pu-Ci
	for barebox@lists.infradead.org; Tue, 02 Jan 2024 12:04:48 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rKcZi-003A6h-TJ
	for barebox@lists.infradead.org; Tue, 02 Jan 2024 12:04:48 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rKcZj-009u2e-Ts
	for barebox@lists.infradead.org; Tue, 02 Jan 2024 12:04:47 +0100
Date: Tue, 2 Jan 2024 12:04:47 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20240102110447.y5qkwykvbjd2jkfb@pengutronix.de>
References: <20240102110118.280032-1-m.felsch@pengutronix.de>
 <20240102110118.280032-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240102110118.280032-2-m.felsch@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_030449_595452_86D0C749 
X-CRM114-Status: GOOD (  14.38  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] ARM: boars: i.MX8MQ: align SPDX header with other
 imxcfg files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 24-01-02, Marco Felsch wrote:
> Align the SPDX-License-Identifier information with the other .imxcfg
> files. While on it add a space to separate the gencsf header from the
> the remaining options. No functional changes.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

I noticed a typo within the subject right after sending the patch, can
you fix this while applying?

Regards,
  Marco

> ---
>  arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg     | 3 ++-
>  arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg b/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
> index 0f68c25b91f0..f82759f8499a 100644
> --- a/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
> +++ b/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
> @@ -1,8 +1,9 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> +# SPDX-License-Identifier: GPL-2.0-only
>  
>  soc imx8mq
>  
>  loadaddr 0x007E1000
>  max_load_size 0x3F000
>  ivtofs 0x400
> +
>  #include <mach/imx/habv4-imx8-gencsf.h>
> diff --git a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
> index 0f68c25b91f0..f82759f8499a 100644
> --- a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
> +++ b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
> @@ -1,8 +1,9 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> +# SPDX-License-Identifier: GPL-2.0-only
>  
>  soc imx8mq
>  
>  loadaddr 0x007E1000
>  max_load_size 0x3F000
>  ivtofs 0x400
> +
>  #include <mach/imx/habv4-imx8-gencsf.h>
> -- 
> 2.39.2
> 
> 
> 


