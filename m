Delivery-date: Thu, 26 Jun 2025 18:08:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUp9L-00BK3I-1c
	for lore@lore.pengutronix.de;
	Thu, 26 Jun 2025 18:08:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUp9K-00080S-VI
	for lore@pengutronix.de; Thu, 26 Jun 2025 18:08:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MJ50JAhFM9jIiqxj7auMXsNuUntgfPmHoPhTbvMkfTA=; b=HEAmeiB/MuGXZaTGTZRprP1uYG
	DnKhH44eeL+t7dYM+briERqpEdzh3WDgqfokEcgkMTCGzHU8ZkjsHLgX4kAl02WJINerrHXZo7hh8
	5WsVdny0xOQip9bkVKUc2hTdtdM+R6AdMNdmY7LZaZU58hZxSeSdHmJV0rp+YcYpgdxz9Ff1AF4T7
	H3vNMd8NC0Ry+IRAAOv/2DmVR8zo283mm0U+sL8pEuipx1oUkSDL6fgN10gV+aer8MYrYvWL9rWQO
	Tc43P3HVjRD8U1TP3DSHXMQ3rWzK//avfRnwANbtq4hsEz5ffmBX958K9WnjM8aDmFMo0Mry5vzEi
	gF+UkQRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUp8s-0000000CDpO-1xpX;
	Thu, 26 Jun 2025 16:08:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUoLg-0000000C5WT-2KcU
	for barebox@lists.infradead.org;
	Thu, 26 Jun 2025 15:17:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uUoLf-0000Xg-DW; Thu, 26 Jun 2025 17:17:11 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uUoLf-005T7K-0j;
	Thu, 26 Jun 2025 17:17:11 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uUoLf-001c0g-0S;
	Thu, 26 Jun 2025 17:17:11 +0200
Date: Thu, 26 Jun 2025 17:17:11 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20250626151711.tydhz3y2j5f7dfwx@pengutronix.de>
References: <20250626140329.418033-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250626140329.418033-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_081712_585069_731652D0 
X-CRM114-Status: GOOD (  14.06  )
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
Subject: Re: [PATCH 1/2] ARM: i.MX: tqma6ulx: fix barebox chainloading with
 OP-TEE enabled
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


