Delivery-date: Thu, 07 Aug 2025 09:40:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujvEh-007up5-0X
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 09:40:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujvEg-0001ds-LW
	for lore@pengutronix.de; Thu, 07 Aug 2025 09:40:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H6Fng5IcNdhuKu99JMdyMScvQ7aLW2g0y4yQyC5MqOc=; b=IA78jKVitL5i3IVsAQbDIxe5nF
	Mo6lmdLohe7lY20BL0a+t9t2jmLbJY7iYtAWNknE3hBCVX0jY6fcEZ2fgFuyHJMtR+K94ZXktHQ4D
	gYBtB16LsuRJFK7c5fEe2ANtJOhnkP3U3SloWzwivnxq8WQgRJFWKtkG0i7QQYdD/rpdbQ8rrGRoZ
	o/fBeukfpc0DGWoDyOvaf0BzSbqLIcNB0UlW++f5m750SXXo9dBZMql8pgpbi9iGE8V0FwoJBnQgP
	gVPpUVJPerN5ZXaADspvaBpad+wVhEBzM9YZH2Px4126dRAaFIkpSTL0k6Tn+L2arT7QbkD0HMwn1
	bRGuhsSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvEE-0000000HTy6-0uDe;
	Thu, 07 Aug 2025 07:39:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujv8m-0000000HTT6-0wOr
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 07:34:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ujv8k-000161-N5; Thu, 07 Aug 2025 09:34:18 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujv8k-00CL0z-1Y;
	Thu, 07 Aug 2025 09:34:18 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujv8k-00EEgH-1F;
	Thu, 07 Aug 2025 09:34:18 +0200
Date: Thu, 7 Aug 2025 09:34:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aJRW-miZJt_QGl8A@pengutronix.de>
References: <20250806140005.2866622-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806140005.2866622-1-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_003420_261199_F09BA50D 
X-CRM114-Status: GOOD (  15.33  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] security: add new top-level menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Wed, Aug 06, 2025 at 04:00:01PM +0200, Ahmad Fatoum wrote:
> +config SECURITY_POLICY
> +	bool
> +	prompt "Security policy support"
> +

...

> diff --git a/security/Makefile b/security/Makefile
> new file mode 100644
> index 000000000000..e0b17f12064c
> --- /dev/null
> +++ b/security/Makefile
> @@ -0,0 +1,29 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-$(CONFIG_SECURITY_POLICY)	+= sconfig.o sconfig_names.o

We are not there yet ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


