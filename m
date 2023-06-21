Delivery-date: Wed, 21 Jun 2023 10:27:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBtBa-00FQgj-Rs
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 10:27:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBtBY-0002pg-Es
	for lore@pengutronix.de; Wed, 21 Jun 2023 10:27:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e4B2+dAv3KqTtNTel8rGw6S9FEMQU/RhKo8MgwvTAuk=; b=ftHvTOdv4ChcQWX7Twzaw7pGqG
	p6Yh8bu9x+bhEM2nOcbu3KxKWljwYcfoUjFentMvW5nnQ0jhS8ZAc73rte7mBo+Wt7nHa25eGXG7O
	m1ed114fPOlH1hkBWDHHDQJ/Ui7sACD1BTBmMLOpt30bj+BeWkq4QHoL/7YT3KwOvVROxjDwITtsu
	OmEKxp3htRM8g9VD+QCr9JXQ9B0s2I2Tl6t8a8HzbW3D8AsLWFfP2VPRN2y4QARMhdDEpo1M+zXVL
	71x2j+KNSLPsL7Ol9cVeGsEeftqtc1qLnLFa+XaTsLHwqDjm3z+E1g0FZiGChvfYDqGAxHlO1Z4oa
	ehLeNduQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtAQ-00Dh3O-1p;
	Wed, 21 Jun 2023 08:26:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtAN-00Dh2r-15
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 08:26:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBtAL-0002kT-Rh; Wed, 21 Jun 2023 10:26:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBtAL-0005ha-Ac; Wed, 21 Jun 2023 10:26:13 +0200
Date: Wed, 21 Jun 2023 10:26:13 +0200
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230621082613.GZ18491@pengutronix.de>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
 <20230524234328.82741-3-jmaselbas@zdiv.net>
 <20230616220057.bvz75z5hnyqgzkw5@pengutronix.de>
 <6F176D27-AD10-4F80-AD5E-3B3C56C33327@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6F176D27-AD10-4F80-AD5E-3B3C56C33327@zdiv.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_012615_379525_A62827A3 
X-CRM114-Status: GOOD (  23.80  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 02/13] scripts: Add Allwinner eGON image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Jun 17, 2023 at 09:25:41AM +0200, Jules Maselbas wrote:
> Hi Marco,
> 
> On June 17, 2023 12:00:57 AM GMT+02:00, Marco Felsch <m.felsch@pengutronix.de> wrote:
> > > +	 * to the users.
> > > +	 */
> > > +	uint32_t dt_name_offset;/* since v0.2, set by mksunxiboot */
> > > +	uint32_t dram_size;/* in MiB, since v0.3, set by SPL */
> > > +	uint32_t boot_media;/* written here by the boot ROM */
> > > +	/* A padding area (may be used for storing text strings) */
> > > +	uint32_t string_pool[13];/* since v0.2, filled by mksunxiboot */
> > > +	/* The header must be a multiple of 32 bytes (for VBAR alignment) */
> > > +	/* And at least 64 byte (https://patchwork.ozlabs.org/patch/622173) */
> > > +};
> > > +#define EGON_HDR_BRANCH (0xea000000 | (sizeof(struct egon_header) / 4 - 2))
> > > +#define sunxi_egon_header(section) {					\
> > > +		__section(section) static const struct egon_header hdr= \
> > > +			{ .branch = EGON_HDR_BRANCH, .magic = "eGON" };	\
> > > +		__keep_symbolref(hdr);					\
> > > +	}
> > 
> > Using an additional sections seems a bit odd here. We can just write the
> > header within the image tool.
> That's what I wanted to do in the first place but I struggled a lot to get barebox relocation working.
> Having the eGON header embedded in the .text (since the header is
> loaded by bootrom) is the only solution i found to get the relocation
> working.

The barebox image (the .text section) needs a 4k alignment for relocation.
If you are pasting just a few bytes before the image then you are
breaking this alignment. Can you blow up the header to 4k?

You only have 32k space initially and I don't know how tight in space
you are already, so this might or or might not be an option.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


