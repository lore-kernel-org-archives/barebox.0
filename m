Delivery-date: Tue, 08 Aug 2023 18:21:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTPT0-00Cbqs-Mt
	for lore@lore.pengutronix.de; Tue, 08 Aug 2023 18:21:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTPSy-0005Md-SY
	for lore@pengutronix.de; Tue, 08 Aug 2023 18:21:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XVfyLFE3VRpQYDt+WD7k13NNiF3sZ+NJR4+Q34vqzTQ=; b=aY120OdVvyF8RoSuqtJlt08DXe
	3ftdLf/ddgfQunDRAgi+2HqgnQCygdV0Q2AaDThAiA10DIaVlN0wtpDSwduHfBdFv3jTHhZWg+LuL
	bjf/CiEcyLA8PxCLBFS/7JLjxXSKi/2WhwKI2GaZW8ecQuA5EBm363Bcp+OL9QW6L7wDqwnLxBnNR
	lOcHV54lGB4lLDemfABWu/q1e9TDQBjFaAudP+1bbyaEL72XPeXvGTUN4dB+7LndIAvGSMAgy64mr
	E9s3V12/wUSkLuBlc8VfyhhCg87KoM0AUUWKWzv7RreGDAiJOtWt1qEAlp1vn+Lur76LZhkBMmX1V
	XxCxeN1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTPRh-002xEn-0J;
	Tue, 08 Aug 2023 16:20:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTPRe-002xBN-1F
	for barebox@lists.infradead.org;
	Tue, 08 Aug 2023 16:20:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qTPRa-0004wM-R4; Tue, 08 Aug 2023 18:20:26 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qTPRa-0004AF-Ja; Tue, 08 Aug 2023 18:20:26 +0200
Date: Tue, 8 Aug 2023 18:20:26 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230808162026.z2ndwusfpq27re3w@pengutronix.de>
References: <20230807170743.149799-1-m.felsch@pengutronix.de>
 <31c0838e-1aac-6691-3165-40c94cd94006@pengutronix.de>
 <20230808094634.whvpslmkjlkjkk2h@pengutronix.de>
 <22ac211a-644a-1915-5451-a3dec657f565@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <22ac211a-644a-1915-5451-a3dec657f565@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_092030_418607_E092268B 
X-CRM114-Status: GOOD (  36.08  )
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
Subject: Re: [PATCH] of: of_net: add support to parse ASCII encoded
 mac-addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-08-08, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 08.08.23 11:46, Marco Felsch wrote:
> > Hi Ahmad,
> > 
> > On 23-08-08, Ahmad Fatoum wrote:
> >> Hello Marco,
> >>
> >> On 07.08.23 19:07, Marco Felsch wrote:
> >>> Some vendors like Polyhex store the MAC address ASCII encoded instead of
> >>> using the plain 6-byte MAC address. This commit adds the support to
> >>> decode the 12-byte ASCII encoded MAC addresses.
> >>>
> >>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> >>
> >> FYI, the upstream device tree binding for this is NVMEM layout, which was only
> >> recently added to Linux and for which barebox has no support yet.
> > 
> > I know that, thanks for the info :) I thought that this is no "layout"
> > it's just the mac-address stored in ASCII instead of plain 6-byte
> > storage.
> 
> Sequential big-endian 6 bytes is the normal format. Anything else (ASCII
> with nothing between it, ASCII with :, ASCII with -) is a different layout IMO.

You're right.

> >> I can understand that porting NVMEM layouts, just to get a MAC address assigned
> >> might not be an attractive proposition, but I don't think that adding a new
> >> barebox-specific binding is the right way here.
> > 
> > Me neither therefore I dropped the barebox specific binding and did just
> > do some heuristic.
> 
> It's a binding, whether you use a boolean property, the size in the reg field
> or add a nvmem-layout subnode.

To be clear, the binding under
"Documentation/devicetree/bindings/net/ethernet-controller.yaml" just
says that the nvmem-cells is <1> and the nvmem-cells-names must be set to
"mac-address". The binding don't say how much space the mac-address
storage occupy.

> >> I'd suggest, you get the nvmem cell in board code and assign it there.
> >> There's readily available API for that. If you are interested in a
> >> generic solution, NVMEM layouts are the way to go IMO.
> > 
> > Thought about that too but went this way because it's much less code
> > than doing it in the board code. Also it allows to share the code with
> > others.
> 
> How widespread is it to store MAC address that way? If it's just Debix doing
> it this way, you are effectively adding a binding that's only useful to Debix
> into common code.

Debix is the first I'm aware of. I know that this is common code. As
said above the binding don't stop us from having a larger nvmem-cell
size.

> > As said, I don't think that this is a layout. Of course there are more
> > ASCII strings to store the production test result but this is not
> > relevant. I really need to check which is more effort
> > board-code vs. layout-support if you think that this is layout.
> 
> I'd be more amenable to this patch if there exists no way in upstream bindings
> to represent this, which was for a long time the case. That's not the case any
> more, so we should not add any new barebox-specific bindings for MAC addresses
> that duplicate what's achievable by the upstream binding.
> 
> For an example of how to do this in board code, see rdu_eth_register_ethaddr().

I will move it to the board code, thanks for the link.

Regards,
  Marco


