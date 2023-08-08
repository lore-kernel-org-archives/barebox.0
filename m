Delivery-date: Tue, 08 Aug 2023 09:59:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTHdG-00C8b9-6l
	for lore@lore.pengutronix.de; Tue, 08 Aug 2023 09:59:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTHdE-0000RF-I9
	for lore@pengutronix.de; Tue, 08 Aug 2023 09:59:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HzxQVDKU2ES22FgS3oujbqO3UnSFT42drNjxP4dMV/g=; b=QOgiVG5Z7zh602Gvd1v3NybKFT
	zVDhxmem67U1BsQTH+L70ymyMlFqMLCiPyC0QErX0LfRnAkCDRMouvZpqIzZFOIdnOdGpIRbRRzSu
	FUJgDsC0N0Nlei36usOOgMICgVGB5dwGDrkU11EGy4SfIs2CZM0Bzzu+hr/4rrF9hhqkzQABuGzaS
	j4FPvgIfkPpDgr2K+jKggtqRNri7Df/3pz4xMtOi+/0p7hwoVh882DPBNmaSt2UKi/zGp2TDsGMU3
	82ecaRkeeE0nwxoWlod1g9n/QDt+ChkqNIuz+jVm8HYDnSpIKJJW5EYVbte0p4uokMviSnxmy8I4/
	cd2xJPVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTHbs-001w7k-2T;
	Tue, 08 Aug 2023 07:58:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTHbp-001w7B-1z
	for barebox@lists.infradead.org;
	Tue, 08 Aug 2023 07:58:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qTHbm-0000Es-P0; Tue, 08 Aug 2023 09:58:26 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qTHbm-0003H1-HW; Tue, 08 Aug 2023 09:58:26 +0200
Date: Tue, 8 Aug 2023 09:58:26 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230808075826.jried4ke6rbv4mjy@pengutronix.de>
References: <20230807170743.149799-1-m.felsch@pengutronix.de>
 <20230808055121.GP26314@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230808055121.GP26314@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_005829_674185_0842AF68 
X-CRM114-Status: GOOD (  24.22  )
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

Hi Sascha,

On 23-08-08, Sascha Hauer wrote:
> On Mon, Aug 07, 2023 at 07:07:43PM +0200, Marco Felsch wrote:
> > Some vendors like Polyhex store the MAC address ASCII encoded instead of
> > using the plain 6-byte MAC address. This commit adds the support to
> > decode the 12-byte ASCII encoded MAC addresses.
> 
> The upstream i.MX8MP dtsi files have "mac-address" nvmem cells described
> in the device trees, but they point to a 6-byte long cell in ocotp.
> These cells are not overwritten in the Polyhex dts files. How can there
> be a 12-byte ASCII stored?

Please have a look at:

https://lore.kernel.org/all/20230807171513.156907-4-m.felsch@pengutronix.de/

and search for ethmac{1,2}. Once the devicetree is upstream I will sync
our internal -upstream variant.

> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
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
> 
> I don't like this heuristic very much. If I understand the nvmem stuff
> correctly then parsing of properties in non standard formats should be
> fixed in a struct nvmem_cell_info::read_post_process hook.

IMHO there is no standard to store MAC addresses, there is an easy way
(raw address stored in 6-bytes in some nvmem reachable from the host)
and a vendor-know-it-better way. While coding I was thinking about a
property to indicate that the mac-address is stored in ascii like:

&eeprom {
	macaddr1: mac-address@0 {
		reg = <0 0xc>;
		barebox,ascii-mac-address;
	}
}

Then I thought, if someone stores the mac-address in a 12-byte field
this have to be an ascii encoded mac-address and I dropped the
barebox,ascii-mac-address property.

> > +		u8 *mac_new;
> > +		int ret;
> > +
> > +		mac_new = kzalloc(sizeof("xx:xx:xx:xx:xx:xx"), GFP_KERNEL);
> 
> If anything, then sizeof("xxxxxxxxxxxx"), but what you want here is
> ETH_ALEN.

You're right. Thanks.

Regards,
  Marco


