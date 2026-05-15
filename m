Delivery-date: Fri, 15 May 2026 11:29:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNorf-001x7p-1d
	for lore@lore.pengutronix.de;
	Fri, 15 May 2026 11:29:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNore-00040K-8m
	for lore@pengutronix.de; Fri, 15 May 2026 11:29:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZtTHsrY0ysgLM/kY6Mj2s1fWtrvST4+85MdqsbqNSA0=; b=YG6wZ0lOg569VDJ+zA/fy7k4lt
	UE3hu+oOO0ixn3OMeaU8Pguw524Qm3dZFvWgh1FzLJCRiiNDniHENa6zyDtbsBVTWdhnFi44xbHLM
	+tMcaq2A7iz9APEReP5ttn/Nl7VNGyW0TrbDFvPQYs5jl7OpQBwUijLM8AMVQlb9iNcKvyW42b2CK
	tEo+Z/gQtyVCJHJmrcibEojkMtI/SF4CF6mnKDnvGqjo/uxmjjdO2Lv/q0kUDMKYtwvLUOqeMJ1xm
	EFIcfJylTm/w0fRqeV/kTA1DeplKjZ5imFNGkCqeNb1GnXFeRdsLUSPPmdNPoNji1OO+nwc4KI+9c
	Z1KlxPUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNoqI-00000007tBj-0LRW;
	Fri, 15 May 2026 09:28:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNoqF-00000007t9m-1pKx
	for barebox@lists.infradead.org;
	Fri, 15 May 2026 09:28:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNoqD-0003Om-6B; Fri, 15 May 2026 11:28:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNoqD-000u1s-0O;
	Fri, 15 May 2026 11:28:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNoqD-0000000AVz2-0IK3;
	Fri, 15 May 2026 11:28:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260513-rockchip-fixes-v1-0-a4055849a014@pengutronix.de>
References: <20260513-rockchip-fixes-v1-0-a4055849a014@pengutronix.de>
Message-Id: <177883730106.2505901.8416760765270770244.b4-ty@pengutronix.de>
Date: Fri, 15 May 2026 11:28:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_022823_481275_0CC4AD28 
X-CRM114-Status: UNSURE (   6.55  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] ARM: Rockchip: regression fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 May 2026 15:55:49 +0200, Sascha Hauer wrote:
> This series brings the Radxa Rock3A up again after several regressions
> introduced after the last release. While I observed on Rock3A only,
> none of the fixes is specific to this board, so others are likely
> affected as well.
> 
> 

Applied, thanks!

[1/3] ARM: rockchip: atf: only set OP-TEE address when starting it
      https://git.pengutronix.de/cgit/barebox/commit/?id=614b5d1ead4a (link may not be stable)
[2/3] ARM: rockchip: dmc: substract ROCKCHIP_DRAM_TFA_CARVE_OUT from memory regions
      https://git.pengutronix.de/cgit/barebox/commit/?id=dd691689bc9c (link may not be stable)
[3/3] ARM: rockchip: atf: pass correct memsize to mmu_early_enable()
      https://git.pengutronix.de/cgit/barebox/commit/?id=a0ef3a1b5cb6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



