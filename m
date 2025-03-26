Delivery-date: Wed, 26 Mar 2025 07:53:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txKdn-004KZe-2p
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 07:53:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txKdm-00055u-NY
	for lore@pengutronix.de; Wed, 26 Mar 2025 07:53:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9iHjUkyeyfndWx2JTGDggDtjEcRt98xLM+6libYB3/0=; b=xx0NZ7OeOucKQ7h8B2SsfEz1nJ
	PIq/+bIqQEqSSb6wiJIgLMSiCFRLWQZIXUeozJTbnRpFltyKBGFgoz+QA/YWTP9Sz6nwGg5EHBF8z
	mjGr7z/OgOSfRvmC/I6rsFhFWNoI0CuuLyFKolM7QG2ro0dufwZv5ukk+ZM7In9gITY5NM/icGetv
	CoR0g7IPuv04hIGQrUvfynuhKzeY1Lnbu0odD1oyPVrEFV9wBNH3aZb9KEHeS8jpf9+SUXieyRYTF
	Jhv0QQS3wgCiX7NTvtKcxZf5nKMDVuV6n5eNoP1JKklSC98mnQoCILU+vXkZSn24ODp4dufWbdzW2
	tD/YqQvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txKd5-00000007h57-28qv;
	Wed, 26 Mar 2025 06:52:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txKd1-00000007h4i-3PcQ
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 06:52:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txKcz-000502-GE; Wed, 26 Mar 2025 07:52:41 +0100
Message-ID: <579eeb04-43ef-4665-99c8-dd9d19cdbb3b@pengutronix.de>
Date: Wed, 26 Mar 2025 07:52:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20250312-rpmb-v1-7-0f213382a3f3@pengutronix.de>
 <20250325143650.29433-1-jmaselbas@zdiv.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250325143650.29433-1-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_235243_856907_334F4B8D 
X-CRM114-Status: GOOD (  12.92  )
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
Subject: Re: [PATCH] fixup! tee: optee: implement RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Jules,

On 25.03.25 15:36, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> ---
>  drivers/tee/optee/rpmb.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/tee/optee/rpmb.c b/drivers/tee/optee/rpmb.c
> index cdc8afc1a4..ca60f3cf3d 100644
> --- a/drivers/tee/optee/rpmb.c
> +++ b/drivers/tee/optee/rpmb.c
> @@ -5,6 +5,7 @@
>  
>  #define pr_fmt(fmt)     "optee-rpmb: " fmt
>  
> +#include <common.h>

Is this only for ARRAY_SIZE? Then I'd prefer we include <linux/kernel.h> or
<linux/array_size.h>, because we generally want to cut down on use of
<common.h>, if only to reduce compile time a bit.

Also, please send fixups without a reply-to for patches that are already applied.
This makes it less likely to be missed IMO.

Cheers,
Ahmad



>  #include <mci.h>
>  
>  #include "optee_msg.h"


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


