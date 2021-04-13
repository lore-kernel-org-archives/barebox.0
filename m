Delivery-date: Tue, 13 Apr 2021 07:28:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWBbS-0006s0-Az
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 07:28:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWBbR-00065S-Hu
	for lore@pengutronix.de; Tue, 13 Apr 2021 07:28:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jS+WcE5dSld48u/G5xmw3ptsRRq4RpukrB/tfhe/kvA=; b=LxZdOAC0eYQ+OnNfSpr7bIkWL
	TAK4GjHUTTZGoR7RnV/0KNWGMQttvoHe/Q4HfuqEG/lOHOnzLNwhHO7N/MkpR8uXoGMqoZbJ3a8/t
	ifyl2TJ6C33AiKTrDBuzUmW2LUa0EJF2P/KkBoS/NldiA2O/ckmDjBenzu09H/u6ARVhOC/nw9trd
	zX8WHNxiOH+A06hr/4zfLtYvq9fRBYYYPrvpIXN2fxW0M1e6MFJm5wBhU48r6SFOfwj5xHW1JuRzI
	iNW7A5ZST98nIPfAxDtPyW4FVFrriejTJ1gdJro+XGWHKYTXGoJQ/OyRZ0PhnV20NW8K74EOmFV23
	LPiXvHX0w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWBZ8-008IYo-DO; Tue, 13 Apr 2021 05:26:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWBW7-008IPJ-GZ
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 05:23:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=oSjNNnt4FFnEHVzK0w1MrHwNakTjZ8X90NPewqAQSPo=; b=rt85iCYcRchaToujzOeWbsG2vQ
 CRuXdP5Kilj8UVrcxhabcadicxJ8XXvzjgXTV/uX9JZuOkYyMQLJUOGK46LwpTI4qKHkhDMzA3QMq
 lbHfXw3EmtBfhiNXz7/RJ8xPQWiaZ/YkaTL3zMCx/RETNUwg4d1HxuTkEIRtrGpxEps6vjvVfsel9
 YEnMMq4wch4RdJb+jInH/iJjNdTgcNv3xXmHLT0AK0isulfw00JwtFiLCcl12VXj825fWNzusUZdD
 twTLtnQ7muP3dB2x4w3i/xvINdGVdujDXrbMImO76WDyPzVlfJo0jtEwiwjzmN1dKHWCYn0Dps1kf
 o0Lxi5AQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWBW4-006jzs-TM
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 05:23:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWBW3-0005g4-BK; Tue, 13 Apr 2021 07:23:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWBW3-00046O-0g; Tue, 13 Apr 2021 07:23:11 +0200
Date: Tue, 13 Apr 2021 07:23:10 +0200
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox Mailing List <barebox@lists.infradead.org>
Message-ID: <20210413052310.GH6950@pengutronix.de>
References: <20210409101651.ewcntgx4hys4knio@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210409101651.ewcntgx4hys4knio@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:22:44 up 54 days,  8:46, 79 users,  load average: 0.09, 0.12, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_222312_969788_465B73ED 
X-CRM114-Status: GOOD (  19.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND] doc: qemu-virt64: fix reST literal block syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 09, 2021 at 12:16:51PM +0200, Roland Hieber wrote:
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
> 
>  Documentation/boards/aarch64-qemu-virt.rst | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/boards/aarch64-qemu-virt.rst b/Documentation/boards/aarch64-qemu-virt.rst
> index cadc4e5543c1..42e7d00bfef6 100644
> --- a/Documentation/boards/aarch64-qemu-virt.rst
> +++ b/Documentation/boards/aarch64-qemu-virt.rst
> @@ -8,6 +8,7 @@ Running barebox on QEMU aarch64 virt machine
>  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>  
>  Usage::
> +
>  	$ qemu-system-aarch64 -m 2048M \
>  		-cpu cortex-a57 -machine virt \
>  		-display none -serial stdio \

This is already fixed as part of 79f3310451 ("ARM64: qemu-virt64: migrate
to generic DT image")

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

