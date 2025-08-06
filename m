Delivery-date: Wed, 06 Aug 2025 08:34:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujXjf-007YIw-0y
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 08:34:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujXje-0004mS-N1
	for lore@pengutronix.de; Wed, 06 Aug 2025 08:34:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5BvjmnAt2juN25UVGalb/vAYkcJbvElJVGdSh0vjYaY=; b=SsifeiI6EnI37AUD3uEKVajO56
	vaEsdeVXRkSQmv9XkKmUWX3NsYpX8fO8BI+YekC3KEho7Qz1XZYK+Vd5DvFaOVSR1uxwrl5dp+IWk
	/Bq2owKMzVdsRxtwn2YVsbYTQGKrLnmyg3YbrhTAvnV7zfSbVqVg+SBOLocxqNbVfltJ8+MV+f4lN
	JrnOAbfMDB7oq42YGwaadSdR6tvflRQBEAKsR7JSJL0vKPBawXAUiOB3bISxXBJWjFzUpj2rIF94b
	ZrvZuM23LTuwYeLuGnhiGsSf6X2RUXld2MhfbyQB6hBj7vDsuYEPTxFLEYGU3FjDeE1WCJxBhOHPs
	I3wWAfXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujXjC-0000000EPqZ-0rlV;
	Wed, 06 Aug 2025 06:34:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujXgD-0000000EPbt-3LNX
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 06:31:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujXgC-0004Ro-FK; Wed, 06 Aug 2025 08:31:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujXgC-00CAFw-0u;
	Wed, 06 Aug 2025 08:31:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujXgC-008CRs-0i;
	Wed, 06 Aug 2025 08:31:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250805174541.2606267-1-a.fatoum@barebox.org>
References: <20250805174541.2606267-1-a.fatoum@barebox.org>
Message-Id: <175446187621.1954232.5137409844451448531.b4-ty@pengutronix.de>
Date: Wed, 06 Aug 2025 08:31:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_233117_839234_39998DF6 
X-CRM114-Status: UNSURE (   9.75  )
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
Subject: Re: [PATCH master 0/8] ARM: mmu: fix hang reserving memory after
 text area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 05 Aug 2025 19:45:33 +0200, Ahmad Fatoum wrote:
> The loop remapping the memory banks looks at reserved memory
> regions and then maps everything eXecute Never up to the start of the
> region. If the region happens to be in the same bank as the text area
> and it comes after it, this means the text area is temporarily mapped
> eXecute Never, while barebox is running from it, which results in a
> hang.
> 
> [...]

Applied, thanks!

[1/8] partition: rename region_overlap_end to region_overlap_end_inclusive
      https://git.pengutronix.de/cgit/barebox/commit/?id=f6c2846933ca (link may not be stable)
[2/8] partition: define new region_overlap_end_exclusive helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=768fdb36f30e (link may not be stable)
[3/8] ARM: mmu: skip TLB invalidation if remapping zero bytes
      https://git.pengutronix.de/cgit/barebox/commit/?id=b71103970c9b (link may not be stable)
[4/8] ARM64: mmu: pass map type not PTE flags to early_remap_range
      https://git.pengutronix.de/cgit/barebox/commit/?id=fda2cc61ef68 (link may not be stable)
[5/8] ARM: mmu: provide setup_trap_pages for both 32- and 64-bit
      https://git.pengutronix.de/cgit/barebox/commit/?id=5a4f19a47c21 (link may not be stable)
[6/8] ARM: mmu: setup trap pages before remapping R/O
      https://git.pengutronix.de/cgit/barebox/commit/?id=b661f0519424 (link may not be stable)
[7/8] ARM: mmu: share common memory bank remapping code
      https://git.pengutronix.de/cgit/barebox/commit/?id=5c4d167f5a54 (link may not be stable)
[8/8] ARM: mmu: fix hang reserving memory after text area
      https://git.pengutronix.de/cgit/barebox/commit/?id=e91c073f4756 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



