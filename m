Delivery-date: Thu, 21 Sep 2023 14:11:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIWm-005rLE-V9
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 14:11:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIWk-0004fe-U3
	for lore@pengutronix.de; Thu, 21 Sep 2023 14:11:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H/hphmIUpLu6BCJT3l2iAnpbB9Az11wx9aLngCUAuZ0=; b=ufaLJVOKfSWcUZHWmfqrC0NO+T
	ruLiFkuMBMps+Z4l5uFRxSZI+FYPLe2JRiVnD0B2paNhuns2UHourN7XDV+MXaYre7C8vyD44+jB6
	DXpEPt9dPB2r1Y1TvqtYTCvX702uU0PcKAxHa91ZGfwO4fqSayPjHcQEjk+GWO8GXOFjSYYJTz/UM
	CDGXTolwCW5TLFgMao6rpt1xKlzjxEqassrfdZJdbqdSQZvKqfpp5G34iZ/sUNLyNAo9J2nw6+BHF
	1qM/UQzMN3JKMTTVp4p9PHLLHIJcmY/8RV2zkJF/VhYUDTeQNScdIRIQyRg7VHyQKYQpSItSCTNVV
	EvYvRf8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIVg-005yl9-0k;
	Thu, 21 Sep 2023 12:10:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIVd-005yki-0g
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 12:10:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIVc-0004Bo-2C; Thu, 21 Sep 2023 14:10:16 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIVb-007vFb-La; Thu, 21 Sep 2023 14:10:15 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIVb-00Akrn-I3; Thu, 21 Sep 2023 14:10:15 +0200
Date: Thu, 21 Sep 2023 14:10:15 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921121015.GL637806@pengutronix.de>
References: <20230921094425.270359-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921094425.270359-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_051017_248726_664A0CB6 
X-CRM114-Status: GOOD (  17.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: linux/spinlock: add stubs for Linux _bh variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 21, 2023 at 11:44:25AM +0200, Ahmad Fatoum wrote:
> For symmetry with existing empty spin_lock/unlock stubs, add _bh
> suffixed versions as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/spinlock.h | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/spinlock.h b/include/linux/spinlock.h
> index 12af3dab231b..a604e0fd090f 100644
> --- a/include/linux/spinlock.h
> +++ b/include/linux/spinlock.h
> @@ -6,7 +6,9 @@
>  typedef int   spinlock_t;
>  #define spin_lock_init(...)
>  #define spin_lock(...)
> +#define spin_lock_bh spin_lock
>  #define spin_unlock(...)
> +#define spin_unlock_bh spin_unlock
>  #define spin_lock_irqsave(lock, flags) do { flags = 0; } while (0)
>  #define spin_unlock_irqrestore(lock, flags) do { flags = flags; } while (0)
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


