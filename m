Delivery-date: Tue, 28 Feb 2023 18:38:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX3wE-004sK2-DB
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 18:38:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX3wE-0003tM-BU
	for lore@pengutronix.de; Tue, 28 Feb 2023 18:38:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EaA4eSAjKy+WpzcH8tT4JmUZCGK1F4zNbjbB89twH5w=; b=XFfhwSKje4IgQlvAy4wU5V5gUC
	3bFTNJQg+UZxp+Y90GVbCglMDLGSC/WTwaV0QMzGR3dfRIykkZhLnvw4m3fAwsUaIY++QUvYCH8Ex
	ntoHyUNfCV0cm5OKeZdS3GstZFOXVDOLVAdjFC/abJGVAQWGzw2b73SLQEec1gdoMrKJPMcflQUJE
	BGUV6hLuzEMSpzdLVXGl9Sf/JKEzva9DOZyiDcF71ALkZQjR294vhuvcXDFuHEYPk6CyVXALbNDT9
	LqpPwgyOhFO4jnSGakYOtsdF3bN3K96fHTYgSZFpMQ9ivlyoo/w2ACDc+dcYeM04WO7rDXm0xGPPz
	LLODd2rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX3up-00Dtg3-44; Tue, 28 Feb 2023 17:37:27 +0000
Received: from mailrelay6-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:405::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX3uj-00Dtcd-A9
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 17:37:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=EaA4eSAjKy+WpzcH8tT4JmUZCGK1F4zNbjbB89twH5w=;
	b=bg+ExCvMR6YgfL72dhi0hQMlZ1x1CN41+j8vDuEx8K5/WB3YDWfEWSnkIIX+CwUaiNHT4UykstzpT
	 aacINc3KQkxlO9CCuzeRydN8vx4RUc+r5fPcKYNRGSoC4H1sFpVVtGRRiNUqii1tSpHp316OBqvpn4
	 tyeZbRDPtU0+G2la6jqutXIWIykSJPGxOOxgWwYeW9DDrtPDaColJYMMCVHGqyULkIYBkCCupDsxFm
	 FC9/JliyhClN1+Pm+ZePPmGjgwqprCdZCfjfKUN5UfR5Fd+QWhFkPFKlyEQfqfMc/zUFhaVConDhcJ
	 +7AGfKT9oyy42O0xWH/rUO+OR5w8cPQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=EaA4eSAjKy+WpzcH8tT4JmUZCGK1F4zNbjbB89twH5w=;
	b=K/sefISg5eAxTo14x6k9IgxTq0wMG/WkEzvRySfaWMVAjWR6GVpFN2q1BGWFP1suzYrIB7KCNPsCr
	 Hf3nKJyAw==
X-HalOne-ID: 8585f5ff-b78e-11ed-b607-cde5ad41a1dd
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay6 (Halon) with ESMTPSA
	id 8585f5ff-b78e-11ed-b607-cde5ad41a1dd;
	Tue, 28 Feb 2023 17:37:09 +0000 (UTC)
Date: Tue, 28 Feb 2023 18:37:08 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Y/47xKrQwNGDe2KU@ravnborg.org>
References: <20230228143031.1718565-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230228143031.1718565-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_093721_538670_989C9E7C 
X-CRM114-Status: GOOD (  16.39  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/9] ARM: misc cleanups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On Tue, Feb 28, 2023 at 03:30:22PM +0100, Sascha Hauer wrote:
> I am working on making it possible to build support for multiple
> arch/arm/mach-*/ into the same barebox. Here are some misc cleanups
> I stumbled upon while preparing multi arch support.
> 
> Sascha Hauer (9):
>   ARM: mxs: remove unused mach/clock.h
>   ARM: imx: remove unused mach/clock.h
>   ARM: rockchip: drop mach/timer.h
>   ARM: i.MX: Move imxfb.h to include/platform_data/
>   pinctrl: rockchip: Fix uninitialized var warning
>   ARM: at91: remove unnecessary configs
>   ARM: at91: Switch all boards to multiimage
>   at91: consolidate usb-a963 128m images
>   ARM: pxa: Move plat/ include files to mach/

As much as I like the patches I think a more sane course of
action for these old at91 boards would be to drop most of them.
A simple algorithm would be:
  If not supported in the kernel, drop the board.
  
The boards that are not in the kernel have not seen any
activity in barebox for a long time, so it is not like
they look maintained.

That would allow us to get rid of some legacy stuff in
mach-at91 and maybe motivate someone like me to actually
work on the remaining boards as it then looks
doable to convert the remaining boards to DT.

	Sam


