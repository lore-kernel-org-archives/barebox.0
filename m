Delivery-date: Tue, 05 Aug 2025 13:01:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujFQJ-007Gle-19
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 13:01:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujFQI-0004lK-QL
	for lore@pengutronix.de; Tue, 05 Aug 2025 13:01:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jzzx9aALeCpeB158CakfTIcDmDzH+Ocey9gV/BtUwDQ=; b=LkHOrjSKvu5lNISytz+TPUj/Ge
	iT3hqqF32dfhkgjbGpTpGZJOG0XEKYvNFYJx1G5VfO/9K+QeDUbP8Q0O3OacLtFmEZ8ZwyXqCfcdm
	0521I4i13GmuOreIquRaxvmShn0bhtIGNAUuPT7yDvTT4MwPQIpw6yiSVdgPSHmNUtpz47gJAkmYo
	riKEFF50PwLA/UwPBQGc//BBIf+KtsEmDNjHfQdw464JO1Tv/FOs6ePHMLqx3VByXEex8riIElCG+
	mmmFbArV4Eqxy/Xz0qEb5HpzW25bsJqUrsOP2RHF1xrJd145T7qA1oBx4TQgTxg+WRCSOIKC3zVVz
	OItQv9GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujFPn-0000000CYJr-2ikj;
	Tue, 05 Aug 2025 11:01:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujF9f-0000000CWNC-3lY5
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 10:44:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ujF9e-0003Dv-KN; Tue, 05 Aug 2025 12:44:26 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujF9e-00C1jG-1R;
	Tue, 05 Aug 2025 12:44:26 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujF9e-00AB2q-17;
	Tue, 05 Aug 2025 12:44:26 +0200
Date: Tue, 5 Aug 2025 12:44:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aJHgiuujXi8tkV9L@pengutronix.de>
References: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_034427_963732_B13DA277 
X-CRM114-Status: GOOD (  21.59  )
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
Subject: Re: [PATCH 00/15] NVMEM: Add support for layout drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Marco,

On Mon, Aug 04, 2025 at 04:36:46PM +0200, Marco Felsch wrote:
> Hi,
> 
> with this patchset the barebox nvmem-core is prepared for the Linux
> nvmem-layout drivers. Layout drivers are used to describe the NVMEM
> storage format. The patchset also adds the support to read nvmem-cells
> via the devfs. This makes it possible to read the cells from the board
> code or shell without the need of referencing the cells within the DT.
> 
> A long with the alignment and feature work I fixed a few issues like:
> honor the DT alias for a nvmem provider correctly.
> 
> For the new features to work correctly the NVMEM core had to be partly
> (re-)synced with the one from Linux. This involved porting different DT
> helpers.
> 
> Unfortunately this patchset doesn't add a NVMEM layout driver therefore
> a __dummy__.o is added within the Makefile.
> 
> I decided to start from a fresh v1 because of the rework I've done. But
> for reference, the previous patchset can be found here:
> 
>  - https://lore.kernel.org/barebox/20240613131531.364894-1-m.felsch@pengutronix.de/

This conflicts with Oleksijs nvmem-protect series. Could you rebase on
master?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


