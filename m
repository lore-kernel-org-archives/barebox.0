Delivery-date: Fri, 13 Oct 2023 13:13:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrG6U-006zkQ-QR
	for lore@lore.pengutronix.de; Fri, 13 Oct 2023 13:13:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrG6T-0001CS-Bl
	for lore@pengutronix.de; Fri, 13 Oct 2023 13:13:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fhy6/LVF0TCBpyRpoPUvD5ayBftyKlIIqNKAd9WyDnI=; b=b6kYt353ffY2xyqOkz3W47XNEN
	ev1J0KxNvoTWm6Rwa6zOnRp3x0WSGipAHxfJKSQd11+1jF0vK0c8BsxuTf4ltE9CI6cKoPzF2M5Z9
	5BeVUubG1njAcJBh/j0sKmjz9DdOCOQb5if4fPy59HGgKgzti0/K9IQ7Ee3e18BmA7WR/oe8yio8I
	dEQtokGnMPrn3n2wAkwDJh/Ob+VvrB1fg6Bp1uigP5IqyST1+DpUzK8aSWhNDrf5bDndFt7OUE0Lw
	dK36/VftQEkz88SWB+aWWy1e5rnrn4phhz1yDoSL4VLRhXJ/3PlXmXOsOvDVoEfdyC5hAt0NHin1A
	Ho4uZ7DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrG58-003I2F-1l;
	Fri, 13 Oct 2023 11:11:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrG56-003I21-2a
	for barebox@bombadil.infradead.org;
	Fri, 13 Oct 2023 11:11:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Fhy6/LVF0TCBpyRpoPUvD5ayBftyKlIIqNKAd9WyDnI=; b=q8P1uW3U0yZ0Ak+uFDz4YqtIdQ
	nzNFuHWfwDEWXUEgx7l8ORJ4dwBeEn74gN86SLdfU/oEBYqp1bpj0XcbqB8reSGoc3SBvsdJVZ5M/
	uL5X18YCIaeJxg1ogLvsMqYrzujzhRDro7Xz2gpsykXB/UbQc37uEQBlf8f5RskBDlMO85fFikFRW
	coUqC7DCebUWPl72g56WdSv32bKXuOaawKZzEKOY3Y+R90cchC++OWH9FCbnDrDFqyv34fF8wrPZN
	UlD4A9GT3gmwMntCx2TIl0eOzPmKJ5G9feM8cdYjxxAxTcoFx1qOHA2hBFtl8mjmcO4GnCIzpppxK
	VazmShvg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrG51-002hgS-1S
	for barebox@lists.infradead.org;
	Fri, 13 Oct 2023 11:11:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrG4z-0000ya-Nl; Fri, 13 Oct 2023 13:11:41 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qrG4z-001Nj8-4P; Fri, 13 Oct 2023 13:11:41 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrG4z-00EGRd-1y; Fri, 13 Oct 2023 13:11:41 +0200
Date: Fri, 13 Oct 2023 13:11:41 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20231013111141.GJ235829@pengutronix.de>
References: <20230911155927.3786335-1-a.fatoum@pengutronix.de>
 <20230911155927.3786335-3-a.fatoum@pengutronix.de>
 <20230912104903.GA637806@pengutronix.de>
 <87e96b20-ae2c-9679-29e4-1c54ee24948a@pengutronix.de>
 <20231006115908.GH235829@pengutronix.de>
 <CAP1tNvRLTzhkiVvun=+yHkxm1jtX_xQNg0rXCM5HEeGNNQ10wA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvRLTzhkiVvun=+yHkxm1jtX_xQNg0rXCM5HEeGNNQ10wA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_121145_113377_210BCFB8 
X-CRM114-Status: GOOD (  55.77  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] net: add generic MAC address derivation from machine
 ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Oct 12, 2023 at 05:59:45PM +0300, Alexander Shiyan wrote:
> Hello.
> 
> Any news on this patch?

It's Ahmad's turn to integrate the remaining review topic(s) and resend.

Sascha

