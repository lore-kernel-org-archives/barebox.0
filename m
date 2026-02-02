Delivery-date: Mon, 02 Feb 2026 16:47:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vmw9A-0085oF-1j
	for lore@lore.pengutronix.de;
	Mon, 02 Feb 2026 16:47:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vmw99-000740-Hh
	for lore@pengutronix.de; Mon, 02 Feb 2026 16:47:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W5zcSlCb7p4Z3f1dzfYSlfdTd89r8YATI6Bg14psVx4=; b=QXMo75tH8xet247d+7TQRC6XM/
	evJE+h95h0AVj7grv4JepZMbmPanNvWiPFCVKtDyv1MYPfcie0LPV/4M/a+KQ3HJI+hrYCM6czdZE
	LCFKW4n6MF3GXWgBUxNMg957jJ/G+9wFoATdCe637pp/MTd5fkX5ZFSGIDnZnHnO+DHE7nvfHBy78
	UW7XDOmuAwVKdWlx/zHKVx3B7n2Yb6wElADurwfOeM4K43Wc3y+Uja0vuM6sW+9ug9R1jLVhjgxNc
	edKq8tPEhT10sDTMeTgHQcmHqyzG0Gm0M6mxdkfkfCf40zOoAxpYFMSgvEZiPtotaGaAML8cB4TlC
	7cXvgzPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmw8Y-00000005D6g-4ARO;
	Mon, 02 Feb 2026 15:46:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmw8W-00000005D6A-1pXk
	for barebox@lists.infradead.org;
	Mon, 02 Feb 2026 15:46:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vmw8T-0006yf-9X; Mon, 02 Feb 2026 16:46:45 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vmw8T-003l8M-2V;
	Mon, 02 Feb 2026 16:46:45 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vmw8S-00CESK-3B;
	Mon, 02 Feb 2026 16:46:45 +0100
Date: Mon, 2 Feb 2026 16:46:44 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20260202154644.xy2qp4yebahkexoq@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-4-8f0625ac5471@pengutronix.de>
 <df2aa615-ac27-42d9-a1f2-38d0d6dd5b50@pengutronix.de>
 <20260115132628.6ot2ph7auhq3ezfw@pengutronix.de>
 <2c560076-4767-4bd1-b420-8f1d4c505a20@pengutronix.de>
 <50ee3a64-a59f-42fc-a26b-cf8ff3176142@pengutronix.de>
 <20260118190910.kz45bwlaujcq6bxz@pengutronix.de>
 <44808e88-0688-4e56-a9e8-7f1f7227fa7a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <44808e88-0688-4e56-a9e8-7f1f7227fa7a@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_074648_472304_06C50316 
X-CRM114-Status: GOOD (  24.09  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/23] ARM: i.MX8M: add support to pass DT via
 imx8m{m,n,q,p}_load_and_start_image_via_tfa()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

thanks for your input, please see below.

On 26-01-22, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 1/18/26 8:09 PM, Marco Felsch wrote:
> > Hi Ahmad,
> > 
> > On 26-01-15, Ahmad Fatoum wrote:
> > I get your point regarding the unnecessary breakage. It would have been
> > nice if we could have a TF-A loading abstraction within the PBL since
> > loading the TF-A and (opt. OP-TEE OS) is mostly the same on each and
> > every ARMv8-A SoC and we tend to adapt barebox rather than adapting the
> > TF-A binary.
> 
> Sure, I would also love to have a generic flow for that and that's one
> reason, why I want to restructure our early PBL code and want to avoid
> extra API breakage till then.
> 
> > However I would like to mention that handover data was meant to be
> > passing data between the PBL and barebox. We would repurpose the
> > handover mechanism if we would use the handover data. In this case it
> > could be re-used in several other places. Therefore I'm not a fan of
> > this idea.
> 
> My original thought is that we could use the same DT later for passing
> to barebox proper as well, so we are really just moving the addition of
> the handoff entry earlier.
> 
> I see now that this doesn't really work as barebox can be chainloaded at
> EL2/1 and in that case, the initial setting of the oftree handoff data
> would've been lost.
> 
> > What do you think about adding the 'fdt' support only to the 'lowlevel'
> > APIs:
> >   - __imx8mp_load_and_start_image_via_tfa()
> >   - __imx8mm_load_and_start_image_via_tfa()
> >   - __imx8mn_load_and_start_image_via_tfa()
> > ?
> 
> Sure, I can live with that.

Okay, I dropped the imx8m*_load_and_start_image_via_tfa() changes but
kept the changes for __imx8m*_load_and_start_image_via_tfa().

Regards,
  Marco


