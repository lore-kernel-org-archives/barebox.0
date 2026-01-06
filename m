Delivery-date: Tue, 06 Jan 2026 14:23:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd724-001uFP-12
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:23:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd723-0007Iq-Mk
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:23:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hh14vuKtx7ZGI7I6MH0UbYnGyZtzV24o55pkUH9u9GI=; b=e+nDWquo2ODjpf9bZtTL49L1+N
	hlioq31dmKHy6qqOTJvsKKL5elGAT3Zh4cJLh5LY/NjXOaTtikv4c7+nJy7tDvQgFZDYX7alYp2T6
	+tk+hV2aNyiPM/ELNN5RQJg0SfhLExGi8QDvdRCp6rV54NAeHuoJqzUnS1frmHN+FGZ8IR8y4X9US
	/l38j75MbcHuFvxVPEPaYZbTfkLP383Hm8pcFfJStq83fLK4rrC+wj/OBPcgYZyHXkeYp45PrmiBP
	PlctuqIpCIpA3BVjK+0nMbAGq3NBQoPapUmcseooXVth3QULNIGnx7KJt1MKieODc6Fx320IHT93V
	58Mdd2+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd71e-0000000D5ST-28mr;
	Tue, 06 Jan 2026 13:23:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd71a-0000000D5P1-2j1S
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:23:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd71Z-0007Cy-0V; Tue, 06 Jan 2026 14:23:01 +0100
Message-ID: <356d55af-0ab2-4c4a-b022-4aea10537460@pengutronix.de>
Date: Tue, 6 Jan 2026 14:23:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <aVzVyOKQ-mc4LLBd@hephaistos>
 <20260106095253.souvmkzvzufrkecv@pengutronix.de>
 <aVzgGHbZipXS7kWr@hephaistos>
 <e31c674b-8d63-42bc-bd54-bcb9c7b5b92d@pengutronix.de>
 <aV0JsI7NisQ3gans@hephaistos>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aV0JsI7NisQ3gans@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_052302_824589_8E30271E 
X-CRM114-Status: GOOD (  23.17  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Yocto migration meta-barebox -> walnascar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 2:10 PM, Konstantin Kletschke wrote:
> Hello Ahmad!
> 
> On Tue, Jan 06, 2026 at 12:33:21PM +0100, Ahmad Fatoum wrote:
> 
>> When enabled, the same barebox build generates two images:
>> barebox-am33xx-beaglebone-mlo.mmc.img -> MLO
>> barebox-am33xx-beaglebone.img -> barebox.bin
>>
>> Both are placed in the VFAT.
> 
> I do not necessaryly need two images, if booting is now done with a
> combined one, which is new, if I understood this correct.

There must be a separate MLO image that is small enough to fit into
SRAM. So you still need two images, the only difference is if you build
barebox twice with two different configs or build it only once.

Both are possible, you just need to adapt your recipe(s) accordingly.
For you old way of doing things, you need two recipes, each with its own
config.
> In my images deploy dir the following images showed up after my
> migration to walnascar away from the meta-barebox layer which is not
> used anymore.
> 
> barebox-am33xx-afi-gf.img
> barebox-am33xx-baltos.img
> barebox-am33xx-beaglebone.img
> barebox-am33xx-myirtech.img
> barebox-am33xx-phytec-phycard.img
> barebox-am33xx-phytec-phycore-emmc.img
> barebox-am33xx-phytec-phycore-no-eeprom.img
> barebox-am33xx-phytec-phycore-no-spi-no-eeprom.img
> barebox-am33xx-phytec-phycore-no-spi.img
> barebox-am33xx-phytec-phycore.img
> barebox-am33xx-phytec-phyflex-no-eeprom.img
> barebox-am33xx-phytec-phyflex-no-spi-no-eeprom.img
> barebox-am33xx-phytec-phyflex-no-spi.img
> barebox-am33xx-phytec-phyflex.img
> barebox-am35xx-pfc-750-820x.img
> barebox-beagleboard.img
> barebox-dt-2nd.img

These are all second stage barebox images (barebox.bin).
To use the MLO as you did before, you need a second recipe where you
build am335x_mlo_defconfig or w/e your config is.


> And that is, when I wondered myself, if - in our case - barebox-am33xx-beaglebone.img
> is going to be named MLO and put into the vfat boot partition or if I
> have something missing or done wrong, which is absolutely possible, of
> course!

The MLO files have mlo in their name.

> So, no *mlo* file.
> 
>> For your old setup, you will need two recipes. Just define your own
>> barebox.bb and barebox-pbl.bb recipes and inherit barebox in each and
>> use different configs. All the core logic is in a barebox.bbclass to
>> allow you to easily create your own recipes.
> 
> So only using this approach with two barebox.bb and barebox-pbl.bb I
> would get an additional *mlo* file, right?
> As said, if I can omit this approach this is fine by me.

Given that eMMC doesn't work yet for the approach with a single recipe,
I'd suggest you just add two recipes for now.

Cheers,
Ahmad

> 
> Regards
> Konsti
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



