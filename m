Delivery-date: Mon, 30 Jan 2023 19:44:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ8k-007tjX-8q
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 19:44:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ8h-0004d5-CD
	for lore@pengutronix.de; Mon, 30 Jan 2023 19:44:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ylJrKiGUroYS/cDHaV2sc99we6GC6MR1Q/ZrXkcuQ58=; b=k/YEG5E+0pW8z4xuTl6PztoSYI
	aWXqB4vrQtdLUmqU6y9M4tQ86zE7AwG7jDl28S3b9K4AWw4C6ZfJo1tgiQnRO+rWyS5uaN0WY1S0r
	nD1B5EpFtvXE/gmb0Uc8p8mVF1h6wykFTp6M+UCrfNjdxcC/Ht5X/V13QZrL+YmzPNnW9s09Cmhaw
	G75+qCSFy0jEm/LslFHYdG9PRYHSYmJhDxRh10yt3fO5a7myLdlllbGINb1ZEkewzVnLU57O+8Tm1
	DxxTu7b41pXB5h32Mn4hvTCSl/PiVNQ+MOfVNOfbirMzFusHmx9Df/XXkAe3ucC1IuftUn3T6R2YL
	aH0DZRXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMZ7S-0055Jn-30; Mon, 30 Jan 2023 18:43:06 +0000
Received: from out-112.mta0.migadu.com ([91.218.175.112])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMZ7M-0055JN-PU
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 18:43:02 +0000
Date: Tue, 31 Jan 2023 05:42:29 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675104172;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ylJrKiGUroYS/cDHaV2sc99we6GC6MR1Q/ZrXkcuQ58=;
	b=vuRGyeun3xIqeT9UgwDWFPPlPaGWXYxmTMyoRmgra+cZH3nTAFT8cOedx/cmPxJnX0r9bQ
	q39cmYqQypuUcY9bkAH4Vgc1ZF7J4A4dI1kF8LsPgXkMENzlnJAH885fDLhr67qL8Mb4j7
	hnURfEnSal0xrOHhi5gx12iWBj7ejt3+kqvD4l4oH21JCSgA6bCLM3MHWax91VY/mp4Cno
	UCxmKHp52T2TBv2FW0GDS2DPXTFBK/JWtgrMUbGTJAMOuwJnHMtzlzD8mtHKjuEef16oe6
	c43XVf1xvymuh/zkphKQ5PCAk5Fyw0O+UV/d0lxETY+2G7NVvLQo9j7HuNJVyw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9gPlWk6pCA6WnQ5@novena-choice-citizen>
References: <20230126185643.104049-1-contact@jookia.org>
 <20230130102727.GQ13319@pengutronix.de>
 <Y9efLdQi++e/ZFOn@novena-choice-citizen>
 <20230130121752.GR13319@pengutronix.de>
 <Y9e3F2WtTDWOhbE0@novena-choice-citizen>
 <20230130123142.GS13319@pengutronix.de>
 <Y9e+dKTG59Y0Kxhl@novena-choice-citizen>
 <20230130163658.GT13319@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130163658.GT13319@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_104301_565079_1C69AD55 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 30, 2023 at 05:36:58PM +0100, Sascha Hauer wrote:
> You can't disable MMU during runtime, but you can compile without MMU
> support, just disable CONFIG_MMU. However, the early I2C code already
> runs with MMU disabled, can't you just put in some test code there?

This is going to sound really silly but I'm not sure how to time the code
without a clock. I guess grabserial?

> 
> Sascha

John.


