Delivery-date: Wed, 25 Jan 2023 14:33:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKftp-001XJc-46
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 14:33:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKftm-00039s-DD
	for lore@pengutronix.de; Wed, 25 Jan 2023 14:33:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ubikIccesOi9lUW7a547gfoLCUshGJrywJXDrL9DTLM=; b=1BY7KaHllwkBIDeYbIf6WkVVoQ
	x9ofnIguiFEyPvm208Hf3jlZGBt2mqMGZvN6T0BImoJE1YnCGMxyryQiGqEEK8t65TnsC0lkcS5n5
	Ng4ks8szRShDSaEtiitTsCck8/sZa6202QgrfOhZcLUdfKu4dEp77I1t8z/MnHcNl91JzXt3AD+j+
	bakyBf7ha2yxYLdShSyoqxU7xXFF81afAdMMrmPKW5T2E6XFlqyIKOT/7VMyuj0B+zDXjKM31FQSu
	zRDPvQz8/8DZ+pwnD4zDs9IVU5hwe931TnSxFqImAAM2smJGs6uqNxl8RMEhBXRKpsEfvW9PsZTaa
	XQQ5jItQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKfsM-007Oeu-EV; Wed, 25 Jan 2023 13:31:42 +0000
Received: from out0.migadu.com ([2001:41d0:2:267::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKfsF-007Odi-VG
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 13:31:38 +0000
Date: Thu, 26 Jan 2023 00:31:04 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674653491;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ubikIccesOi9lUW7a547gfoLCUshGJrywJXDrL9DTLM=;
	b=G/sSAavNdUtcB/W0jif/SL1y/nm0ZuiLyztBgHDytN9eO8wewHCQ11IFliVRVuJm/ubgzp
	JjIVGhEG/3sRcSk5W0Ym3HYHp/Iu0cfYfGspg5aViT4kgXz9cFdRITuxuEV8WnhamhiN8Y
	LUWCVNyaVQfci6DiNiFnzBcyhJWpDsR42gfYMIwx79ohyQa5Hx5wcXslwhVrFIp7qKaAge
	WqbG6rtjVxbnTjXwehRx2tmfteBwB+oPoaKudgxDjvvvxaY3/DH7tuYpw/oHyd4rgQl1wK
	Eo2Zj7iro7wg50kQyUJltqHgN5UOHp+CgHOqsiCtA2GoArn8/fEb/XIwVSpvvg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9EvGHjLUX1ykAxU@novena-choice-citizen>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230122175141.119834-5-contact@jookia.org>
 <20230123093305.GS24755@pengutronix.de>
 <Y9AlCQieCBIEOjs5@novena-choice-citizen>
 <20230125080406.GW24755@pengutronix.de>
 <Y9DkOI1yxte95PYg@novena-choice-citizen>
 <20230125081923.GY24755@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125081923.GY24755@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_053137_231199_708BF11B 
X-CRM114-Status: GOOD (  11.39  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 09:19:23AM +0100, Sascha Hauer wrote:
> Yes, normally it should be set up already, unless of course there is
> some needed pinctrl configuration in an unrelated device tree node.
> 
> Sascha

Hi Sascha,

Here's what I think is going on:

- The I2C line requires 3v3_DELAYED for pull-ups
- The EEPROM requires 3v3_DELAYED for power
- 3v3_DELAYED requires VGEN5 from the PMIC (acts as a gate)
- The PMIC is loaded after the EEPROM

Most things on the board require these delayed rails, so I'm wondering
what the approach should be here. Should I:

- Rewrite the device tree to reference these delayed rails
- Probe the PMIC first

I did try this:

	reg_3p3v: regulator-3p3v {
		compatible = "regulator-fixed";
		regulator-name = "3P3V_DELAYED";
		regulator-min-microvolt = <3300000>;
		regulator-max-microvolt = <3300000>;
		regulator-always-on;
		gate-supply = <&reg_vgen6>;
	};

But Barebox doesn't seem to see the 'regulator-always-on' as
'start immediately'. I actually updated the eeprom node to use
reg_3p3v as vcc-supply and things were still probed in the wrong order.

John.


