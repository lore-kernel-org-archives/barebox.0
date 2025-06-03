Delivery-date: Tue, 03 Jun 2025 17:21:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMTSJ-003LbQ-3C
	for lore@lore.pengutronix.de;
	Tue, 03 Jun 2025 17:21:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMTSJ-0003e9-DK
	for lore@pengutronix.de; Tue, 03 Jun 2025 17:21:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D60Xn7O2HKVzU4Bg1Cs2HN3U7gnWIC+UCbmHxesqsaE=; b=19N4glhdL6R46EKaC0Naw5IIcF
	TI6quYAbq4D3A9U0UCBQD7egUEgpZ1y83EAEKHP6rmspO3PakWjx3PJkLiUMsxFac3hFLyANqk/6/
	eehH3YOpXvHKGt4Mj51hxXqU66oLi0y8eYjWGwf2cMJMqqwKDaDAYozmFtBlm6vz9wNGtZHfunmXy
	nnIRx8BuTbdJ6gXM0sYeILOCF/T43aY5g/+ITXLhmowcVIr7EbpK2SDwEBa0JOUB85qb1PEG73gT2
	0PlzWjrmn6BS2+R/j1vlvujDU2C2N4qFy6IucEodGFrg4s+a5AfUj/6Qfz8I+Wd+nBeNH0/GmFX+A
	MQIBpTEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMTRn-0000000BGSY-2ZUz;
	Tue, 03 Jun 2025 15:21:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMTRj-0000000BGRg-1jMG
	for barebox@lists.infradead.org;
	Tue, 03 Jun 2025 15:21:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1uMTRh-00036Y-VN; Tue, 03 Jun 2025 17:20:58 +0200
Message-ID: <d6a0be9631286122e56fdfd87b9911c310554baf.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Fabian Pflug
	 <f.pflug@pengutronix.de>, barebox@lists.infradead.org
Cc: rouven.czerwinski@linaro.org
Date: Tue, 03 Jun 2025 17:20:57 +0200
In-Reply-To: <f3f703ea-c7e6-4635-ace6-d5ccd0418c4f@pengutronix.de>
References: <20250603092044.1464440-1-f.pflug@pengutronix.de>
	 <20250603092044.1464440-2-f.pflug@pengutronix.de>
	 <569963942cf35755dfdf34b240c350986fda4727.camel@pengutronix.de>
	 <6ce5c98c-4f8e-46f6-8dd3-7c911578feb8@pengutronix.de>
	 <47261d55d72a6f34618ca9d4b86214f306a91f5a.camel@pengutronix.de>
	 <f3f703ea-c7e6-4635-ace6-d5ccd0418c4f@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_082059_453632_6AE6107D 
X-CRM114-Status: GOOD (  21.23  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: optee-early: invalidate caches before jump to
 OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Dienstag, dem 03.06.2025 um 16:51 +0200 schrieb Ahmad Fatoum:
[...]
> > > > I guess it would be much better to simply have the
> > > > arm_early_mmu_cache_invalidate() as part of the Cortex A9 lowlevel =
CPU
> > > > initialization at the very start of the PBL entry.
> > >=20
> > > We don't have a dedicated Cortex-A9 lowlevel entry function
> > > unfortunately, just some for specific processors, e.g. the
> > > imx6_cpu_lowlevel_init.
> > >=20
> > > We could add CONFIG_CPU_CORTEX_A9, select it from the relevant SoC
> > > options and depending on it, add the invalidation to
> > > arm_cpu_lowlevel_init()? What do you think?
> > >=20
> > This would then trigger the invalidation even on systems that don't
> > need it in case of a multiarch Barebox. There aren't that many Cortex
> > A9 based SoCs supported in Barebox and all of them should have a SoC
> > specific init function to apply the necessary workarounds, so I think
> > it would be fine to call the cache invalidate from the SoC specific
> > lowlevel init of those few SoCs?
>=20
> Fair enough. How do we know we only need this for Cortex-A9 though?
> Couldn't e.g. the Cortex-A8 also be affected?

We can't be 100% sure without specific knowledge about each SoC
integration. Both the Cortex A8 [1] and Cortex A15 [2] TRMs define a
reset sequence that mandates the straps to be set in such a way that
the processor will clear all L1 and L2 memory arrays on power-on reset.

The only odd one where the TRM doesn't even mention memory arrays in
the reset sequence is the Cortex A9 [3], which pretty much lines up
with the number of SoCs where we have seen issues due to uninitialized
cache content.

Regards,
Lucas

[1] https://developer.arm.com/documentation/ddi0344/k/Cihcbcgi
[2] https://developer.arm.com/documentation/ddi0438/i/functional-descriptio=
n/clocking-and-resets/resets
[3] https://developer.arm.com/documentation/100511/0401/functional-descript=
ion/clocking-and-resets/reset


