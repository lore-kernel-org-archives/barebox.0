Delivery-date: Tue, 09 Jan 2024 10:28:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8PS-00A6dU-0q
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 10:28:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8PR-0003R3-Kx
	for lore@pengutronix.de; Tue, 09 Jan 2024 10:28:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UneQEHLA10EmX/u2Wr33yDiLNTTCWGUSDFItiwz2lP4=; b=pEO2zf3oTp1aIs7J533MdVbDUD
	jnAx+oAHFhtdrWAGgquS74khtGpr+IFy6FOVsMmDcWo2wVfu8OAdY+0qRTkpJEUmL12dRUnIzKgEU
	6SB3gIzSacvbb6b0bK5fxIzzBid+HLfRqsNQUCw+7DIF7BJ7JncdPXaE/QODQOARACWTgjVdOeSod
	CM7N4E/cHxfxQCzdPepTrGMr7kdk1jMxNQgqylOEKFgwRCTDypfWza5mZnITit/7QpXshB3lTnVAq
	7m9BnlhEDKorjHDWeU7VgSzWhCqjPG2udSb5ewqWcUKsUNWxReBC9cyAmRDgekVXHuQHkg908+Ms1
	i1PDcaaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8OO-007VoH-0u;
	Tue, 09 Jan 2024 09:27:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8OL-007VnZ-0N
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 09:27:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rN8OJ-0002xk-Ed; Tue, 09 Jan 2024 10:27:23 +0100
Message-ID: <9676c8d8-40c6-4c25-86d4-0ed5d505fa30@pengutronix.de>
Date: Tue, 9 Jan 2024 10:27:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240109091603.235589-1-s.hauer@pengutronix.de>
 <20240109091603.235589-10-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240109091603.235589-10-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_012725_152651_83880750 
X-CRM114-Status: GOOD (  14.33  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 09/10] ARM: psci: make header self contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 09.01.24 10:16, Sascha Hauer wrote:
> arch/arm/include/asm/psci.h uses struct device_node, so include of.h
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/include/asm/psci.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/include/asm/psci.h b/arch/arm/include/asm/psci.h
> index dbb9adfc3e..f8fc2a8471 100644
> --- a/arch/arm/include/asm/psci.h
> +++ b/arch/arm/include/asm/psci.h
> @@ -6,6 +6,8 @@
>  #ifndef __ARM_PSCI_H__
>  #define __ARM_PSCI_H__
>  
> +#include <of.h>

Only a pointer is used, so please just forward declare struct device_node.

Cheers,
Ahmad

> +
>  #define ARM_PSCI_VER(major, minor)	(((major) << 16) | (minor))
>  #define ARM_PSCI_VER_1_0		ARM_PSCI_VER(1,0)
>  #define ARM_PSCI_VER_0_2		ARM_PSCI_VER(0,2)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



