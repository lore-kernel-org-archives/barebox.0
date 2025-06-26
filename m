Delivery-date: Thu, 26 Jun 2025 11:48:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUjDc-00BETS-1m
	for lore@lore.pengutronix.de;
	Thu, 26 Jun 2025 11:48:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUjDc-0007x9-1h
	for lore@pengutronix.de; Thu, 26 Jun 2025 11:48:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H/OVjDwukuMqEUjwXvyjZNpROQYCvCCk2niUeTBCbRk=; b=i+n0DY/vrbDe0wp20jV9/CRm9D
	970wg2eWBfmcAM0sof9kQXIlSQkrUh/724ajtq4lNE37U24/itbu/+lYaBdGqQsIXdjBjt3/7MQ2F
	CX3kjSBw0adEsUCIr41MHrocxIvk5+kzTLO72YjkwBLO2qJp0ur3N7bPLKNM+P4zzUav9UrmAu6aQ
	VZdntyr1ZPYCAdjQD9MW0NfSxh9+LP74+OCZVc102mPpMUg7irPX2p7BkP4PSNkQboJu1d0aeTON/
	5O1F20yxEgSNo26gJYvukePmQGrbTlq0M7eWkMX3S8lxTkRyBs8/SyZ81frJM+g6DE0G+AjPEhdWQ
	4FfWtOLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUjCs-0000000BBT5-3zCS;
	Thu, 26 Jun 2025 09:47:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiTs-0000000B4kG-3BqP
	for barebox@bombadil.infradead.org;
	Thu, 26 Jun 2025 09:01:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=H/OVjDwukuMqEUjwXvyjZNpROQYCvCCk2niUeTBCbRk=; b=OHNZH+Er99e2u0XhDHPx9KCivH
	sUut3fqJleckGbLOLJGg8+wEGpL/BvCWfVv3cffL/eowWJVZr751WFmhNYxrZgGhBWDv6FPLEU5XP
	zPUUdHKOXeJ3wti0+1tnIO/J1MZHJU1OxhlpgDNw0TYY5iGfzG2ereK3R9RisVD5edywZs5Q5sgPi
	6OocMsbRYKqGgy30ObF8XbZg7EgRdAInajHkOal2OoX6TfaihFyuw2vZ5/SMf0KIceJPzpNfe/U/i
	3yvdYUGJHboGFhTsla/d2+hoKztcSggXn0Z4NPB8ZftDsPutkCGKdUHIpYf4Wmf5vw/AUO2/xpIvr
	eCDR3ghw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiTo-0000000648z-1Obe
	for barebox@lists.infradead.org;
	Thu, 26 Jun 2025 09:01:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uUiTl-0001Ei-Gw; Thu, 26 Jun 2025 11:01:09 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uUiTl-005Q5l-15;
	Thu, 26 Jun 2025 11:01:09 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uUiTl-001WjR-0m;
	Thu, 26 Jun 2025 11:01:09 +0200
Date: Thu, 26 Jun 2025 11:01:09 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250626090109.cf6oatzpdu5x76wl@pengutronix.de>
References: <20250619152556.3749995-1-m.felsch@pengutronix.de>
 <aFzqETAvVIcvVT6U@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aFzqETAvVIcvVT6U@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_100112_634131_134C8B98 
X-CRM114-Status: GOOD (  11.67  )
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
Subject: Re: [PATCH 1/5] ARM: i.MX6QDL: add TZASC1/2 defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-06-26, Sascha Hauer wrote:
> The subject doesn't match this patch. It doesn't add any defines.
> 
> On Thu, Jun 19, 2025 at 05:25:52PM +0200, Marco Felsch wrote:
> > On i.MX6 platforms we need to set the bypass mode within the DCD unlike
> > the i.MX8M platforms which uses the PBL lowlevel code
> > (imx8m_tzc380_init()).
> > 
> > Add an imxcfg helper to configure the TZASC1/2 to simplify the integration.
> 
> This sentence would make for a better subject.

It's a bit long but sure. Shall I send a v2?

Regards,
  Marco


