Delivery-date: Mon, 08 Dec 2025 13:02:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSZxB-009CmC-0A
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 13:02:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSZxA-0002z7-HW
	for lore@pengutronix.de; Mon, 08 Dec 2025 13:02:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2HXARWXr543bydsNXEkAuaTzVwUOBq82DLuvxWfeJF4=; b=MrXqvD0wTjqJuIYH5og2U6lpmv
	HvWcFOM0ev5NAf351YeIbNc51sNOcH21mItOHStn0nvgIlZp0EV3GCBM1jo4iWzwv2FTpG8AOuQfE
	gVmxBzgUz6hSTLsIfMXdOzMLN2AMgDjMDfX/4K/7XLpqT5AxHaZb4DXEy055leCdB6ldEyPtdumia
	DC6ZaiRuR/pRcRieESPMIKkI6IpijX1VfCDVxrVzNcx8pOm1skuChsLXQgLqiVnXmjpAiZjXiPba0
	XbPZdcCc09TKLcVhamGHUtBhl4ZUJwNTaRdHMWIwh5zs+c2BSt3GJCpNMiUlbc5lxNr/yoifsGNr/
	YbcdMTLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSZwj-0000000D2Za-1AnR;
	Mon, 08 Dec 2025 12:02:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSZwg-0000000D2Z6-2JmZ
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 12:02:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vSZwd-0002v2-8R; Mon, 08 Dec 2025 13:02:23 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vSZwd-004bj3-0E;
	Mon, 08 Dec 2025 13:02:23 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vSZwc-00D7tx-30;
	Mon, 08 Dec 2025 13:02:22 +0100
Date: Mon, 8 Dec 2025 13:02:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aTa-TgPKdkRUr1Wd@pengutronix.de>
References: <20251205143112.1180264-1-s.hauer@pengutronix.de>
 <218f30a8-a711-431b-bcec-92dd89d5428f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <218f30a8-a711-431b-bcec-92dd89d5428f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_040226_590408_9B50FC0F 
X-CRM114-Status: GOOD (  18.41  )
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
Subject: Re: [PATCH] ARM: i.MX: dts: imx93-tqma9352-mba93xxla: add eeprom
 aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Dec 05, 2025 at 03:33:29PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 12/5/25 3:31 PM, Sascha Hauer wrote:
> > eeprom0 has an alias in the upstream device tree whereas the other
> > EEPROMs have not. Add aliases for the other EEPROMs. Without it the
> > other devices will also try to register themselves as eeprom0 which
> > fails with -EEXIST.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Should we fix the driver to use dynamic IDs in absence of EEPROMs?

Yes, but I needed you to motivate me to jump into this rabbit hole ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


