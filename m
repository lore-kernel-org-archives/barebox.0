Delivery-date: Thu, 26 Jun 2025 18:08:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUp9K-00BK2x-0M
	for lore@lore.pengutronix.de;
	Thu, 26 Jun 2025 18:08:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUp9J-000800-Iq
	for lore@pengutronix.de; Thu, 26 Jun 2025 18:08:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MJ50JAhFM9jIiqxj7auMXsNuUntgfPmHoPhTbvMkfTA=; b=jgEiwxmYs2PZWu1zuhQaB3Dl8k
	kBvFtKzzt0qvL3MMS2PyHhxwlq3pSLLaZWnJ0rQeMUYGnT2vhEi1wwazpCvW8lUzZQIk2z/lCqGW7
	fazOOaKw1zwjBNPCDQZKUpnEIZxkCRO3EIMJOipJNGiLMPtVJUfq9XokmwSHvyKifE4KZpJp6XV4j
	3ETLnHRjRR3PpvMeU0BDPfQHbIocUuQHLUIM9/FFXX6zfvih0hiiQZu7rvZvJ+gNjdt9wW6R0AyoD
	nKilqPjmNHStsCVEDYPh5Utnhmhh5n6h+DwtQhcKM5Q1b3qMqEvJlMAXLq+6El5pb4Hvz2BojF1US
	qMFB8ezA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUp8r-0000000CDpE-4516;
	Thu, 26 Jun 2025 16:08:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUoLV-0000000C5Td-28ja
	for barebox@lists.infradead.org;
	Thu, 26 Jun 2025 15:17:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uUoLS-0008Td-TV; Thu, 26 Jun 2025 17:16:58 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uUoLS-005T7D-2J;
	Thu, 26 Jun 2025 17:16:58 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uUoLS-001c0N-1x;
	Thu, 26 Jun 2025 17:16:58 +0200
Date: Thu, 26 Jun 2025 17:16:58 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20250626151658.gibzixsp3et6qwhx@pengutronix.de>
References: <20250626140329.418033-1-s.hauer@pengutronix.de>
 <20250626140329.418033-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250626140329.418033-2-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_081701_546035_DD312307 
X-CRM114-Status: GOOD (  13.92  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX: Webasto ccbv2: fix barebox chainloading
 with OP-TEE enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-06-26, Sascha Hauer wrote:
> Chainloading barebox when OP-TEE is enabled has multiple bugs, fix them.
> 
> When barebox starts we have to guess if we have to start OP-TEE or not.
> As we can't detect the exception level on ARMv7 we do this by checking
> if a first stage loader has passed us a device tree.
> 
> First of all the device tree is passed in r2, not in r0, so fix the
> register we use.
> 
> Then we have to check if r2 is within the SDRAM. We check against
> MX6_MMDC_P0_BASE_ADDR which is the base of the SDRAM controller. Use the
> base address of the SDRAM instead.
> 
> Finally we manipulate the TZASC which we are obviously not allowed in
> EL1, so move the manipulation to the code which is only executed in EL2.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Feel free to add my:

Acked-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco


