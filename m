Delivery-date: Fri, 14 Mar 2025 15:43:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6GV-00E2jl-0O
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 15:43:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6GT-0005Zc-D9
	for lore@pengutronix.de; Fri, 14 Mar 2025 15:43:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:
	From:Subject:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2ClFPo4foWACIRmY2SjZ75IJI1Zp5e+RHTcJTQZal/E=; b=vx0yslBBnOQkyW6UCFKqtIvPoj
	y06FMIKG6xPcItCNrX1ebVmJc7Lr0IejWDm8IaHavTKF823D0/VeQwXPhUO/kZhJA9GwZYarkAnTI
	dMbCv2a6Ymtmmpvn5P8wgqMoE3b+9GXk63YAwwjBTY3htVy9HXJ+XZpG7mCHY1Q4CHJImo36sk4Ai
	s9hv+SKIsr3eOT6vLoRf39XJSLkqC9huR1zXW/UTk65VExivCVvbrOzkvdCB1d9LJFRmdvBVvfcer
	3aQAKt3AIyCgWgGqj5qF21zidniZ5NvbzUghL6PwExEBSDDjWmhshe4Mxt4wrtNl2InOF9uekSzlv
	KolxjKCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6G1-0000000ER4N-1FB2;
	Fri, 14 Mar 2025 14:43:29 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6Fy-0000000ER3G-0NrK
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 14:43:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741963404;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2ClFPo4foWACIRmY2SjZ75IJI1Zp5e+RHTcJTQZal/E=;
	b=DBSkREXBkVUBnsGDZ9FqxAGfLuuZhidddJ/Kg691OmfQU8ZS4Nhg1iR394UeLaoCMgNJRS
	IzMM/Hekq10d/GSJLgcXnsJjrXgXqZfC2aCxMV5IryfrnzbcWYkYMATBNY8JC7srmSggq/
	qPpY//WBExVml3vRtW/NuYoxnKSvnh0fmaZm916d3dhsqeilzeUH3rfcDifIm1aIrd6E8t
	EFeRSxVlR8yGH5Sos22ZAKQdiiTYkN1Etz7TufATS6Fjk+IziqLM/Qsrv6xGVzXyJ2PnOd
	52D5V9CBMYa98CxlhaaqPQqjz5/qujKIGpwdZjZrkz5JEFmvIXsV2Xjm5jDDZA==
Received: from localhost (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id fb8c7130 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 15:43:24 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 14 Mar 2025 15:43:24 +0100
Message-Id: <D8G2HOCHLZHE.3FCQMJ924J7NR@zdiv.net>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>, <barebox@lists.infradead.org>
X-Mailer: aerc 0.20.1
References: <20250314104034.13637-1-jmaselbas@zdiv.net>
 <a87dbd9c-10fb-4451-abd3-f3d9d49c13e2@pengutronix.de>
In-Reply-To: <a87dbd9c-10fb-4451-abd3-f3d9d49c13e2@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_074326_420923_4D70C921 
X-CRM114-Status: UNSURE (   9.84  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] compile test fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri Mar 14, 2025 at 2:08 PM CET, Ahmad Fatoum wrote:
> Hi Jules,
>
> On 3/14/25 11:40, Jules Maselbas wrote:
>> Small patches series of fixes discovered with a compile test on sandbox =
(x86_64)
>> The compile test has been against the next branch but all the patches ap=
plies on
>> commits that are already in the master branch.
>
> This partially duplicates fixes in my clang-analyzer series here:
> https://lore.barebox.org/barebox/20250313073445.764875-1-a.fatoum@pengutr=
onix.de/T/#t
>
> Can you rebase?

Only patch 6 is conflicting and can be dropped because it is already fixed =
by
9b815da01ff4b88c6634c4a7541c581a35ad96d8 ("treewide: fix missing headers in=
 sandbox allyesconfig")

>
> Thanks,
> Ahmad
>
>>=20
>> Jules Maselbas (6):
>>   dma-devices: k3-udma: cleanup headers
>>   dma-devices: k3-udma: use snprintf instead of sprintf
>>   mfd: tps65219: add missing include
>>   pmdomain: ti-k3: add missing include
>>   pmdomain: ti-k3: remove trailing whitespace
>>   regulator: tps65219: add missing include
>>=20
>>  drivers/dma/ti/k3-udma.c               | 5 ++---
>>  drivers/mfd/tps65219.c                 | 1 +
>>  drivers/pmdomain/ti/ti-k3.c            | 9 +++++----
>>  drivers/regulator/tps65219-regulator.c | 1 +
>>  4 files changed, 9 insertions(+), 7 deletions(-)
>>=20



