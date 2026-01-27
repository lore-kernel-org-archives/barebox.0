Delivery-date: Tue, 27 Jan 2026 08:20:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdNf-005olU-2I
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 08:20:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdNe-0001Og-OT
	for lore@pengutronix.de; Tue, 27 Jan 2026 08:20:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8efOtcxw84kpHlgFevsV7GXkGBXIFC7BT9KwQYWDB0w=; b=MLkYRlzhaCPJzwGhbL4dqHDLK9
	aUaHNWOVXvkOSQGANy8mzqG1I9xjbtKDEpzuHThnKMklrePMHB1pbPw8CThvEsC34lZa/dIos8YlR
	KRmB9QD5IENfmFDOLZU1aruHn2KnMu8sSa9Pb6I3BhZL+Eiipo/b7hLXzAfZThQt7bO7UVF6B1hY4
	AjW8R2bRY/Am+kRejfXz+AAdmHgZihhggeuNevhrHH7keIso/g7/79QVdEoeN77qWBna4yxKskBBQ
	ArUFbt5H+szG3Z2+11yAO0Z9P2tqzO6l8gHnSh/Nyl+O13GyEZbtQ/6gOmIlBRPUc7zzuIxz9AWmq
	G8e0WlFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdNI-0000000DlbB-43WV;
	Tue, 27 Jan 2026 07:20:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdNG-0000000DlaC-1zc6
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 07:20:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vkdNE-0001Jl-9W; Tue, 27 Jan 2026 08:20:28 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vkdNE-002i97-2U;
	Tue, 27 Jan 2026 08:20:28 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vkdND-000lQY-36;
	Tue, 27 Jan 2026 08:20:27 +0100
Date: Tue, 27 Jan 2026 08:20:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aXhnO4xuW-R3TBZP@pengutronix.de>
References: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
 <20251117-soc-uid-v2-6-a2415bf9133d@pengutronix.de>
 <c9f90894-52ac-4090-b4a9-8d82b735e56e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c9f90894-52ac-4090-b4a9-8d82b735e56e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_232030_515956_DC7FFB6F 
X-CRM114-Status: GOOD (  19.52  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/9] nvmem: ocotp: Fix SoC ID reading for i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 26, 2026 at 12:20:08PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 11/17/25 9:35 AM, Sascha Hauer wrote:
> > On i.MX8MP the SoC ID is stored at 0x420/0x430, not on 0x410/0x420 as on
> > other i.MX8M SoCs. Also on i.MX8MP the SoC ID is 128bit and not 64bit
> > with the upper bits stored at 0xe00/0xe10.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> As this has implications for user space (e.g. journald quotas are per
> directory and machine id changes the dir), this deserves a mention in
> the migration guide.

Right. I added one.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


