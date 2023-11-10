Delivery-date: Fri, 10 Nov 2023 14:13:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RJn-005slN-2v
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:13:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RJn-00006y-Tu
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:13:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VjRYxtx8eu88dyyUd+HuBtPbV94hwDjHHBNVElYQFrM=; b=aaJE64BoKGVXoejb3oBcisapX+
	QldPhfYOeDbp1elqXQemDYDOsszoVdv3hjPYAHD31Itjf8+OxE1ikvBJkJpuhNOHX32iGQagSyOQA
	c/RUVVE3fbJtJ7HFrtwLr4YNNDa2FfD9KKM5I9UCvc8wz0vQb9cZX763hyAyuIZ+ReVWlYiI/lwg8
	Ge5tK5A++0mfz1u1Ye9eEGOsSqbSlLh8jksZzSu2uE2uJICflvCXxlq792gg97EamV0cQfI+YBEzG
	QSJNtkl1Ul+vSiVhbv4ou5v/lQ7JnTOq/0thTzCZgLf6kw8Jq1XUMscU/pODyLG8yRGjLUYmttfCr
	xNzcOwSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RIr-008oVh-0t;
	Fri, 10 Nov 2023 13:12:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RIp-008oVZ-2G
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:12:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=VjRYxtx8eu88dyyUd+HuBtPbV94hwDjHHBNVElYQFrM=; b=OghuD6OQ23HCstK8hzUCsW4QtK
	Pji1peucHGotGnlpPYzii06E7ypXq4fDpXMhcWb/UMl3KUDF4p5CCd5D6xdmUob+qNyQkQDRoPdjP
	gkiUOwDgJeN94mMWYoMUF8AoCt0/GNwDexQeKM8/iVwznCGFTTUfHPs17pCcH9DmyzER1ehgBObO4
	H1JlcxjrYFsgMKLSahwn8143RndghADB0pW7x/yqAA23Ipb8SOU/grRbGNSSFvr+GG8f4Nhag8E40
	Dz6aSqhAYFtkLYXmY+MNI4ObZUEpwfFf6FIDLGi9bYJ3LysAETqJYnoWvE+zaNvuo+OH6rByLH9AN
	BUsSY2bw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RIm-00FcKa-0F
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:12:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RIl-0008I4-K6; Fri, 10 Nov 2023 14:11:59 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RIl-00822d-7l; Fri, 10 Nov 2023 14:11:59 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RIl-001LVT-5Q; Fri, 10 Nov 2023 14:11:59 +0100
Date: Fri, 10 Nov 2023 14:11:59 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231110131159.GY3359458@pengutronix.de>
References: <20231109114838.1356467-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109114838.1356467-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_131200_426144_DC27789C 
X-CRM114-Status: GOOD (  18.81  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] usb: dwc2: use linux/spinlock.h for stubs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 09, 2023 at 12:48:38PM +0100, Ahmad Fatoum wrote:
> We already have dummy definitions for common spin lock operations,
> so reuse them instead of defining them in the driver.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/dwc2/gadget.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
> index 00323d2d9029..3c06c438b65d 100644
> --- a/drivers/usb/dwc2/gadget.c
> +++ b/drivers/usb/dwc2/gadget.c
> @@ -1,18 +1,15 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
>  #include <dma.h>
>  #include <linux/usb/gadget.h>
> +#include <linux/spinlock.h>
>  #include "dwc2.h"
>  
>  #define to_dwc2 gadget_to_dwc2
>  #define dwc2_set_bit(d, r, b)	dwc2_writel(d, (b) | dwc2_readl(d, r), r)
>  #define dwc2_clear_bit(d, r, b)	dwc2_writel(d, ~(b) & dwc2_readl(d, r), r)
>  
> -#define spin_lock(lock)
> -#define spin_unlock(lock)
>  #define local_irq_save(flags)(void)(flags)
>  #define local_irq_restore(flags) (void)(flags)
> -#define spin_lock_irqsave(lock, flags) (void)(flags)
> -#define spin_unlock_irqrestore(lock, flags) (void)(flags)
>  
>  static void kill_all_requests(struct dwc2 *, struct dwc2_ep *, int);
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


