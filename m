Delivery-date: Wed, 04 Mar 2026 08:36:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgmU-007u8n-1H
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 08:36:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgmU-00041C-Nm
	for lore@pengutronix.de; Wed, 04 Mar 2026 08:36:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0WcjE8I4e85YhAsuF2elWvt7hes1+Lp+VipV9Jkv3Fg=; b=WqdILOIQ20g65/iYioJIiyk/tb
	AkUz1sXCz866wR9xpH1vz1MJLyeLjK39tPhOFeox0yno5vmcUeNMu2wivTQMYc/P2bn7OVrLs/+nF
	Cd4Z0DEyMw9GU5bjMhINbxSlvwSElhJD96qJiqFq1yNFK79F0YTUjbaD+w43oCQMyzYTgmsjERVst
	fqH8SvoeGBQlL/xaMctNfIREKpi9Hq8KvK6VWYlwjgZS2r77fc6Tf5whEPPcEWaoJ5Q88ybMsMmIy
	M574oAzv2sP+l4Ts+tBoRZRI1QZ+RqCi1RtQVacafsvioKIGy3oiQZdZir/qmMlbCy0d/YDfE1yWx
	2h5YE4Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgm8-0000000Gc1q-2z4a;
	Wed, 04 Mar 2026 07:36:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgm6-0000000Gc0Y-1Fyx
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 07:36:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgm4-0003vd-M7; Wed, 04 Mar 2026 08:36:04 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgm3-003g2D-0U;
	Wed, 04 Mar 2026 08:36:04 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgm4-0000000GL1K-1qKw;
	Wed, 04 Mar 2026 08:36:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260302134843.195007-1-a.fatoum@barebox.org>
References: <20260302134843.195007-1-a.fatoum@barebox.org>
Message-Id: <177260976443.3893876.12186536490224945582.b4-ty@pengutronix.de>
Date: Wed, 04 Mar 2026 08:36:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_233606_345128_60AD6117 
X-CRM114-Status: UNSURE (   8.63  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] ci: fixes for PowerPC and networking test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Mar 2026 14:47:32 +0100, Ahmad Fatoum wrote:
> Ahmad Fatoum (4):
>   test: py: network: preserve saved_log_level across _await_prompt
>   powerpc: fix initjmp storing function pointer at wrong offset
>   powerpc: qemu-ppce500_defconfig: increase malloc area to default 4 MiB
>   test: selftest: mmu: skip mirroring tests when not supported
> 
> arch/powerpc/configs/qemu-ppce500_defconfig | 1 -
>  arch/powerpc/lib/setjmp.S                   | 4 ++--
>  test/py/test_network.py                     | 5 +++++
>  test/self/mmu.c                             | 6 ++++++
>  4 files changed, 13 insertions(+), 3 deletions(-)
> 
> [...]

Applied, thanks!

[1/4] test: py: network: preserve saved_log_level across _await_prompt
      https://git.pengutronix.de/cgit/barebox/commit/?id=523220c127c7 (link may not be stable)
[2/4] powerpc: fix initjmp storing function pointer at wrong offset
      https://git.pengutronix.de/cgit/barebox/commit/?id=bb1ddbf129b6 (link may not be stable)
[3/4] powerpc: qemu-ppce500_defconfig: increase malloc area to default 4 MiB
      https://git.pengutronix.de/cgit/barebox/commit/?id=f643a2fc17bf (link may not be stable)
[4/4] test: selftest: mmu: skip mirroring tests when not supported
      https://git.pengutronix.de/cgit/barebox/commit/?id=a4b831b2ebc2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



