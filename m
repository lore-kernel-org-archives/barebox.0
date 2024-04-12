Delivery-date: Fri, 12 Apr 2024 17:47:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvJ7a-009B9a-1S
	for lore@lore.pengutronix.de;
	Fri, 12 Apr 2024 17:47:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvJ7Z-0003s2-TI
	for lore@pengutronix.de; Fri, 12 Apr 2024 17:47:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JVkLjbU7IKcZUX8cZTfAwI49JYfmdWspK18mfiM2qRw=; b=mzw4X2pzQaZ9iP4+JnuU3gQxWb
	0ovjfZIHdYOa1/t3r8j8t+GWcLm1QALrkCQPZwq790sU2PXAet3au53G1jSO//gz/f+jaRHF2Rrwl
	Ynlz7Wij/N2I+KftuJTrxjivhQpUGU7cINgGSBi9J5pOQuomf38N545/cNbTi8QRCKybkf3IhnEEw
	J+/LzEw2LXxkp+8yeqbSanzhpG3mpde5gFiqgx0f8/4KOJZCxAphY0yCCWVouERuorPTinArSAYTL
	rmPiLTy98tuB+Ld3BPXvZKIIsURfyv0YnkaDNCHq2fq2W6+oj4YhNWIFhFeZ0QUhEIJjop7BebyXJ
	U6spRDkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvJ75-00000000IHX-0T9a;
	Fri, 12 Apr 2024 15:46:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvJ70-00000000IFA-3eNt
	for barebox@lists.infradead.org;
	Fri, 12 Apr 2024 15:46:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rvJ6x-0003YA-1K; Fri, 12 Apr 2024 17:46:43 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rvJ6w-00Bu1J-D1; Fri, 12 Apr 2024 17:46:42 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rvJ6w-009Nns-12;
	Fri, 12 Apr 2024 17:46:42 +0200
Date: Fri, 12 Apr 2024 17:46:42 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
	barebox@lists.infradead.org
Message-ID: <20240412154642.k55jlqaagg3xeeha@pengutronix.de>
References: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
 <20240405-feature-wolfvision-pf5-v1-1-e4a29c0e7fe1@wolfvision.net>
 <20240405170223.k4yijw7wffr3fy4j@pengutronix.de>
 <12f46e93-c50f-4c3b-9052-eb25c5448d88@wolfvision.net>
 <3c5fd58a-6d49-4eca-ae39-d507acc35f8c@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3c5fd58a-6d49-4eca-ae39-d507acc35f8c@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_084646_949063_18643268 
X-CRM114-Status: GOOD (  19.18  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] DNM: dts: arm64: rockchip: copy pf5 device tree from
 mainline Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-04-12, Ahmad Fatoum wrote:
> Hi,
> 
> On 12.04.24 15:02, Michael Riesch wrote:
> > Hi Marco,
> > 
> > Thanks for your response!
> > 
> > On 4/5/24 19:02, Marco Felsch wrote:
> >> Hi Michael,
> >>
> >> thanks for your patches.
> >>
> >>> DNM: dts: arm64: rockchip: copy pf5 device tree from
> >>
> >> I suppose DNM means "do not merge", instead of marking it this way we
> >> put the not yet upstream Linux dts files into arch as well but mark them
> >> as upstream dts file, e.g.:
> >>
> >>   - arch/arm/dts/imx8mm-innocomm-wb15-evk-upstream.dts
> >>   - arch/arm/dts/imx8mp-debix-model-a-upstream.dts
> >>   - arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts
> >>   - arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi
> 
> I have been wondering if we should add yet another device tree
> directory for kernel DTs that are not yet in the kernel, e.g.
> common/boards/dts. Then we can place full DTs there, remove them
> once they are in dts/ and clean up arch/$ARCH/dts/ that way.
> 
> > OK, I'll do it that way!
> > 
> >> Once the files are usptream we can remove them.
> > 
> > Is this something I should keep in mind or may I expect that this
> > happens automagically?
> 
> Usually, when someone notices. Having them in a single directory
> as suggested above may make it easier to sport no longer needed DTs.
> 
> Thoughts?

+1 from my side.

Regards,
  Marco


