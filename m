Delivery-date: Mon, 12 Jun 2023 08:40:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8bEW-003VNp-6G
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 08:40:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8bET-0004j8-P3
	for lore@pengutronix.de; Mon, 12 Jun 2023 08:40:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J+aTMHL5I5jhnCP3FBsT0MIOIqUX8PHudAa3RfRQfGg=; b=F1aZj1Xr5ZyGvauRD3qpF6+myv
	F31ycHmgTEovlSYp1SzbtvkoE/dKIzFQwRqtpposQPsddREGsVIuBCiYZlSIDyWnLP1w1fReFNhpH
	JSIRXtS2pyrR/RlA1d1NucTGJkGj2u12Hi9NTruWmpneGU3CWACJg+U5c4behJcdn5YjxquypXmlG
	LKI63vbM4XQtyUhOMTFd7bu365UIf/DG+selaeZ6cDClx2odgkMiwIsHNzUsh46vj2qC4e0YYg7g2
	ByD6rCU8OYn7AlNJZxVYW3Ee1KllpPlG21U2S1JAaqEwQoOS9MvRFp/76Sp6apUils5TJ8ffuNiPV
	XRXzjNAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8bDH-002nKo-1l;
	Mon, 12 Jun 2023 06:39:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8bDE-002nKB-3C
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 06:39:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8bDD-0004DN-Gn; Mon, 12 Jun 2023 08:39:35 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8bDD-0001pW-1P; Mon, 12 Jun 2023 08:39:35 +0200
Date: Mon, 12 Jun 2023 08:39:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230612063935.GD15436@pengutronix.de>
References: <20230607051155.3175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230607051155.3175-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230611_233937_027992_E087AD69 
X-CRM114-Status: GOOD (  19.59  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/3] Add CI for MIPS64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 07, 2023 at 07:59:37AM +0300, Denis Orlov wrote:
> This adds a necessary defconfig and labgrid configuration file together
> with the corresponding CI job for building and testing the MIPS image
> with 64BIT option set.
> 
> I've decided against giving the defconfig a generic name such as
> mips64_defconfig. For now, only Malta running in QEMU is really
> supported, so naming it as that seems more fitting for me. And if
> more MIPS64 boards will get support in the future, then this defconfig
> might be renamed appropriately.
> 
> Denis Orlov (3):
>   MIPS: add qemu-malta64el_defconfig
>   test: mips: add QEMU Malta 64le labgrid config
>   ci: add a job for testing 64BIT MIPS with labgrid

Applied, thanks

Sascha

> 
>  .github/workflows/test-labgrid-pytest.yml  |  4 +
>  arch/mips/configs/qemu-malta64el_defconfig | 87 ++++++++++++++++++++++
>  test/mips/qemu-malta64el_defconfig.yaml    | 22 ++++++
>  3 files changed, 113 insertions(+)
>  create mode 100644 arch/mips/configs/qemu-malta64el_defconfig
>  create mode 100644 test/mips/qemu-malta64el_defconfig.yaml
> 
> -- 
> 2.41.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


