Delivery-date: Mon, 20 Feb 2023 10:18:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU2J9-00CZdz-FJ
	for lore@lore.pengutronix.de; Mon, 20 Feb 2023 10:18:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU2J8-0002Oc-BY
	for lore@pengutronix.de; Mon, 20 Feb 2023 10:18:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Wm1annVYlgdQwRT9S5qAWg6e5unEd+UZB6hGhgra4c=; b=qKE644HCnEzeiPv475jjYStEH5
	JjQZ07tFdaZuO+trMMwtO6IXKRMVGcQSk7ZldVcNRmx5vc/BZ9bqSvzrK3TdKNgrzfdtZK6rs3/YW
	RQfQk8czHRC/gfpajp63M/PoAfuI4nq8BOZQXGj2W6n1AhEXFrs/anUomtCs0MRzLSprmv3/mKY4T
	AUMRb2EhTDY9cayCyfSyVChjivDVVbMxQYm59I1N4pGCdWFu0+3BXbVS0Br/84dBAbE/JCx3rBGmM
	hlAB0MVhrznYT14gTEknN8VLxmQVZ9X53553DAMY+1Tw1qxAMJi+GuuzCfi7ZD//1Q+U6h4uZpWCF
	sHC4yE8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU2IF-003U9G-Ug; Mon, 20 Feb 2023 09:17:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU2I4-003U7V-HQ
	for barebox@lists.infradead.org; Mon, 20 Feb 2023 09:17:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pU2I3-0002F6-3J; Mon, 20 Feb 2023 10:16:55 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pU2I2-0004q6-Se; Mon, 20 Feb 2023 10:16:54 +0100
Date: Mon, 20 Feb 2023 10:16:54 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230220091654.oqwnoligiordlmuf@pengutronix.de>
References: <20230217172414.1835351-1-a.fatoum@pengutronix.de>
 <20230220083724.jws5niyjbhqcd4rp@pengutronix.de>
 <b059c0e0-98b7-2a41-1608-8aaf73405172@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b059c0e0-98b7-2a41-1608-8aaf73405172@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_011656_870509_546CC096 
X-CRM114-Status: GOOD (  22.97  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] RISC-V: virt: riscvemu: use new-style DT overlay
 syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-02-20, Ahmad Fatoum wrote:
> On 20.02.23 09:37, Marco Felsch wrote:
> > Hi Ahmad,
> > 
> > On 23-02-17, Ahmad Fatoum wrote:
> >> DTC nowdays also supports a much less verbose syntax for DT overlays
> >> that is internally converted to the usual much more verbose fragment
> >> syntax. Switch to it.
> >>
> >> No functional change intended.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  .../riscv/boards/riscvemu/overlay-of-sram.dts | 197 ++++++++----------
> >>  1 file changed, 90 insertions(+), 107 deletions(-)
> >>
> >> diff --git a/arch/riscv/boards/riscvemu/overlay-of-sram.dts b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
> >> index 092fb02518b9..395fde84c1a9 100644
> >> --- a/arch/riscv/boards/riscvemu/overlay-of-sram.dts
> >> +++ b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
> >> @@ -3,127 +3,110 @@
> >>  /dts-v1/;
> >>  /plugin/;
> >>  
> >> -/ {
> >> -	fragment@0 {
> >> -		target-path = "/soc";
> >> -		__overlay__ {
> >> -			#address-cells = <2>;
> >> -			#size-cells = <2>;
> >> -			sram@1000 {
> >> -				compatible = "mtd-ram";
> >> -				reg = <0 0x1000 0 0x10000>;
> >> -				#address-cells = <1>;
> >> -				#size-cells = <1>;
> >> +&{/soc} {
> > 
> > We could also move everything under the root node right? So the
> > following is also possible:
> > 
> > &{/} {
> > 	chosen {
> > 		environment {
> > 		};
> > 	};
> > 	soc {
> > 	};
> > };
> > 
> > If that is the case I would change it to the above syntax instead of
> > having several ones. Apart from that the change looks good to me.
> 
> I'd rather be explicit. For example htif below is supposed to be under
> SoC IMO, yet riscvemu places it under /. Being explicit at least gives
> a warning at runtime. I could move some stuff under / { } and leave
> override others by symbol, but what does this improve?

I got your point, maybe it is worth adding it to the commit message. So
we can remember in a few year why we have chosen the explicit approach.

Regards,
  Marco


