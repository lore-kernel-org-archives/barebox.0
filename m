Delivery-date: Mon, 05 Jun 2023 15:50:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Aaw-00Bpwc-LG
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 15:50:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Aau-0006qg-Cs
	for lore@pengutronix.de; Mon, 05 Jun 2023 15:50:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zWaerSDpNx0qi8DXTlwkbU3u71C+H8mU6akGcA8foW8=; b=tKufnIUhip8FxXgUL5/iVNvGLT
	aQ+41NE/9Vmiyzsn7yHS6L7Ofr6+ZF86KL/XAAYBGc5q/TdtnOoLq82QaSgtklrJwK4TnijI+gzw1
	eH91IQozF6ihRX5kfDxI/zRzwm5xyspzYPxgUa5gobZ4EmRIi9oK0yF4Nr9eqtO4EaNFpNR4pb4UJ
	nljZi6RKXa7cBjKHeVbEvY9yLDY8buZF36LCWw7ksaBEIdRO6RWok44v/ddIHToEwPpXrIUgSaicF
	2EXU2Kl/0iJrB3x5+7TjPAIz+32Pg9qiXJ7hVH3M3HwZYOiczL0zlE4VjsPs8uyryMScJNH1lSzvA
	GuPgbMlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6AZu-00FgAN-22;
	Mon, 05 Jun 2023 13:48:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6AZr-00Fg9s-0S
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 13:48:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6AZp-0006mI-NP; Mon, 05 Jun 2023 15:48:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6AZp-0006Xa-Fu; Mon, 05 Jun 2023 15:48:53 +0200
Date: Mon, 5 Jun 2023 15:48:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230605134853.GQ18491@pengutronix.de>
References: <20230604210609.17765-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230604210609.17765-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_064855_199746_F7935B43 
X-CRM114-Status: GOOD (  20.62  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] net: r8169: fix builds on archs without system.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 05, 2023 at 12:05:55AM +0300, Denis Orlov wrote:
> Some architectures do lack <asm/system.h> header, which breaks building
> RTL8169 for them. However, it doesn't even seem to be needed there. From
> a quick glance at archs that do have one such header, its contents are
> quite platform-specific. Getting rid of this include fixes building the
> driver, so do just that.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  drivers/net/r8169_main.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/r8169_main.c b/drivers/net/r8169_main.c
> index 5b448fa029..2225c26190 100644
> --- a/drivers/net/r8169_main.c
> +++ b/drivers/net/r8169_main.c
> @@ -17,7 +17,6 @@
>  #include <linux/pci.h>
>  #include <linux/sizes.h>
>  #include <asm/unaligned.h>
> -#include <asm/system.h>
>  
>  #include "r8169.h"
>  #include "r8169_firmware.h"
> -- 
> 2.41.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


