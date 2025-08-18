Delivery-date: Mon, 18 Aug 2025 15:44:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo09c-001tx0-1o
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 15:44:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo09b-0003Pa-EW
	for lore@pengutronix.de; Mon, 18 Aug 2025 15:44:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A7eR6OjBz0c39iLTER4ujdYJqQYU8qZLqY0j7q/j5y4=; b=VVmuxwERN7LD/rx41HK2609nt6
	pcw7+oiZV9/6J/uAjEJZmtoSt92n88OswxI+FApxCUvy50C1lzXDbOGjzxiG5FWq7Ccs8wdc6X4kS
	HA+mdx3wP8EX4ZTccKXjokq/ekQM6CFTKMJwu36h0H0DAwYcqIYm/4KeJ1oxWcSikJRCbCu0NS+aT
	9fHraUZRC2xm+MIVUzL3PRyU5+ybVAafkqx7/fWQL9ASgCXhHC7CldXJTjasp5x5YuO55y7xpCAaY
	G8gPmAnysvKspIHF8p+uQBTqxj6UT3x/ZumTjXP2WP9liJLiCq5j5xyQbPiifAYv7YR/k2Q8ozuFE
	EzGjvWXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo09E-00000007e3i-0SsB;
	Mon, 18 Aug 2025 13:43:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unzut-00000007Rxy-162I
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 13:28:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1unzuq-0008JT-3t; Mon, 18 Aug 2025 15:28:48 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1unzup-000uYJ-07;
	Mon, 18 Aug 2025 15:28:47 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1unzuo-001lYH-2u;
	Mon, 18 Aug 2025 15:28:46 +0200
Date: Mon, 18 Aug 2025 15:28:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aKMqjrAy6kJLoJof@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
 <20250814130702.4039241-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250814130702.4039241-5-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_062851_295203_91AF68A8 
X-CRM114-Status: GOOD (  16.13  )
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
Subject: Re: [PATCH RFC 04/17] Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Aug 14, 2025 at 03:06:49PM +0200, Ahmad Fatoum wrote:
> +if SECURITY_POLICY
> +
> +config SECURITY_POLICY_INIT
> +	string
> +	prompt "Initial security policy"
> +	help
> +	  The policy named here will be automatically selected the first
> +	  time a security policy is to be consulted.
> +	  It's recommended to use a restrictive policy here and remove
> +	  the restrictions if needed instead of the other way round.
> +
> +choice
> +	prompt "Initial Security Policy"
> +	default SECURITY_POLICY_DEFAULT_PERMISSIVE

This ends up showing:

	(lockdown) Initial security policy
	Initial Security Policy (Panic)

How about "Missing security policy behaviour" instead for the choice
description?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


