Delivery-date: Mon, 30 Jan 2023 18:59:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYQt-007rNE-CB
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 18:59:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYQq-0004Ap-GS
	for lore@pengutronix.de; Mon, 30 Jan 2023 18:59:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y8OJTiXc4uUj+FHK/FomAVOaLLqtgjCjRxFCoAAF2co=; b=nzIjmKwtKqTSKlklPc9BYJO7G7
	suJ+uhNaVAARQFKoYaZEcpcBV6imXIQHwy4tnKSL1DnR784gJULsYXtTd1l63ys2fIDgvCZ5kZ14/
	pY0jpBfwrrj2aQ8yB9KX8ROBD+/kAL/9LtoH5Qp87YC2wtimqFiZbD2f1Mjaus71g+YugxIV6XwNT
	agteiLOIKO8QcODT0TUpJVE17jZdNmWkdEvmQXTC6Aa2o6U/62hcTIPk1XtxNxdqR3qWz7/+kz85g
	JY2iWwn7sVX3586Pxl7tMTgqnCFoF0oc/0GQJ2MUtwHmGFEDnhPX6iEFst52m8Kr1b6Vvfh4gByhx
	yEtt0SOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMTk3-003Zmq-5E; Mon, 30 Jan 2023 12:58:35 +0000
Received: from out-198.mta0.migadu.com ([2001:41d0:1004:224b::c6])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMTiK-003ZSL-54
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 12:56:50 +0000
Date: Mon, 30 Jan 2023 23:56:20 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675083404;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=y8OJTiXc4uUj+FHK/FomAVOaLLqtgjCjRxFCoAAF2co=;
	b=NQSpk9gUyKQmL2w+KfQp8IHLK+0V4O2AfsrBrSz3SILHoNQKfMyAOASsgxzvOy1g7jh30F
	vvCUGUay8W0QCovUlRuc10hcldBsJfrZBHwlMI4BPIachHg+NC7IkREASpeREUWHXaVq0t
	rkZTdHH17H21DnlYVU0rOt1x18Szhocgp+IHB8ZIFour3qG7/YpPQHtBEpog7AP9WREHfx
	OsB6Kd6rsEcFYfCS1tNOcdtI0QH5p4MrwLqSL8n0XHnIFhiNtNLzL+rWFtkA0o9OAw2p25
	B8HBlhntLUeLiZ2COyFZ51FEpEVbjFdbv1s8uK1HuJAF5qJu3Oq0y6ESoGL3ew==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9e+dKTG59Y0Kxhl@novena-choice-citizen>
References: <20230126185643.104049-1-contact@jookia.org>
 <20230130102727.GQ13319@pengutronix.de>
 <Y9efLdQi++e/ZFOn@novena-choice-citizen>
 <20230130121752.GR13319@pengutronix.de>
 <Y9e3F2WtTDWOhbE0@novena-choice-citizen>
 <20230130123142.GS13319@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130123142.GS13319@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_045649_055881_0F38C844 
X-CRM114-Status: GOOD (  13.63  )
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

On Mon, Jan 30, 2023 at 01:31:42PM +0100, Sascha Hauer wrote:
> As said, the code is also for other i.MX SoCs, so a fixed base address
> won't do it. You would first have to detect the SoC type, but we can
> only get this from the device tree.
> 
> I'm afraid there is no good solution for this problem, at least we
> haven't found any over the years.
> 
> Sascha

Oh right, because Barebox does multi-image builds. That is an unsatisfying
problem but it makes sense.

So for this patch I imagine I should just take the udelay you've written,
use the I2C registers as the base address and just poke around for a while?

I'm still unsure on how to test this- can I just disable the MMU and dcache
in board.c and do some prints with some type of timer?

John.


