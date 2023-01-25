Delivery-date: Wed, 25 Jan 2023 16:44:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKhwl-001e0T-Hb
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 16:44:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKhwi-00081X-TB
	for lore@pengutronix.de; Wed, 25 Jan 2023 16:44:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=POK+nex0ggCZQK3mkKj34cLDBFDGNSHSFI1/bXLhG5o=; b=MRK6/VFePVbi75SdnpDbAVu7h0
	+c/OH4Ygp5HuczcmmQn684vH+Nmh764IWI/GzAIy0AJoF81JKsUWt69hXWbjylPOkDrNTCfJR2b6K
	dKBxAX8RW+TXS6qoMDZm01lh/Qh3XhxTRhTF2nzHJ1eQjNQ5w2M/a7kL+D0eqSltNVnM8X+uCy++I
	vDCoNngVbQ4DUUrlKD+NF25lOlrMCQPlUEnrxpt05MF7PAX6r4Zan9RH1zMxX+9O6N8jqqP8bRE2J
	VV5DZo4+JjtrCSMyNXfbXHF7dm+e4hRXyt16nSkSJdRQZDTOzMWmzpjJK2K6LXOfbhOFz7wUYgLOd
	siBITlhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKhvV-007qmk-LL; Wed, 25 Jan 2023 15:43:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKhvR-007qm3-1V
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 15:43:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKhvO-0007t8-U6; Wed, 25 Jan 2023 16:42:58 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKhvO-0004r5-6x; Wed, 25 Jan 2023 16:42:58 +0100
Date: Wed, 25 Jan 2023 16:42:58 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230125154258.GC13319@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230122175141.119834-5-contact@jookia.org>
 <20230123093305.GS24755@pengutronix.de>
 <Y9AlCQieCBIEOjs5@novena-choice-citizen>
 <20230125080406.GW24755@pengutronix.de>
 <Y9DkOI1yxte95PYg@novena-choice-citizen>
 <20230125081923.GY24755@pengutronix.de>
 <Y9EvGHjLUX1ykAxU@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9EvGHjLUX1ykAxU@novena-choice-citizen>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_074301_096392_0C1F848F 
X-CRM114-Status: GOOD (  25.83  )
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
Subject: Re: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jan 26, 2023 at 12:31:04AM +1100, John Watts wrote:
> On Wed, Jan 25, 2023 at 09:19:23AM +0100, Sascha Hauer wrote:
> > Yes, normally it should be set up already, unless of course there is
> > some needed pinctrl configuration in an unrelated device tree node.
> > 
> > Sascha
> 
> Hi Sascha,
> 
> Here's what I think is going on:
> 
> - The I2C line requires 3v3_DELAYED for pull-ups
> - The EEPROM requires 3v3_DELAYED for power
> - 3v3_DELAYED requires VGEN5 from the PMIC (acts as a gate)
> - The PMIC is loaded after the EEPROM
> 
> Most things on the board require these delayed rails, so I'm wondering
> what the approach should be here. Should I:
> 
> - Rewrite the device tree to reference these delayed rails
> - Probe the PMIC first

The barebox PFUZE PMIC driver is not a real regulator driver it's just a
no-op driver providing a regmap, so by definition it is not guilty.

My wild guess is that regulator-audio-codec needs to be enabled to let
the EEPROM work. The Audio codec sits on the same I2C bus as the EEPROM
and it could be that the codec just pulls the I2C data line low when
it's not powered up.

You could verify this by doing a

gpio_direction_output 156 0

on the command line and then try to read from the EEPROM. It sould fail
and start working again after a

gpio_direction_output 156 1

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


