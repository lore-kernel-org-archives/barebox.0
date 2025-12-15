Delivery-date: Mon, 15 Dec 2025 15:13:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9KX-00Bld0-2s
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 15:13:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9KX-0001RD-A5
	for lore@pengutronix.de; Mon, 15 Dec 2025 15:13:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V/+2du0sAE7ti8GXyxt53BxY92KURAmUT7RyNlhKs84=; b=LXXF653T4T0Ha2HfiitgTtYAOf
	EwDf6/aXJvgpITlyg9QEQNNvy6lKv0vvC8qykSKzHlI5QUnruTq65YFviNqVCIVQYrWqyEwdknPyx
	hOr3LKLOMLPwY9LETO6DGqjYZJkNMVIVwR+3FPE3c9/KVP0Sqvsm8eaumHkK/ixg8SVszxgcPewf+
	ea4jAkvM3+EFE1xyZOE7hqTucDkJ7+qbMXG9qsPZAbnP6n0glTuvXW5JGb9i8DLpAypZtC25upYwW
	hPvkwu7jyNUN1JazFc6M4LfvHDlpwZGM9lghuHNQLKNwUJifKukFrmhmmRFYyjxO0lki1dzbjRpIS
	yo67Hx7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9K6-00000003lhT-1fNC;
	Mon, 15 Dec 2025 14:13:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9K4-00000003lgK-1vmz
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 14:13:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vV9K2-0001Kt-Lp; Mon, 15 Dec 2025 15:13:10 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vV9K2-005nQ4-1Z;
	Mon, 15 Dec 2025 15:13:10 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vV9K2-008xmd-1H;
	Mon, 15 Dec 2025 15:13:10 +0100
Date: Mon, 15 Dec 2025 15:13:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aUAXduF1t74M2xtZ@pengutronix.de>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
 <20251203-efi-partition-refresh-v1-6-f0b6e79b5fa0@pengutronix.de>
 <3ad1186d-9e8c-4276-8f42-aef60de4956b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3ad1186d-9e8c-4276-8f42-aef60de4956b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_061312_497509_4DB19BB6 
X-CRM114-Status: GOOD (  25.08  )
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
Subject: Re: [PATCH 6/6] partitions: gpt: refresh partition tables when
 necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Dec 15, 2025 at 01:47:09PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 12/3/25 4:19 PM, Sascha Hauer wrote:
> > The GPT alternative header must be at the end of the device. When disk
> > images are written to a device this often is not the case which results
> > in warnings:
> > 
> > WARNING: mmc0: GPT:Primary header thinks Alt. header is not at the end of the disk.
> > WARNING: mmc0: GPT:6561831 != 62160895
> > WARNING: mmc0: GPT:Alternate GPT header not at the end of the disk.
> > WARNING: mmc0: GPT:6561831 != 62160895
> > WARNING: mmc0: GPT: Use parted to correct GPT errors.
> > 
> > This patch adds support for automatically rewriting the partition table
> > when this happens. This behaviour is optional and needs to be enabled at
> > compile time with CONFIG_PARTITION_DISK_EFI_REFRESH. Also this is
> > runtime configurable with global.system.gpt_refresh
> > 
> > Link: https://lore.barebox.org/20251128111929.2463263-1-s.hauer@pengutronix.de
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> With below point addressed:
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> 
> > -	if (error_found)
> > +	if (error_found) {
> > +		add_gpt_refresh(blk);
> >  		dev_warn(dev, "GPT: Use parted to correct GPT errors.\n");
> 
> With CONFIG_PARTITION_DISK_EFI_REFRESH enabled, I would suggest changing
> this to a dev_info(dev, "GPT: barebox will autocorrect.\n") or something.

We can know that this feature is compiled in, but we don't know yet if it
is actually enabled, so the best we can write is something like:

	dev_info(dev, "GPT: will repair later when global.system.gpt_refresh is true\n");

I added this while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


