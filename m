Delivery-date: Wed, 31 Aug 2022 08:08:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTGtP-002P8n-0N
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 08:08:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTGtN-0004AC-Ip
	for lore@pengutronix.de; Wed, 31 Aug 2022 08:08:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MmglwaMaga2JaUnjU5e2VdyxczzWD55E6dQ45Fnp23c=; b=gebpD42tT070oy8Hh91e7C+F+G
	P8eol5rU7SE6RmeRElYGL78CJDSChjItrpLWNWOfGLu5hB4gTIC0KOwQ1wxDeNyqh23X7sLSE0o2Y
	R28k5pApKxPw2mZw1HYPI5qJ3hKyxFaiCYeblRlVkSuqoNiYqmMvx6e81J1siChzXlyShBINU+loc
	jHxVPSr4Y1fMM7itMqADdZ4mmZo4uQjcFksw7YloMg0bqVZjPZBNfR9BEKCL/NM5+/cF5G/rK+cm3
	GihkGfAlcY0A85AoykyPU751HClPPviKsEsm/sA6CLmLoGvuwmkBMGj/PnMk1L1jepgW5a1fB6ZQy
	pBso6jOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTGrk-004BvS-IQ; Wed, 31 Aug 2022 06:06:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTGre-004BsJ-CP
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 06:06:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTGrZ-0003nu-5a; Wed, 31 Aug 2022 08:06:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTGrY-0004gx-T1; Wed, 31 Aug 2022 08:06:08 +0200
Date: Wed, 31 Aug 2022 08:06:08 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de, ukl@pengutronix.de
Message-ID: <20220831060608.GB12909@pengutronix.de>
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
 <20220830073248.GF24324@pengutronix.de>
 <395895f6-0d75-9935-a42d-1c089d5c6272@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <395895f6-0d75-9935-a42d-1c089d5c6272@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_230614_443059_D49DA7E5 
X-CRM114-Status: GOOD (  30.95  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/10] Add new feature controller framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 30, 2022 at 09:38:57AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 30.08.22 09:32, Sascha Hauer wrote:
> > Hi Ahmad,
> > 
> > On Thu, Aug 18, 2022 at 07:19:45AM +0200, Ahmad Fatoum wrote:
> >> The i.MX8MM exists in a Lite variant with no VPUs as well as Solo and
> >> Dual variants with one or two cores respectively instead of the default
> >> four. For i.MX6, we had a manual fixup taking care of deleting the
> >> excess CPUs, but for e.g. the i.MX8MP, we have fuses for the M7, VPUs, CAN,
> >> CAN-FD, ISPs, NPU, ... etc. Describing all that in the DT is overly verbose
> >> as we need to take care not to rely on specific device node names that
> >> should be disabled. There has been an upstream attempt to get a binding
> >> for U-Boot to act on:
> >>
> >>   https://lore.kernel.org/all/20220324042024.26813-1-peng.fan@oss.nxp.com/
> >>
> >> This was refused by the DT maintainer, because any solution to this
> >> problem should also be flexible enough to cover the case of partitioning
> >> devices between the secure and normal world.
> >>
> >> There's a patch series upstream to describe a domain-controller binding
> >> that allows a hypervisor to partition devices into domains. With the
> >> naming generalized, this fits nicely the use case of gating devices
> >> behind specific features:
> >>
> >> https://lore.kernel.org/all/3ca7cd75-4b62-2380-adb0-646bbeb647a2@pengutronix.de/
> >>
> >> This series does that. See the first two commit messages for details.
> >> We use a barebox, prefix as the naming isn't set in stone, but the intention
> >> is to drop the prefix and potentially rename once an upstream binding is
> >> approved.
> > 
> > I am fine with this series. Is this still the way you want to have it
> > merged or do you have an update?
> 
> No updates, please apply series, except for last two RFC commits.

Did that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


