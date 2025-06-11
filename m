Delivery-date: Wed, 11 Jun 2025 09:10:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPFbv-0064Hs-1g
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 09:10:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPFbu-0001us-VU
	for lore@pengutronix.de; Wed, 11 Jun 2025 09:10:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aI7U4qqeHd5QedUFQxzB0OW0xp3IeKQH21qPxKVOVdc=; b=JNjoP3YbrEydaMgUF87PRdmSXC
	Hac7V1R0Wn9vMhedo1f82+l8ROb0sMOFMH+3cLcwqdWaZmzMPlSLb1FZv5uraBx2IdCQ1b0OTCt0p
	/TPZyWRyXdHM3lFsTvyJmzgoszNpCE1Nr3O4iPgMeH/f2FfCfSClqrHER7G0L20+XFQ40BdrymmTo
	fhXBb3Y1CX9joNJ97grpA11Nszhxl8/XWRjjK9tb9DCJqS+6LXAqld85Wc/DMex1olANk/aBGbTg9
	Lh0rC/5zVCS5yOp4KcKO7sboVKTEFqWmjpyFQ16ujSLJH4PvSqZXfrCy/APJBi1q9DALbkcqkUjq1
	VLJ4P0FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFbN-000000094Ny-2Kf3;
	Wed, 11 Jun 2025 07:10:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFbM-000000094Nq-18R2
	for barebox@bombadil.infradead.org;
	Wed, 11 Jun 2025 07:10:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=aI7U4qqeHd5QedUFQxzB0OW0xp3IeKQH21qPxKVOVdc=; b=mV5eR7frpAf/Ea2hjnMJdIHUYz
	5GcvBNJmW6RxODVDYZ3zWUeYEMwluM10F+oDXdc2esa2/YR20SRz5qolp47iVbSMSvCfw+btLLydS
	gFjsMMfAM9CB0YgjPDUZC5hQwkv5sV1f/0AhGxLuMUEgkSUYu8+QIeUQikPGQazv0dZXPuTc477u1
	6P8hjGvRxBlDQnPCTWMIv83brTcD6cdBlq50kpb0n0I4OgnomGUUGMBnKyDJHd/mHL+BO3OMCKrtv
	V6b30i/ykRd4h8gL0IipgIafN+z1/jMqSvtnil2RxsFw0KT1uIBEP6gCsi3m775U53aKdJ5Teqe16
	FO4hos0w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFbJ-000000029Wk-2fnT
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 07:10:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPFbH-0001iy-VD; Wed, 11 Jun 2025 09:10:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPFbH-002uCF-2R;
	Wed, 11 Jun 2025 09:10:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPFbH-002T0Y-2E;
	Wed, 11 Jun 2025 09:10:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Rouven Czerwinski <rouven.czerwinski@linaro.org>, lst@pengutronix.de, 
 fpg@pengutronix.de, Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20250610201320.2691564-1-a.fatoum@pengutronix.de>
References: <20250610201320.2691564-1-a.fatoum@pengutronix.de>
Message-Id: <174962581968.587796.13197234743095302462.b4-ty@pengutronix.de>
Date: Wed, 11 Jun 2025 09:10:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_081022_198832_EB13F0E2 
X-CRM114-Status: UNSURE (   6.46  )
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
Subject: Re: [PATCH v2 1/3] ARM: optee-early: drop superfluous
 sync_caches_for_execution
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Jun 2025 22:13:18 +0200, Ahmad Fatoum wrote:
> We expect start_optee_early() to be called with caches disabled, so there
> is no point in calling sync_caches_for_execution inside.
> 
> Therefore let's verify the assumption that caches are indeed disabled
> and drop the useless call.
> 
> 
> [...]

Applied, thanks!

[1/3] ARM: optee-early: drop superfluous sync_caches_for_execution
      https://git.pengutronix.de/cgit/barebox/commit/?id=02f4e6b02730 (link may not be stable)
[2/3] ARM: Cortex-A9: invalidate caches in early lowlevel init
      https://git.pengutronix.de/cgit/barebox/commit/?id=2754c3aba9d1 (link may not be stable)
[3/3] ARM: i.MX6Q: drop duplicate arm_early_mmu_cache_invalidate
      https://git.pengutronix.de/cgit/barebox/commit/?id=6db7f695218f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



