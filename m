Delivery-date: Thu, 26 Jan 2023 09:08:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxIt-002Sgx-UU
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 09:08:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxIr-0002kZ-Da
	for lore@pengutronix.de; Thu, 26 Jan 2023 09:08:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yPu+Xv9VIGvo7Wc+qa0te0OwvGI6hxpzlNJBvXvh9Ds=; b=tT+E/dbij0NdaKW2X9valRjc1m
	XU4mQ/73m7icB+vF28Fuf0Uk5qpIkt+xp/NhkVOlU0HM4W0YDK7acU9q9XBcsSsRwXHP9cVpv1CQ5
	nOPjxzRjbIQmtYwK3RSBsaqY9uk17RSI9cseasFA9SCx8XeAqlUceTHpEOeQ124LcOYqe0n4ZxUQE
	KBcOYX7p3XwE2qt98Qqe8CeO08NYm4LZWM3D2KaEqP+IMmour8fRPtFRPdJPqBXmjBXUbqlbYt3E7
	uRE0HUAONqi9fWRQKHvbzXLyzrEALZVhvshoJCQq2k1L3HS4YNBoMhWRN3Zk+qVzzZpI/Rbv2ZlCD
	uGDDUcOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxHO-009wVU-BL; Thu, 26 Jan 2023 08:06:42 +0000
Received: from out2.migadu.com ([2001:41d0:2:aacc::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxH9-009wSO-Ei
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 08:06:29 +0000
Date: Thu, 26 Jan 2023 19:05:54 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674720385;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yPu+Xv9VIGvo7Wc+qa0te0OwvGI6hxpzlNJBvXvh9Ds=;
	b=w6IXgQXh8z4Ts+txT56nMQMxmhiTr7xdWswUBsXp1EzLfk1+h99vT4DkqdpjHFql8E7L8x
	WlUDpLr0tASmWsmoaKukW6+gZt5QX1+OmbbBWV/89cbp0xWMewl1EH2aEkPYhy5KyfZ2uL
	lPP90KMZuacqvKMU7iZcUsL06G6gqegcVW6QN0qWMlKRq0oVf1Z2rfB1v6n0qQOoc3lo9+
	UzimGUGstcLeWzxk3/QgopZACAzctTAj11eKVl+WN/2FF1B1qv0v7/x4i/kaooH9G3+Jl5
	1MZBzBZ1X0ZPPW0YelvM2BiVdo7q10+ipMt/PcvxHlWhTyprd5qbI8oHQD7GYA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9I0YqYY2ocvAsmk@novena-choice-citizen>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230125164230.2328043-4-contact@jookia.org>
 <20230125200714.cxpg572weivxjeam@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125200714.cxpg572weivxjeam@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_000628_404570_F6F8CCA8 
X-CRM114-Status: GOOD (  22.46  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/4] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 09:07:14PM +0100, Marco Felsch wrote:
> > +	rc = read_file_2("/dev/eeprom0", &read, &eeprom, max);
> 
> You never free the eeprom buffer.

Argh, I explicitly remember writing down that I need to do this then promptly
got distracted when searching for the correct free function to use.

> > +
> > +	if (rc < 0 && rc != -EFBIG) {
> > +		pr_err("Unable to read Novena EEPROM: %s\n", strerror(-rc));
> > +		return NULL;
> > +	} else if (read != max) {
> > +		pr_err("Short read from Novena EEPROM?\n");
> > +		return NULL;
> > +	} else {
> > +		return eeprom;
> > +	}
> 
> Last else can be dropped and instad:
> 
> 	return eeprom;
> > +}

Okay.

> > +
> > +static bool novena_check_eeprom(struct novena_eeprom *eeprom)
> > +{
> > +	char *sig = eeprom->signature;
> > +	size_t size = sizeof(eeprom->signature);
> > +
> > +	if (memcmp("Novena", sig, size) != 0) {
> > +		pr_err("Unknown Novena EEPROM signature\n");
> > +		return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> > +static void novena_set_mac(struct novena_eeprom *eeprom)
> > +{
> > +	struct device_node *dnode;
> > +
> > +	dnode = of_find_node_by_alias(of_get_root_node(), "ethernet0");
> > +	if (dnode)
> > +		of_eth_register_ethaddr(dnode, eeprom->mac);
> > +	else
> > +		pr_err("Unable to find ethernet node\n");
> > +}
> > +
> > +static void novena_try_eeprom(void)
> > +{
> > +	struct novena_eeprom *eeprom = novena_read_eeprom();
> > +
> > +	if (!eeprom || !novena_check_eeprom(eeprom))
> > +		return;
> > +
> > +	novena_set_mac(eeprom);
> > +}
> >  
> >  static int novena_probe(struct device *dev)
> >  {
> > +	novena_try_eeprom();
> 
> It's not wrong to move it into a sub-function but IMO at least this
> function can be part of the probe() function. Also I would do the
> device_ensured_probe function here and just have one function which I
> would call: novena_set_mac(). This way it's a bit easier to follow the
> code. But that's just my oppinion.

I'm not quite sure what you mean, could you provide an example?

> > +	eeprom: eeprom@56 {
> > +		compatible = "24c512";
> > +		reg = <0x56>;
> > +		pagesize = <128>;
> > +		status = "okay";
> 
> status can be dropped, "okay" is the default for the dtc.

Gotcha.

> 
> Regards,
>   Marco

John.


