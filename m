Delivery-date: Wed, 25 Jan 2023 17:17:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKiTF-001fkm-5g
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 17:17:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKiTC-00046D-EA
	for lore@pengutronix.de; Wed, 25 Jan 2023 17:17:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tE+1S6mlsR3CKf7lSY166aA8vgVvi/DkONZ5IXWBjxQ=; b=m90CRBrl6OhPBQPHcbXaLMuWsU
	NFsGD+2WtCDVXBYxwhR8BYW+QUlF33LgjF6xUqMgMGG5tySPIpMD3UOWGzeveppugWdtBPFj4UTkn
	MNxjaaSlnhRj54F8ApI5rrBpg/K+E2d00fCrsqQ3WbHOlh7WtxxaOb0N2I+/CDLzQzXvmsgmPQbB0
	F8WiicQHof3DPaYiEl6tQsIcqd9kRBK1xBm9mIoO1Ik5N6UQ8Q43xm0yc/rrrID9Q4wF+ed10o3Qp
	FN5/hHHWKlVNIE7LZ4cmjl+aGYURQal1aD6V4k3rMMfwqDHz3vJyZ8k6AeBxd+Cdo/Ur2JS3zu8K8
	5iKjJvWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKiRl-007vl0-SA; Wed, 25 Jan 2023 16:16:25 +0000
Received: from out0.migadu.com ([94.23.1.103])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKiRg-007vkC-Mu
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 16:16:22 +0000
Date: Thu, 26 Jan 2023 03:13:29 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674663375;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tE+1S6mlsR3CKf7lSY166aA8vgVvi/DkONZ5IXWBjxQ=;
	b=pTb2/jKqA/lQcAJn2KL9bMPQY5+1hyrsKvNfzs9xa8OXuOSiFRK1FS+wZqbpvvjvfatEFQ
	bEm8KsCffl7r2pZN4cQGSNkja7RUUhrpVDdnlccXHao6f0pt1VGvr5Zdo4gfbPq/9vZjhq
	CoYFG94LzpQ0u6VfnVOcby+B7QnFt34GO4k0w0xPinwY1p6oh9ed0pPunXkD4NWJcp/BcV
	udO3ekA9iRIYAluIO1AjcMkiMrT0OHrLy2k4h1lKL7w12gPa7l4bdwKkiOl5q2G7V2jAIx
	YzkL8Jh2iLHhcbxJ2Ut6noOjRDQC4Eq3Y6svMbv5oI98euZSoUMdW/Qfffm1bg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9FVKXAccKOQCE/O@novena-choice-citizen>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230122175141.119834-5-contact@jookia.org>
 <20230123093305.GS24755@pengutronix.de>
 <Y9AlCQieCBIEOjs5@novena-choice-citizen>
 <20230125080406.GW24755@pengutronix.de>
 <Y9DkOI1yxte95PYg@novena-choice-citizen>
 <20230125081923.GY24755@pengutronix.de>
 <Y9EvGHjLUX1ykAxU@novena-choice-citizen>
 <20230125154258.GC13319@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125154258.GC13319@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_081621_490633_5DB01A73 
X-CRM114-Status: GOOD (  17.51  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 04:42:58PM +0100, Sascha Hauer wrote:
> The barebox PFUZE PMIC driver is not a real regulator driver it's just a
> no-op driver providing a regmap, so by definition it is not guilty.
> 
> My wild guess is that regulator-audio-codec needs to be enabled to let
> the EEPROM work. The Audio codec sits on the same I2C bus as the EEPROM
> and it could be that the codec just pulls the I2C data line low when
> it's not powered up.

Hi Sascha,

I was ignoring my email and troubleshooting further and figured out that
the PMIC driver was a no-op and that for some reason I did need the audio
regulator enabled, but I wasn't sure why.

This makes total sense though.

> 
> You could verify this by doing a
> 
> gpio_direction_output 156 0
> 
> on the command line and then try to read from the EEPROM. It sould fail
> and start working again after a
> 
> gpio_direction_output 156 1

I confirm this was the issue with GPIO 145.

> 
> Sascha

Thanks so much. I'll submit V2 of the Novena patches soon.

John.


