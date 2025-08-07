Delivery-date: Thu, 07 Aug 2025 09:25:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujuzr-007ufl-1m
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 09:25:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujuzq-0008Qq-TZ
	for lore@pengutronix.de; Thu, 07 Aug 2025 09:25:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UwjNSt8cmlbhK9tJyaQlWv25+AxxYFucwfAMdRo5ZlE=; b=Zov1vdlFuIPxAFccXu6vy02Sb1
	licG+tCTowUV+r8aY4/DN+CwlfasV742tjrZArLC2ua/FzC5MdJxQVIWg67yOtA9YzETdrRlAqLOF
	TkrG6j4rRKT200Z35MhWPmKh8Uwbe9nNXmNnmYPNErUhC0GIW9xdpa773ffs903/G8WokGaagi3Ty
	59DM7iWRxF/4MgC6GbhuswX3ub+GIuEEcIe3uHOnY7ZW9u9toT1V0DNKaTbyuDuZgQnbsD6dFKh+2
	W52sl/vyj+5yBcx+fkrJETeFookfiomG5fpRHc3gqi2GIdkVLsqncEWo5UoK/WFGG3dID2M6u0xKx
	kiYKgwqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujuzB-0000000HSNZ-0Yyh;
	Thu, 07 Aug 2025 07:24:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujuz8-0000000HSM0-42nK
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 07:24:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujuz6-0008KT-0f; Thu, 07 Aug 2025 09:24:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujuz5-00CKzq-2f;
	Thu, 07 Aug 2025 09:24:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujuz5-00A8cN-2O;
	Thu, 07 Aug 2025 09:24:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
Message-Id: <175455145973.2415578.6621661731231882062.b4-ty@pengutronix.de>
Date: Thu, 07 Aug 2025 09:24:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_002423_013865_8F02784F 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [PATCH 00/22] ARM: mmu: refactor 32-bit and 64-bit code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Aug 2025 14:36:52 +0200, Ahmad Fatoum wrote:
> There is duplication and subtle differences between the 32-bit and
> 64-bit MMU code for historical reasons.
> 
> Let's refactor the code for more similarity, implement
> flush_cacheable_pages for 32-bit and prepare for observing
> break-before-make requirements.
> 
> [...]

Applied, thanks!

[01/22] ARM: mmu: introduce new maptype_t type
        https://git.pengutronix.de/cgit/barebox/commit/?id=9f5924e901ab (link may not be stable)
[02/22] ARM: mmu: compare only lowest 16 bits for map type
        https://git.pengutronix.de/cgit/barebox/commit/?id=e37b892aa558 (link may not be stable)
[03/22] ARM: mmu: prefix pre-MMU functions with early_
        https://git.pengutronix.de/cgit/barebox/commit/?id=7f9cb083ad6f (link may not be stable)
[04/22] ARM: mmu: panic when alloc_pte fails
        https://git.pengutronix.de/cgit/barebox/commit/?id=17a1d4b2a5f8 (link may not be stable)
[05/22] ARM: mmu32: introduce new mmu_addr_t type
        https://git.pengutronix.de/cgit/barebox/commit/?id=c6c28667495e (link may not be stable)
[06/22] ARM: mmu: provide zero page control in PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=bf0684296ba8 (link may not be stable)
[07/22] ARM: mmu: print map type as string
        https://git.pengutronix.de/cgit/barebox/commit/?id=769c49778aba (link may not be stable)
[08/22] ARM: mmu64: rename create_sections to __arch_remap_range
        https://git.pengutronix.de/cgit/barebox/commit/?id=9d86d4da477f (link may not be stable)
[09/22] ARM: mmu: move get_pte_attrs call into __arch_remap_range
        https://git.pengutronix.de/cgit/barebox/commit/?id=48b88292bb23 (link may not be stable)
[10/22] ARM: mmu64: print debug message in __arch_remap_range
        https://git.pengutronix.de/cgit/barebox/commit/?id=5fc230ccd0a4 (link may not be stable)
[11/22] ARM: mmu: make force_pages a maptype_t flag
        https://git.pengutronix.de/cgit/barebox/commit/?id=220f91ac1e05 (link may not be stable)
[12/22] ARM: mmu64: move granule_size to the top of the file
        https://git.pengutronix.de/cgit/barebox/commit/?id=7f43d7349272 (link may not be stable)
[13/22] ARM: mmu64: fix benign off-by-one in flush_cacheable_pages
        https://git.pengutronix.de/cgit/barebox/commit/?id=3795a2fa2d27 (link may not be stable)
[14/22] ARM: mmu64: make flush_cacheable_pages less 64-bit dependent
        https://git.pengutronix.de/cgit/barebox/commit/?id=beded95c1b90 (link may not be stable)
[15/22] ARM: mmu64: allow asserting last level page in __find_pte
        https://git.pengutronix.de/cgit/barebox/commit/?id=b1fedd998046 (link may not be stable)
[16/22] ARM: mmu64: rename __find_pte to find_pte
        https://git.pengutronix.de/cgit/barebox/commit/?id=3c5922e8b006 (link may not be stable)
[17/22] ARM: mmu32: rework find_pte to have ARM64 find_pte semantics
        https://git.pengutronix.de/cgit/barebox/commit/?id=f360ca213a76 (link may not be stable)
[18/22] ARM: mmu64: factor out flush_cacheable_pages for reusability
        https://git.pengutronix.de/cgit/barebox/commit/?id=8a2811a873ae (link may not be stable)
[19/22] ARM: mmu32: flush only cacheable pages on remap
        https://git.pengutronix.de/cgit/barebox/commit/?id=97cc16bf21c4 (link may not be stable)
[20/22] ARM: mmu32: factor out set_pte_range helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=c24e4dd7e9cf (link may not be stable)
[21/22] ARM: mmu64: factor out set_pte_range helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=4564af5df5d9 (link may not be stable)
[22/22] ARM: mmu: define dma_alloc_writecombine in common code
        https://git.pengutronix.de/cgit/barebox/commit/?id=fa95c4e2088b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



