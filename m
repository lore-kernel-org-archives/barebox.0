Delivery-date: Fri, 21 Feb 2025 13:21:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlS1j-0056pN-1z
	for lore@lore.pengutronix.de;
	Fri, 21 Feb 2025 13:21:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlS1i-0000Pw-Ew
	for lore@pengutronix.de; Fri, 21 Feb 2025 13:21:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yfOhLIRVEomKBORHCiRK+x3lZGuyV4Xjqe8eYjGsrh8=; b=WVPQlpfRFrGf4PP2K8N7NFLIXV
	DFV6ctS9SDgyD9DEf7KvFFKwumHvlGOqv4LJQd31ATth4KCYtr9mD6Y5GqNkEFnTg7HhwbgQEcsNa
	fIz+SiDZEFnDRxGudfKEzm9U5S/MD5tefX6SOdPK0U1q/JQ8BCx8kt2fIt/r3qDCWE+FJBBPhPHjQ
	zJjz46pRblHSPEBjOk5irZ1xb/+KOtKzAEeKPcdMzDqrFHjaW+Gxy5ui8tb+jPkrWfxsTUeTHibad
	dSq12rL2PMPYNGaBkzo57z1lN5QwnjNr/LBziYZrspfgvsp0Y/tHGhGV9+jhKBZIQ1/xJs8maSXCE
	+SNuWYsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlS1G-00000005SXt-3OIL;
	Fri, 21 Feb 2025 12:20:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlS1D-00000005SWj-2rTv
	for barebox@lists.infradead.org;
	Fri, 21 Feb 2025 12:20:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tlS1C-0000I4-8F; Fri, 21 Feb 2025 13:20:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tlS1B-0026Gs-35;
	Fri, 21 Feb 2025 13:20:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tlS1B-006CnS-2s;
	Fri, 21 Feb 2025 13:20:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Richard Weinberger <richard@nod.at>
In-Reply-To: <20250220203032.3350247-1-a.fatoum@pengutronix.de>
References: <20250220203032.3350247-1-a.fatoum@pengutronix.de>
Message-Id: <174014043388.1478951.219003102869539280.b4-ty@pengutronix.de>
Date: Fri, 21 Feb 2025 13:20:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_042035_723403_8334348E 
X-CRM114-Status: UNSURE (   6.75  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/6] malloc: define a maximum malloc size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Feb 2025 21:30:27 +0100, Ahmad Fatoum wrote:
> TLSF and dlmalloc each already enforce a maximum allocation size.
> 
> Let's define SZ_1G as common maximum allocation size in preparation
> for aligning all allocators to observe it.
> 
> The intention is to make code easier to reason about and as extra
> hardening against possible, yet undiscovered, allocator bugs.
> 
> [...]

Applied, thanks!

[1/6] malloc: define a maximum malloc size
      https://git.pengutronix.de/cgit/barebox/commit/?id=6279bd2d3a33 (link may not be stable)
[2/6] tlsf: fail allocations exceeding MALLOC_MAX_SIZE
      https://git.pengutronix.de/cgit/barebox/commit/?id=b5c4d87dfb62 (link may not be stable)
[3/6] dlmalloc: fail allocations exceeding MALLOC_MAX_SIZE
      https://git.pengutronix.de/cgit/barebox/commit/?id=122a8979fefb (link may not be stable)
[4/6] sandbox: libc_malloc: fail allocations exceeding MALLOC_MAX_SIZE
      https://git.pengutronix.de/cgit/barebox/commit/?id=8839004152f7 (link may not be stable)
[5/6] dummy_malloc: fail allocations exceeding MALLOC_MAX_SIZE
      https://git.pengutronix.de/cgit/barebox/commit/?id=8dcd7add5943 (link may not be stable)
[6/6] test: self: malloc: adapt to addition of MALLOC_MAX_SIZE
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb77a6989e59 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



