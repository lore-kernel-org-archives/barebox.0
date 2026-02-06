Delivery-date: Fri, 06 Feb 2026 13:07:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voKcY-009TQE-1j
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 13:07:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voKcX-0003EL-Ix
	for lore@pengutronix.de; Fri, 06 Feb 2026 13:07:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OyujUii9HLBwcfx/8wSiBvVHclLu7JInoAbbl1Zvxws=; b=iaLYsPNPtUGjG0HYWnSnr58l2C
	CrlfULtH6AtL31KPeJFVpH055GXEOHwEdSFW2qJ6aouHBV6inl0eBkiBsn6qmFOrFNcRc9FRM/Lyg
	uWdxAUuSsRvIqp3obniO+FxflKQwqrFmLxZY6ao3vO05Bd7mWhq1qU1cz8VDllMHtN/BddxmtcdKZ
	RvBYGYEILoITPEF0aXT7MErbCJQXKaNnmnK8UE9hr7j+vO2OxVTTEydkrw9ZDWqM56mcbalfyHqW4
	zd1FFZEcamnAeHRyE8ajldx3MWs/P5eOqfC4iCsn4ytiy/ydyB0r58uEVgRXQAwECz/nBpUZljV56
	l+ibg8ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKc9-0000000BHV0-0yfI;
	Fri, 06 Feb 2026 12:07:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKc5-0000000BHUN-3mJJ
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 12:07:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1voKc3-00039m-V0; Fri, 06 Feb 2026 13:07:04 +0100
Message-ID: <2d8fd2fd-e407-4f10-a8b9-0dd65e869728@pengutronix.de>
Date: Fri, 6 Feb 2026 13:07:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-15-da075e6818e0@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-15-da075e6818e0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_040706_579516_42DCC5DE 
X-CRM114-Status: GOOD (  14.61  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 15/15] handoff-data: add missing include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2/4/26 9:01 PM, Marco Felsch wrote:
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

You already sent this out separately and I suspect, this needs to be
applied before anything else to avoid intermediate breakage?

Just drop it if there's a v3 as I assume the other patch will be picked
first.

Cheers,
Ahmad

> ---
>  include/pbl/handoff-data.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
> index 399d769f386f30d0fb18a525ccc09cf3f3e8d402..81cb0880ad4a384d633a3983ea99d82df4f47d06 100644
> --- a/include/pbl/handoff-data.h
> +++ b/include/pbl/handoff-data.h
> @@ -1,6 +1,7 @@
>  #ifndef __PBL_HANDOFF_DATA_H
>  #define __PBL_HANDOFF_DATA_H
>  
> +#include <linux/bug.h>
>  #include <linux/list.h>
>  
>  struct handoff_data {
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