> 
> пт, 6 окт. 2023 г. в 14:59, Sascha Hauer <sha@pengutronix.de>:
> >
> > On Tue, Sep 12, 2023 at 02:34:28PM +0200, Ahmad Fatoum wrote:
> > > Hi Sascha,
> > >
> > > On 12.09.23 12:49, Sascha Hauer wrote:
> > > > On Mon, Sep 11, 2023 at 05:59:27PM +0200, Ahmad Fatoum wrote:
> > > >> From: Ahmad Fatoum <ahmad@a3f.at>
> > > >>
> > > >> Especially during development, devices often lack a MAC address. While a
> > > >> MAC address can be easily added to the environment:
> > > >>
> > > >>   nv dev.eth0.ethaddr="aa:bb:cc:dd:ee:ff"
> > > >>
> > > >> It's easily lost when flashing complete new images, e.g. from CI.
> > > >> Make the development experience neater by deriving a stable MAC address
> > > >> if possible.
> > > >
> > > > I like this, because my Fritzbox network overview is full of duplicate
> > > > entries coming from boards with random MAC addresses.
> > >
> > > Glad you like it. If you are ok with the first two patches, can you take
> > > those until I respin this?
> > >
> > > >
> > > >
> > > >> @@ -558,6 +559,7 @@ static int of_populate_ethaddr(void)
> > > >
> > > > This function should be renamed. When reviewing this patch I asked
> > > > myself why you limit generating a fixed MAC address to the DT case until
> > > > I realized that you actually don't. I was just confused by the function
> > > > name.
> > >
> > > Ah, didn't notice that. Will rename.
> > >
> > > >
> > > >>  {
> > > >>    char str[sizeof("xx:xx:xx:xx:xx:xx")];
> > > >>    struct eth_device *edev;
> > > >> +  bool generated = false;
> > > >>    int ret;
> > > >>
> > > >>    list_for_each_entry(edev, &netdev_list, list) {
> > > >> @@ -566,11 +568,18 @@ static int of_populate_ethaddr(void)
> > > >>
> > > >>            ret = of_get_mac_addr_nvmem(edev->parent->of_node,
> > > >>                                        edev->ethaddr);
> > > >> +          if (ret && IS_ENABLED(CONFIG_NET_ETHADDR_FROM_MACHINE_ID)) {
> > > >
> > > > This check doesn't seem to be needed, generate_ether_addr() already
> > > > returns -ENOSYS when this option is not enabled.
> > >
> > > Until we have LTO, I'd like to keep this in, so the function need not be called.
> > > In this instance, I find it is a less ugly alternative to have #ifdef and static inline..
> > >
> > > >> @@ -381,9 +419,16 @@ static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
> > > >>
> > > >>    if (!is_valid_ether_addr(edev->ethaddr)) {
> > > >>            char str[sizeof("xx:xx:xx:xx:xx:xx")];
> > > >> -          random_ether_addr(edev->ethaddr);
> > > >> +
> > > >> +          ret = generate_ether_addr(edev->ethaddr, edev->dev.id);
> > > >
> > > > For most network devices we won't get here because of_populate_ethaddr()
> > > > will already have done it for us. It's only used for devices that are
> > > > probed after postenvironment_initcall(), namely USB devices.
> > >
> > > Or those that don't have CONFIG_NET_ETHADDR_FROM_MACHINE_ID enabled
> > > or don't have a machine ID set.
> > >
> > > > I think this deserves a cleanup before we merge this. The original
> > > > reason to introduce a postenvironment_initcall() for getting the MAC
> > > > address from nvmem was:
> > > >
> > > >> We do this in a very late initcall, because we don't want to enforce a
> > > >> probe a probe order between nvmem providers and network devices. We
> > > >> can't do it at randomization time, because we need to fixup Ethernet mac
> > > >> addresses, even when barebox itself doesn't ifup the netdev.
> > > >
> > > > I think we should have one centralized function that retrieves the MAC
> > > > address for an ethernet device. That should be called when we actually
> > > > need that MAC address, so once in net_new() and once at of_fixup time.
> > > >
> > > > Right now the behaviour is inconsistent with regard to random MAC
> > > > addresses. Currently we propagate the random MAC address to the Linux
> > > > device tree when we use ethernet in barebox, but we don't propagate it
> > > > when we do not use ethernet in barebox. We should decide what the
> > > > desired behaviour is and do it consistently regardless if we use
> > > > ethernet in barebox or not. This could be cleaned up along the way.
> > >
> > > Randomized MAC addresses are a necessary evil when barebox needs to do
> > > networking and doesn't have a stable address. If we have a stable address,
> > > we shouldn't randomize.
> > >
> > > Fixing up a randomized MAC address is a lesser evil than having different
> > > MAC addresses for barebox and Linux. If we don't need a MAC address in barebox,
> > > we shouldn't generate a random one just to fix it up.
> > >
> > > If we have a stable address, we should tell Linux about it.
> > >
> > > That's the logic of the current code and it's sensible to me. Why change it?
> >
> > Ok, makes sense. Let's go for it then.
> >
> > Sascha
> >
> > --
> > Pengutronix e.K.                           |                             |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


