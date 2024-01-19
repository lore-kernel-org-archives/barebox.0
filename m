Delivery-date: Fri, 19 Jan 2024 09:21:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQk7t-006jUb-0H
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 09:21:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQk7t-0003Yd-Pw
	for lore@pengutronix.de; Fri, 19 Jan 2024 09:21:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k4C1hckqdAdYpQNRbziRQrrOLOWzE/3PEDKvn/9qGBk=; b=GfHxiDPSy4NTnDNW94UR+oS1lI
	wE92QdGaAUEAhmQyMelh2sFkbQlqguNZjGsDfb0SvqPaCvq8i1cGvH30EoPpABfzI38bUmFNsy5/N
	BXaDs3FEaFfp6gBPM89bpbC53SukBLhJBXYDowSY17r+U137zR4tLVtCkyep7y8GuSOUfWW/Wv3Q7
	5AkT/JNnkyFKfXnuiNCoc2trvwMNiPhs9ZbXEztMANQU4spBzFoK5d0JzjtcP2PPH99xHWppZnHl2
	Xv8/xeHkniylxHf1gjYYWdd53p1KXVO6RVXb+vwRkrcU8Wh8OTkR8v6wa8KqMavxhPpaek8yxTC3g
	pkkQbuEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQk6t-004oXf-35;
	Fri, 19 Jan 2024 08:20:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQk6r-004oXE-2K
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 08:20:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQk6q-0003SO-CF; Fri, 19 Jan 2024 09:20:16 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQk6p-000sNJ-VX; Fri, 19 Jan 2024 09:20:15 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQk6p-000gvt-TE; Fri, 19 Jan 2024 09:20:15 +0100
Date: Fri, 19 Jan 2024 09:20:15 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240119082015.oa6j4elfd26z372s@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
 <170565133573.2284020.3962598950595077783.b4-ty@pengutronix.de>
 <20240119080928.GP4700@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240119080928.GP4700@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_002017_759104_6A161C84 
X-CRM114-Status: GOOD (  17.48  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 00/18] Dynamic OP-TEE Loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-19, Sascha Hauer wrote:
> On Fri, Jan 19, 2024 at 09:02:15AM +0100, Sascha Hauer wrote:
> > 
> > On Tue, 16 Jan 2024 18:07:20 +0100, Marco Felsch wrote:
> > > by this series it is supported to load OP-TEE to random DRAM locations.
> > > The location is parsed and configured if the builtin OP-TEE contains a
> > > header-v1. For this to work we needed to cleanup the imx-scratch code
> > > (patches1-4).
> > > 
> > > I've tested this series on i.MX8MM and i.MX8MP SoCs using the eMMC and
> > > QSPI boot mode. The USB boot mode was tested on i.MX8MM only.
> > > 
> > > [...]
> > 
> > Applied, thanks!
> 
> I Applied it with the changes as discussed.

Thanks a lot.

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


