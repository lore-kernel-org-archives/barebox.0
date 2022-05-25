Delivery-date: Wed, 25 May 2022 08:25:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntkSC-008LJg-7B
	for lore@lore.pengutronix.de; Wed, 25 May 2022 08:25:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntkSB-0007Cp-4H
	for lore@pengutronix.de; Wed, 25 May 2022 08:25:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6ifw7pHJK0+jk6GGoiIHYOvu5ULjyYBFzJqUhRhnFg=; b=IaKMn4TUlCHiyy
	/eQchH6xKUYOohVezDPOTLxOxkxM97aHQfLYj5Tze8WJjfrC9vsYHLawfJcZmjcGSgT/M3aseoO/e
	rcQ/y3MPAMBQLDIZox+1hB0eF1nTEEORvw4knFI7EN56qPY/dVj1mFKefbgW+ESVOneJ2sWOYvhu/
	EXd1+RA39YvipdzpUEgpt/h4k7PFRHIt7De+lR4hCQkMIBqAf2Yhq/1gOuUgsXTFYpuDz37cXOSAv
	7kUzVAYlWQwqtqmgVsjVk888MaDTrGAB7gEJiqZT3KH49AA3X0hSw45MaTiq8GqcJ56tARpfPVh/t
	1TTC2HDPJwP03IkBkwSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntkQS-00A3nl-EF; Wed, 25 May 2022 06:23:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntkQN-00A3n6-8S
 for barebox@lists.infradead.org; Wed, 25 May 2022 06:23:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ntkQH-00078V-6H; Wed, 25 May 2022 08:23:09 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ntkQG-0006Kb-Lt; Wed, 25 May 2022 08:23:08 +0200
Date: Wed, 25 May 2022 08:23:08 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
Message-ID: <20220525062308.irg3gujxfq22lebu@pengutronix.de>
References: <20220524073048.18467-1-eagle.alexander923@gmail.com>
 <76dbfceb-1651-2659-7209-2c37c3f8f7d5@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <76dbfceb-1651-2659-7209-2c37c3f8f7d5@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_232315_337638_0F9ABCA6 
X-CRM114-Status: GOOD (  15.25  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: DTS: myir-x335x: Add GPIO aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-05-24, Ahmad Fatoum wrote:
> Hi,
> 
> On 24.05.22 09:30, Alexander Shiyan wrote:
> > For the correct work of GPIO driver, we need to define aliases.
> > Let's add them to the devicetree.
> > 
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > ---
> >  arch/arm/dts/am335x-myirtech-myd.dts | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/arch/arm/dts/am335x-myirtech-myd.dts b/arch/arm/dts/am335x-myirtech-myd.dts
> > index 6ec65e533d..1ea0f2a440 100644
> > --- a/arch/arm/dts/am335x-myirtech-myd.dts
> > +++ b/arch/arm/dts/am335x-myirtech-myd.dts
> > @@ -6,6 +6,13 @@
> >  #include <arm/am335x-myirtech-myd.dts>
> 
> Other boards do #include "am33xx.dtsi", which takes care of these
> aliases. It's probably better you include that too.

+1 :)

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

