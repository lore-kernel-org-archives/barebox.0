Delivery-date: Fri, 14 Mar 2025 17:15:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7hD-00E4bQ-1h
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 17:15:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7hB-0005WG-Gs
	for lore@pengutronix.de; Fri, 14 Mar 2025 17:15:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=63A/h5YzttIzUdkPcF1nsX/2Pmct5VmNsdmziT5y8us=; b=bH0LTG6YimnomrPW/Rf8iLRSlY
	UjtmjzCw0noYBJz+gBWQFaR/7cbYCGOtheG+Nvw3iY4apw97Jy4+Yfph6WE87DyPk2AJ/Cy87l4CP
	DdrbdR4bysFLEj5BTbfwbyA86HLQJwtd4KTAK+aaEHmYrQaE8uw5hF44dJE3ssFukCzxgPHmfxP6X
	Vmh7+rQ7CyK7b/a3Z82RSc2Vt9ESuN83XmVrLxHPHX6hudgRljcHtw7BA0F4mYIZ/SQVXXUeNuVUX
	dESibkqOIuPkuqd8hjZCX8UfYdCssjYg2Ki+oz5WnpH4hPYtEGAarZF8MRTBaY2a+MhALa+R8z4SM
	bSml/C8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7gh-0000000EiBp-3veD;
	Fri, 14 Mar 2025 16:15:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7af-0000000EgTb-3jIm
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 16:08:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7ae-0004FC-Ih; Fri, 14 Mar 2025 17:08:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7ae-005jEt-1C;
	Fri, 14 Mar 2025 17:08:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7ae-00HHoV-0z;
	Fri, 14 Mar 2025 17:08:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250313075416.3202194-1-a.fatoum@pengutronix.de>
References: <20250313075416.3202194-1-a.fatoum@pengutronix.de>
Message-Id: <174196853230.4120026.15168346488074160951.b4-ty@pengutronix.de>
Date: Fri, 14 Mar 2025 17:08:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_090853_929942_148ECCCE 
X-CRM114-Status: UNSURE (   7.91  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/6] arch: move promptless options to end of Kconfig
 file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Mar 2025 08:54:11 +0100, Ahmad Fatoum wrote:
> Later commits will move many more promptless arch symbols into the file,
> so prepare for that by moving the current ones to the end and leave the
> options, which either have a prompt or are not boolean at the start.
> 
> 

Applied, thanks!

[1/6] arch: move promptless options to end of Kconfig file
      https://git.pengutronix.de/cgit/barebox/commit/?id=8b39ba47c150 (link may not be stable)
[2/6] RISC-V: rename HAS_CACHE to RISCV_ICACHE
      https://git.pengutronix.de/cgit/barebox/commit/?id=f1d533dda182 (link may not be stable)
[3/6] treewide: retire CONFIG_HAS_CACHE
      https://git.pengutronix.de/cgit/barebox/commit/?id=e341ed5e491a (link may not be stable)
[4/6] arch: move hidden arch options to arch/Kconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=31bcf8f64530 (link may not be stable)
[5/6] arch: move PHYS_ADDR_T_64BIT definition to arch/Kconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=d5ae6d2e03f0 (link may not be stable)
[6/6] x86: move CONFIG_PHYS_ADDR_T_64BIT setting into Kconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=decf1d12a597 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



