Delivery-date: Tue, 10 Jun 2025 09:02:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOt05-005i9P-2Y
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 09:02:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOt02-0000NX-S5
	for lore@pengutronix.de; Tue, 10 Jun 2025 09:02:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V/R5ROJtkMByNR9Hneoe79ku6LzattctEjXZ33TlbmQ=; b=4ctANWdBhsDk9bZoU3IPZ09tsp
	rnZiqHElkAZVgZyLih4vDqYAltfZeA3fs2HmnccoyPf9OVXaWmFZ5kP7Nv5Xx7xR+mxwySBjQxjev
	13LThVSvhK/Jmove1hZT3XlNGrsY9BY1Fr/cQ9X8pY3RUgLK9toY6gQWBDEn8geIrBpfpnoCOgN4f
	CYMsHCkIQxJfA8AdBlbMX3W4gew1rermE2c7f+UGIKMQ5daxhCUmAtf1fWccRsr9sX7c5AiBIYHqY
	6uCu9h/MxxDM6GSyGNL0UcxXO+6F0y5C02WwLuUf/nLnV7wq5Xovi+Az5+rF87lOM0M8A+r1BI+QR
	o9sliLwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOszT-00000005yrM-272h;
	Tue, 10 Jun 2025 07:01:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOszN-00000005yqd-0KXr
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 07:01:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOszL-0008U7-L7; Tue, 10 Jun 2025 09:01:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOszL-002jDZ-1A;
	Tue, 10 Jun 2025 09:01:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOszL-00APfw-0w;
	Tue, 10 Jun 2025 09:01:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>
In-Reply-To: <20250606072939.2082971-1-a.fatoum@barebox.org>
References: <20250606072939.2082971-1-a.fatoum@barebox.org>
Message-Id: <174953889928.2481843.8222840200072732520.b4-ty@pengutronix.de>
Date: Tue, 10 Jun 2025 09:01:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_000141_121246_8D243EAD 
X-CRM114-Status: GOOD (  12.11  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/4] firmware: qemu_fw_cfg: implement file system
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 06 Jun 2025 09:29:35 +0200, Ahmad Fatoum wrote:
> The character device we currently have is cumbersome to use.
> The Linux way to access it at /sys/firmware/qemu_fw_cfg
> is much nicer to use, so this series adds support for a similar
> FS to barebox.
> 
> A very nice result of having file system access to the QEMU variables
> in barebox is that we get a trivial way to pass data to barebox.
> To make it even more convenient to use, this series enables overriding
> individual files in the environment via the new mechanism, e.g.:
> 
> [...]

Applied, thanks!

[1/4] fs: add qemu_fw_cfg file system
      https://git.pengutronix.de/cgit/barebox/commit/?id=15fe16c19945 (link may not be stable)
[2/4] firmware: qemu_fw_cfg: register at device initcall level
      https://git.pengutronix.de/cgit/barebox/commit/?id=7a021f74e293 (link may not be stable)
[3/4] video: ramfb: use new qemu fw_cfg FS
      https://git.pengutronix.de/cgit/barebox/commit/?id=91f865300262 (link may not be stable)
[4/4] fs: qemu_fw_cfg: support populating environment via QEMU fw_cfg
      https://git.pengutronix.de/cgit/barebox/commit/?id=16d630256ed4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



