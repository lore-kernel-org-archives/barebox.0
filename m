Delivery-date: Fri, 09 Dec 2022 08:01:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3XO5-00Fl2V-Jj
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 08:01:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3XO5-000472-92
	for lore@pengutronix.de; Fri, 09 Dec 2022 08:01:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MnSFEXnH9CjiIE7oHrajwsuhfVu+CpCM4wEVRTd1fIc=; b=sygWFQxjH4uTPTeX7YXkKTKW/g
	O2X+2y4kJJxz5C0ct+5wWjqjhsehbrJlLL8AU9X2016n2W7v9ULgntrLgwC5wJQjU/3A9e/8hnr/C
	AVuLmFwjcl/km1sVH/OcILex3hEPcXOykmueQ4vo8ps3wb8rLK6+sRxXZS7EsQ8iFQTAsT4kobppG
	RaRBCnRKRy6JcMYcmCd7hfTXnWXPf+bi3NBBXBmAq2Yi8ppbjv4d7Dsli65ghJJQBHacMtstxMQVf
	Vei2vl2LGO2qY40viSH6+8bkdCHWv+JuLJ8/WwYFCVbZxY85jdD8onb+IdhBLblRDce2CiyKstf3x
	NKXfms5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3XMS-004otI-Mu; Fri, 09 Dec 2022 06:59:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3XMN-004op3-4R
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 06:59:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p3XMG-0003M0-5D; Fri, 09 Dec 2022 07:59:44 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p3XMF-0001ad-Od; Fri, 09 Dec 2022 07:59:43 +0100
Date: Fri, 9 Dec 2022 07:59:43 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221209065943.GF29728@pengutronix.de>
References: <20221207184634.140081-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221207184634.140081-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221208_225951_196369_D2034026 
X-CRM114-Status: GOOD (  16.86  )
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
Subject: Re: [PATCH master] nvmem: core: don't fail on positive callback
 value return
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Dec 07, 2022 at 07:46:34PM +0100, Ahmad Fatoum wrote:
> A sizable number of barebox NVMEM drivers returns a positive value of
> number of bytes read on success, while others return 0 unless an error
> occurred.
> 
> When we used to check for errors with IS_ERR_VALUE, both cases worked,
> because it wouldn't evaluate to true for positive numbers. Now with
> IS_ERR_VALUE removed, we need to explicitly check for negative values
> to determinte errors. Otherwise nvmem_cell_read becomes a death trap
> that returns values like (void *)2, which IS_ERR() won't catch and
> best case kfree() will crash on.

D'oh!

I copied this from the kernel and blindly assumed that the drivers
behave the same in barebox. I should have had a look.

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


