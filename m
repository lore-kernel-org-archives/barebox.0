Delivery-date: Fri, 06 Oct 2023 14:00:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qojVN-008O1C-EA
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 14:00:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qojVL-0006mx-Qw
	for lore@pengutronix.de; Fri, 06 Oct 2023 14:00:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vx/qVAryx8RAgJXymiC404QVzCzxeEMt0yZSyYjb3cc=; b=fP/tfFeVEhdgJFrDBuilrVkQv3
	Scv7kaoGwMjCU0WwDDJMXN9Ib+lagYoR/yZ4NAW6+GPOIyqmjg/FCJ4NJ4PGQiFduylhnAN7TgO2Y
	JeuAesKCxIsz9nInUMmR34w6tiyWMtuKmg97xPkZbh6/lTRGPZatWWkqGKo/GcDzmOjfMl5zusvmC
	ewp5qV+RhQ8/K49vpfGLtdzRanXFBwmgri7dHsCRBy/aH/omL452rRWH0nyulzCbLlE6o88E1wtIo
	RoS5AuDkHqkD/Di2Pkt+tI4p0h0djTQ5R/gp/SaqSkAJDrkWWtSh8DyWkOfBhFrDbznMPdtkwPNYa
	Qs4hx2bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qojUA-005jYF-1A;
	Fri, 06 Oct 2023 11:59:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qojU6-005jXZ-1Z
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 11:59:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qojU5-0006Vi-6K; Fri, 06 Oct 2023 13:59:09 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qojU4-00BVNO-Q5; Fri, 06 Oct 2023 13:59:08 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qojU4-00D4HH-NZ; Fri, 06 Oct 2023 13:59:08 +0200
Date: Fri, 6 Oct 2023 13:59:08 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <20231006115908.GH235829@pengutronix.de>
References: <20230911155927.3786335-1-a.fatoum@pengutronix.de>
 <20230911155927.3786335-3-a.fatoum@pengutronix.de>
 <20230912104903.GA637806@pengutronix.de>
 <87e96b20-ae2c-9679-29e4-1c54ee24948a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87e96b20-ae2c-9679-29e4-1c54ee24948a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_045910_523972_617E4EBE 
X-CRM114-Status: GOOD (  49.46  )
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

On Tue, Sep 12, 2023 at 02:34:28PM +0200, Ahmad Fatoum wrote:
> Hi Sascha,
> 
> On 12.09.23 12:49, Sascha Hauer wrote:
> > On Mon, Sep 11, 2023 at 05:59:27PM +0200, Ahmad Fatoum wrote:
> >> From: Ahmad Fatoum <ahmad@a3f.at>
> >>
> >> Especially during development, devices often lack a MAC address. While a
> >> MAC address can be easily added to the environment:
> >>
> >>   nv dev.eth0.ethaddr="aa:bb:cc:dd:ee:ff"
> >>
> >> It's easily lost when flashing complete new images, e.g. from CI.
> >> Make the development experience neater by deriving a stable MAC address
> >> if possible.
> > 
> > I like this, because my Fritzbox network overview is full of duplicate
> > entries coming from boards with random MAC addresses.
> 
> Glad you like it. If you are ok with the first two patches, can you take
> those until I respin this?
> 
> > 
> > 
> >> @@ -558,6 +559,7 @@ static int of_populate_ethaddr(void)
> > 
> > This function should be renamed. When reviewing this patch I asked
> > myself why you limit generating a fixed MAC address to the DT case until
> > I realized that you actually don't. I was just confused by the function
> > name.
> 
> Ah, didn't notice that. Will rename.
> 
> > 
> >>  {
> >>  	char str[sizeof("xx:xx:xx:xx:xx:xx")];
> >>  	struct eth_device *edev;
> >> +	bool generated = false;
> >>  	int ret;
> >>  
> >>  	list_for_each_entry(edev, &netdev_list, list) {
> >> @@ -566,11 +568,18 @@ static int of_populate_ethaddr(void)
> >>  
> >>  		ret = of_get_mac_addr_nvmem(edev->parent->of_node,
> >>  					    edev->ethaddr);
> >> +		if (ret && IS_ENABLED(CONFIG_NET_ETHADDR_FROM_MACHINE_ID)) {
> > 
> > This check doesn't seem to be needed, generate_ether_addr() already
> > returns -ENOSYS when this option is not enabled.
> 
> Until we have LTO, I'd like to keep this in, so the function need not be called.
> In this instance, I find it is a less ugly alternative to have #ifdef and static inline..
> 
> >> @@ -381,9 +419,16 @@ static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
> >>  
> >>  	if (!is_valid_ether_addr(edev->ethaddr)) {
> >>  		char str[sizeof("xx:xx:xx:xx:xx:xx")];
> >> -		random_ether_addr(edev->ethaddr);
> >> +
> >> +		ret = generate_ether_addr(edev->ethaddr, edev->dev.id);
> > 
> > For most network devices we won't get here because of_populate_ethaddr()
> > will already have done it for us. It's only used for devices that are
> > probed after postenvironment_initcall(), namely USB devices.
> 
> Or those that don't have CONFIG_NET_ETHADDR_FROM_MACHINE_ID enabled
> or don't have a machine ID set.
> 
> > I think this deserves a cleanup before we merge this. The original
> > reason to introduce a postenvironment_initcall() for getting the MAC
> > address from nvmem was:
> > 
> >> We do this in a very late initcall, because we don't want to enforce a
> >> probe a probe order between nvmem providers and network devices. We
> >> can't do it at randomization time, because we need to fixup Ethernet mac
> >> addresses, even when barebox itself doesn't ifup the netdev.
> > 
> > I think we should have one centralized function that retrieves the MAC
> > address for an ethernet device. That should be called when we actually
> > need that MAC address, so once in net_new() and once at of_fixup time.
> > 
> > Right now the behaviour is inconsistent with regard to random MAC
> > addresses. Currently we propagate the random MAC address to the Linux
> > device tree when we use ethernet in barebox, but we don't propagate it
> > when we do not use ethernet in barebox. We should decide what the
> > desired behaviour is and do it consistently regardless if we use
> > ethernet in barebox or not. This could be cleaned up along the way.
> 
> Randomized MAC addresses are a necessary evil when barebox needs to do
> networking and doesn't have a stable address. If we have a stable address,
> we shouldn't randomize.
> 
> Fixing up a randomized MAC address is a lesser evil than having different
> MAC addresses for barebox and Linux. If we don't need a MAC address in barebox,
> we shouldn't generate a random one just to fix it up.
> 
> If we have a stable address, we should tell Linux about it.
> 
> That's the logic of the current code and it's sensible to me. Why change it?

Ok, makes sense. Let's go for it then.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


