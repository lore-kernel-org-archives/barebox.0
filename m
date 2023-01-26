Delivery-date: Thu, 26 Jan 2023 10:09:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKyG5-002WXn-6z
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 10:09:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKyG2-0004pq-Al
	for lore@pengutronix.de; Thu, 26 Jan 2023 10:09:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cOiXe0SX9dOcnXLaTZX5pmKWwWNi9MMRLkD7uafQHm0=; b=ArA3CGDn5tz8AyGbjCrftzjclZ
	pUuqzEFlW39zOznGnFnfFYcytmr2eo6BR0z7uwK3xJXuMAlr97Cyt+JGrgX0r+V41VAw4/mhAcVGs
	BN5m6P0cByrorjqdvK4mO5LNDBpqsPgrvZpmXseRdT13344lTDAK8Ni7sC/8GcomeQEGKgxxDCF2Z
	ZaLjjWHpt4lIIGUT3BYt5Gh7WF1PI8dVXKrh3KXLv0/SmOKe6LGGAqGumF6qg74/v0VYlIg2tRTci
	G+PEsKIkfkj5DAi4dShkUvDAiXz76ty+OgNLphRN4kEt3ax+mI+qAfjPq1OkDjK0TwKu9gNev/7jk
	V1JlzElw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKyEc-00AEUv-1j; Thu, 26 Jan 2023 09:07:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKyEV-00AET9-Vc
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 09:07:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKyEU-0004R0-FX; Thu, 26 Jan 2023 10:07:46 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKyET-00082H-7n; Thu, 26 Jan 2023 10:07:45 +0100
Date: Thu, 26 Jan 2023 10:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230126090745.rpgjxltmhvw4jod5@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230125164230.2328043-4-contact@jookia.org>
 <20230125200714.cxpg572weivxjeam@pengutronix.de>
 <Y9I0YqYY2ocvAsmk@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9I0YqYY2ocvAsmk@novena-choice-citizen>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_010748_033416_3B7A6687 
X-CRM114-Status: GOOD (  22.80  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/4] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi John,

On 23-01-26, John Watts wrote:
> On Wed, Jan 25, 2023 at 09:07:14PM +0100, Marco Felsch wrote:
> > > +	rc = read_file_2("/dev/eeprom0", &read, &eeprom, max);
> > 
> > You never free the eeprom buffer.
> 
> Argh, I explicitly remember writing down that I need to do this then promptly
> got distracted when searching for the correct free function to use.
> 
> > > +
> > > +	if (rc < 0 && rc != -EFBIG) {
> > > +		pr_err("Unable to read Novena EEPROM: %s\n", strerror(-rc));
> > > +		return NULL;

...

> > >  static int novena_probe(struct device *dev)
> > >  {
> > > +	novena_try_eeprom();
> > 
> > It's not wrong to move it into a sub-function but IMO at least this
> > function can be part of the probe() function. Also I would do the
> > device_ensured_probe function here and just have one function which I
> > would call: novena_set_mac(). This way it's a bit easier to follow the
> > code. But that's just my oppinion.
> 
> I'm not quite sure what you mean, could you provide an example?

I meant that the content of novena_try_eeprom() can be part of the
probe() function :) Furthermore I mean that having to much sub-functions
isn't really helpful, but that is just my oppinion.

Regards,
  Marco


