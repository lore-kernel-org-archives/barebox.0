Delivery-date: Mon, 21 Oct 2024 13:22:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2qUN-0072yw-05
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 13:22:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2qUM-0006Tg-DK
	for lore@pengutronix.de; Mon, 21 Oct 2024 13:22:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZYUYclMov+SzHcKjlHPiI8sTEJg50Snv3dOb7MWnXTA=; b=tXxdzdX9GhAWpjPOYY4jAz+dUu
	WE2OyaznpSOTyG+b1jeXI6q0AqD7vuRH/78k1jv2+P00XPB8EmC+2+uY3JGK62Y906eaYefekBGQV
	cWTcsMqYK/AK+Y63JyVYW5Tn3os6f3cy5TvomyzTwV0vnNBw1pjP7BKGMwgr51K4njSoDQT51l5Bu
	zBuwZ02cWNWpnjbRXfU/mjvr5vpK5Xn0gc8V26mZeWq95g5kaTnl6kQbSAoeKH8Cmw3RK+mg3bEkr
	18yfLh0ehXgaK4eQ/33B1eTgCrnFWlLOqek/U+VvdTp9M29we0xSlTF+cOQpnfdQIY493+tX4iaJ3
	i7EPvBcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2qTo-000000072Vu-3mM2;
	Mon, 21 Oct 2024 11:21:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2qSO-000000072G6-3EMa
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 11:20:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t2qSM-0006G8-W9; Mon, 21 Oct 2024 13:20:15 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t2qSM-000geA-2b;
	Mon, 21 Oct 2024 13:20:14 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t2qSM-005krp-2L;
	Mon, 21 Oct 2024 13:20:14 +0200
Date: Mon, 21 Oct 2024 13:20:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZxY47o0QiqLzn4oc@pengutronix.de>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
 <20241021-arm-layerscape-tfa-v1-2-0980697b6f66@pengutronix.de>
 <f4a3b122-28c3-4e23-aba1-2a41d3c77425@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f4a3b122-28c3-4e23-aba1-2a41d3c77425@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_042016_839208_C200AAA9 
X-CRM114-Status: GOOD (  26.03  )
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
Subject: Re: [PATCH 2/9] ARM: Layerscape: TQMLS1046a: add support for 8GiB
 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 21, 2024 at 11:06:47AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 21.10.24 09:21, Sascha Hauer wrote:
> > The tqmls1046a also has a 8GiB DDR variant. This patch adds support for
> > this variant as an additional image with suffix _8g in the name.
> > 
> > The 8GiB boards use two different types of DDR chips which can be
> > distinguished by reading the EEPROM. There is one regular version which
> > has the string "TQMLS1046A-P2.0201" is the EEPROM. The other one is
> > possibly only used for Arkona and has the string "TQMLS1046A-CA.0202"
> > in the EEPROM. There might be other possible strings we are currently
> > not aware of, we fall back to the P2 variant in this case.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> 
> [snip]
> 
> > -static int tqmls1046a_mem_init(void)
> > +static void ls1046a_add_memory(void)
> >  {
> > +	u32 cs0_bnds;
> > +	unsigned long long memsize, lower, upper;
> 
> Nitpick: u64
> 
> > +ENTRY_PROC(start_tqmls1046a_8g)
> > +	mov x3, #STACK_TOP
> > +	mov sp, x3
> > +	b tqmls1046a_8g_entry
> 
> We should be able to migrate these assembly entry points to
> use ENTRY_FUNCTION_WITHSTACK.

We could do here. A few patches further down though when adding TF-A
support the stack address will depend on the exception level which can't
be covered by ENTRY_FUNCTION_WITHSTACK.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


