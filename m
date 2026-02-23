Delivery-date: Mon, 23 Feb 2026 12:41:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUJA-004ojE-1z
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:41:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUJA-00011K-VJ
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:41:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yzQhd87WNhSbFyd+uSXqXdnCU7SkGxXQCTN3vvsSP6c=; b=PlsOHvmSu8C+WAO4jsyIoG5mky
	S5kOn3aYOhNT6uoEUKY9br80brMWLxHUY1qCxEO0Fp+8+dwSsev1NwI+qK18tSLxnY08Q6QxJrdp7
	Xt6gYIPNVS7mhZMGlk63vfOTZycYQO9ST+hQvXm/cb/DoKzMpa1QOX1i4zsMtxinrCQpYuEBfeJJc
	ydO2egfBFC4W4WO0IJnGZ/ErxIb/8G5sKfw34Bv25LUXbALe9HHpsK7kMBPmBY5nKGDFbDfrrXsC8
	UU8RsAArDoVN/XciO44YhubnQtUibeQDV2ilO9qPNuRvrw08iBRDHwrhpY4raulNqP9+ID91Dn+kW
	0k1kKxCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUIo-00000000CeT-0dJL;
	Mon, 23 Feb 2026 11:40:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUIk-00000000Cdj-1WhN
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:40:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vuUIi-0000wR-Ir; Mon, 23 Feb 2026 12:40:32 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vuUIg-002DrU-1h;
	Mon, 23 Feb 2026 12:40:31 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vuUIh-000000017pz-3Frk;
	Mon, 23 Feb 2026 12:40:31 +0100
Date: Mon, 23 Feb 2026 12:40:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Renaud Barbier <renaud.barbier@ametek.com>
Cc: barebox@lists.infradead.org
Message-ID: <aZw8r4SBswMxocvb@pengutronix.de>
References: <20260203141945.1417902-1-renaud.barbier@ametek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260203141945.1417902-1-renaud.barbier@ametek.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_034034_493566_8D5A4906 
X-CRM114-Status: GOOD (  18.20  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/1] Initial ARMv7-A LPAE support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Renaud,

On Tue, Feb 03, 2026 at 02:19:44PM +0000, Renaud Barbier wrote:
> The LPAE support allows to map physical address above the 32-bit space in
> the ARMv7-A processor to a 32-bit virtual address.
> 
> This patch set was tested on a LS1021A-IOT. Later, a patch to the PCIe
> designware driver will be provided to prove the remapping of 40-bit PA to
> 32-bit VA.
> 
> This patch does not include an update of the mmuinfo command.
> 
> Renaud Barbier (1):
>   arm: mmu: initial LPAE support
> 
>  arch/arm/Kconfig                            |   9 +
>  arch/arm/configs/layerscape_v7_defconfig    |   1 +
>  arch/arm/cpu/Makefile                       |   4 +
>  arch/arm/cpu/mmu_lpae.c                     | 650 ++++++++++++++++++++
>  arch/arm/cpu/mmu_lpae.h                     | 101 +++

The patch duplicates most of the existing MMU support. Can we do better?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


