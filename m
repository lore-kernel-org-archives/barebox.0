Delivery-date: Wed, 13 Dec 2023 07:46:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDJ0o-001yLJ-0b
	for lore@lore.pengutronix.de;
	Wed, 13 Dec 2023 07:46:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDJ0o-00029N-Ex
	for lore@pengutronix.de; Wed, 13 Dec 2023 07:46:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HeYsOERVIR5Ba7xwC9eWMkOpAgQNLXwfHCEiNzgIm5I=; b=N/wZW4UVGg9j4SzIJc1VECKKsX
	tV7Ln+3XOOjTdkOJIkoNyZDk/6aTd6s14viRvjs4MouuAe+VuJ6SRdw9mNooogAv/3f/2HtS7v2qF
	N145fycVaAN0OXAFOmVIgScEEuUuTT3v6Fd/HL+SUlH4tpRfm4kkHg6gM/zJL27JhEsS5RxnkL+Eo
	QFTYeHxNyR9AMkPB3+nNtF+KQkN6ljMQY6RqXf0lQ+ViyDIXgxKbqMQou9TdJjYgknLnZ3OpQQBZJ
	mmT2wR8v75fZOfblE86/Pe6akkM2nYEj8gZUnyK8F36HH8whP3dLSjS79DXDHraupYe1GPZaPl1mI
	WUcwftPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDIzO-00Dp1w-1c;
	Wed, 13 Dec 2023 06:45:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDIzK-00Dp18-2I
	for barebox@lists.infradead.org;
	Wed, 13 Dec 2023 06:45:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rDIzG-0000dd-8G; Wed, 13 Dec 2023 07:44:54 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rDIzF-00FViI-SS; Wed, 13 Dec 2023 07:44:53 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rDIzF-006kXY-QK; Wed, 13 Dec 2023 07:44:53 +0100
Date: Wed, 13 Dec 2023 07:44:53 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231213064453.GF1318922@pengutronix.de>
References: <20231205113618.3966168-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231205113618.3966168-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_224458_742949_3EAFCF36 
X-CRM114-Status: GOOD (  16.18  )
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
Subject: Re: [PATCH 0/3] FIT: match best configuration when multiple are
 compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Dec 05, 2023 at 12:36:15PM +0100, Ahmad Fatoum wrote:
> Currently, we match the first compatible configuration. There may be
> multiple matching configurations however and we should continue looking
> for a better match if a match didn't achieve maximal score.
> 
> Do that by checking score against OF_DEVICE_COMPATIBLE_MAX_SCORE and
> continuing the search if unequal.
> 
> Ahmad Fatoum (3):
>   of: define macro for maximum of_device_is_compatible return value
>   of: early exit of_match_node if no better matches are possible
>   FIT: match best configuration when multiple are compatible

Applied, thanks

Sascha

> 
>  common/image-fit.c | 15 ++++++++++++---
>  drivers/of/base.c  |  9 +++++++--
>  include/of.h       |  4 ++++
>  3 files changed, 23 insertions(+), 5 deletions(-)
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


