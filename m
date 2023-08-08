Delivery-date: Tue, 08 Aug 2023 11:47:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJJK-00CEjM-E0
	for lore@lore.pengutronix.de; Tue, 08 Aug 2023 11:47:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJJI-00057m-Ld
	for lore@pengutronix.de; Tue, 08 Aug 2023 11:47:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wEkU7WbHifBV0nxR7yxG4O9080YjXKpy33r6e+dz4yA=; b=Qfr3i9VAno5bPgqoiqOE2dFEMe
	Shp8tuIcFKjkkSJtyewmFYJeJgZWV79iQofVpIsytfT0FuvhIju7ew6HTLw3SeLZt9voIchgFtXDv
	NBiBfKH0SuKCygduEL9a/dEBW3u5OSPe72FrBo+iXgisLRWrN2Jxevs9qHoALHBRFkQ2ZbBbYUhnz
	o6D/sgk9HoAjAlZ/VwQGNxHX4WTvmssvP3qNN5RKWqC5hzbybCftgyCa2AkMJ9HZdmhDAhkGsDLQH
	cADaERtL7s2m3L6N5H+HJgFkihxpqVomtjiesX/OzXLbGn1SZ7BGK1z09rUvHxaGBSUkax1dx9Gbp
	gyWDM6Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTJIV-002Aig-1C;
	Tue, 08 Aug 2023 09:46:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTJIS-002Ahk-0n
	for barebox@lists.infradead.org;
	Tue, 08 Aug 2023 09:46:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qTJIQ-000520-On; Tue, 08 Aug 2023 11:46:34 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qTJIQ-0000zm-GM; Tue, 08 Aug 2023 11:46:34 +0200
Date: Tue, 8 Aug 2023 11:46:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230808094634.whvpslmkjlkjkk2h@pengutronix.de>
References: <20230807170743.149799-1-m.felsch@pengutronix.de>
 <31c0838e-1aac-6691-3165-40c94cd94006@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <31c0838e-1aac-6691-3165-40c94cd94006@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_024636_281377_A7BE786C 
X-CRM114-Status: GOOD (  27.01  )
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

Hi Ahmad,

On 23-08-08, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 07.08.23 19:07, Marco Felsch wrote:
> > Some vendors like Polyhex store the MAC address ASCII encoded instead of
> > using the plain 6-byte MAC address. This commit adds the support to
> > decode the 12-byte ASCII encoded MAC addresses.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> FYI, the upstream device tree binding for this is NVMEM layout, which was only
> recently added to Linux and for which barebox has no support yet.

I know that, thanks for the info :) I thought that this is no "layout"
it's just the mac-address stored in ASCII instead of plain 6-byte
storage.

> I can understand that porting NVMEM layouts, just to get a MAC address assigned
> might not be an attractive proposition, but I don't think that adding a new
> barebox-specific binding is the right way here.

Me neither therefore I dropped the barebox specific binding and did just
do some heuristic.

> I'd suggest, you get the nvmem cell in board code and assign it there.
> There's readily available API for that. If you are interested in a
> generic solution, NVMEM layouts are the way to go IMO.

Thought about that too but went this way because it's much less code
than doing it in the board code. Also it allows to share the code with
others.

As said, I don't think that this is a layout. Of course there are more
ASCII strings to store the production test result but this is not
relevant. I really need to check which is more effort
board-code vs. layout-support if you think that this is layout.

> > ---
> >  drivers/of/of_net.c | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> > 
> > diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
> > index 75a24073da51..4e74986cdda8 100644
> > --- a/drivers/of/of_net.c
> > +++ b/drivers/of/of_net.c
> > @@ -79,6 +79,8 @@ static int of_get_mac_addr(struct device_node *np, const char *name, u8 *addr)
> >  	return -ENODEV;
> >  }
> >  
> > +#define ETH_ALEN_ASCII	12
> > +
> >  int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr)
> >  {
> >  	struct nvmem_cell *cell;
> > @@ -98,6 +100,23 @@ int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr)
> >  	if (IS_ERR(mac))
> >  		return PTR_ERR(mac);
> >  
> > +	if (len == ETH_ALEN_ASCII) {
> > +		u8 *mac_new;
> > +		int ret;
> > +
> > +		mac_new = kzalloc(sizeof("xx:xx:xx:xx:xx:xx"), GFP_KERNEL);
> > +		ret = hex2bin(mac_new, mac, ETH_ALEN);
> 
> Why not parse into a fixed size local buffer and then copy it? Would save
> you the extra allocation.

I went this way to keep the below free logic the same.

Regards,
  Marco


