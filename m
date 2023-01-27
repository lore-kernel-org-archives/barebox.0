Delivery-date: Fri, 27 Jan 2023 10:03:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pLKdh-003jB2-Tr
	for lore@lore.pengutronix.de; Fri, 27 Jan 2023 10:03:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pLKde-0004iR-0R
	for lore@pengutronix.de; Fri, 27 Jan 2023 10:03:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mHlWr7hQSt7H3vOrYqsF1ruPnaqraAwpJXoVFuszuI4=; b=L3quKkOEU7WtjS4DhZJnjp5Jbo
	hgygWq4ZULRsemr07iyx4LFns3EhOUs2W6WN3mk6sRiYpD+CkT99MG15UvJYNDlkLW9DUbIcGlZZt
	sIAYgxJH3OHQ6MIbbrA7+yx/LCcTaQ/v2WRaa2t8ED6HgeIqRSTv3RMMTIjzoVD7ftFwQjCKY4bIu
	0LAW5JN2hSchCCjb/M1bQU3kuIqC6ZKo9FcFT2/3dobceFwRRyxHzQwgtCIyU6v9JbWmk6FAdP4Is
	udlHyyUIRQOjYj55Fj6fDnv9zy2INS/7STUldJwC8baTcLmyOMLXYQPAG0qUvun3u90thu7L22YgR
	TfWzw8eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLKcD-00DZs7-H9; Fri, 27 Jan 2023 09:01:45 +0000
Received: from out2.migadu.com ([188.165.223.204])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLKc7-00DZrA-CH
	for barebox@lists.infradead.org; Fri, 27 Jan 2023 09:01:42 +0000
Date: Fri, 27 Jan 2023 19:56:42 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674810090;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mHlWr7hQSt7H3vOrYqsF1ruPnaqraAwpJXoVFuszuI4=;
	b=kcGixeZyjNTK0pmLah1WKy7iBEQe4GiGXfNyDoOTOos+j1T9ciQknqlO7S6X0bHnQ+9URT
	zDI5s2FYEOZ4sU/UmR9RUr0fkb0izWlqoFLR7yndzSsQQ4yBPpyB5OTYxyI917IL2CYxcI
	duorAhUoclivL1Gk6UPo+Jy5HuhByBaXVr5cD3y1HHi7M2h4yOSQH0IfHHhCtPu1Fa3vCm
	BAKqljyfh2yaY7p6QjmASm1ut4cMLOB3tX3pWlZYZpXRpNddDgw1S6Ji5ihEmHB19iua5g
	nNicjdCKsh2CdVFBy7V0JKvhH7NFYUUfak9ltcVuLDE6NbUvtO2w7YWDRSkEag==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9ORygZa/PBo2ucN@novena-choice-citizen>
References: <20230126183624.85500-1-contact@jookia.org>
 <20230126190258.110423-1-contact@jookia.org>
 <20230127080633.5f2g46g3j6j7wcpm@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230127080633.5f2g46g3j6j7wcpm@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_010140_740851_7D5D640F 
X-CRM114-Status: GOOD (  13.47  )
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
Subject: Re: [PATCH v2] ARM: i.MX6: Specify OCRAM base address and size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 27, 2023 at 09:06:33AM +0100, Marco Felsch wrote:
> Hi John,
> 
> On 23-01-27, John Watts wrote:
> > The i.MX6 includes some on-chip RAM: 128KiB on most variants, with 256KiB on
> > the Dual and Quad variants.
> > 
> > This region is where the first stage of Barebox gets loaded if RAM
> > initialization isn't hard coded using DCD information.
> > 
> > Add the base address and size so it can be used to calculate where to put the
> > stack at boot.
> > 
> > Signed-off-by: John Watts <contact@jookia.org>
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Do I add that to a V3? :)
Should I add the review stuff to my Novena patches too?

John.


