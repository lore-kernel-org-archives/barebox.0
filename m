Delivery-date: Tue, 07 Jan 2025 12:14:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV7XP-000IG9-0D
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 12:14:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV7XL-0006ZP-MT
	for lore@pengutronix.de; Tue, 07 Jan 2025 12:14:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CaIuBVVOu+PreUZLvKzbMFecy2p19JY0W7V+/PVMMSc=; b=Ja/3TruNuBXg5I8bU7IN0kEx7K
	fUdnoXujfbnqmpyda6aUdBboaRHGBYLriP67OT1GEsmsf/beMItjOV3yug9cyu7nQaGVFRhPVljdL
	gAx20rk1ZAHZ1oV0vY2m2xtyy8JptvZlHA/QZeveDIROOTB9RNXwJa4FoL89rs3VWNDciAFyTeskq
	ZZm00pBUppFoaXU1fVM3x8INFei9Y08FlC3R6/8gvhaDW7k06AaB+Me4hgqh6mawB9Pc6ZhqYV8GJ
	ILWlW/JN0UlsixyllYzT7u0FSQy7mPi8bRUkQKT+i/r74XlGS1uHygCDYn6MZk6DZOvMR1Luni+uy
	lGCJZWYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7Wk-00000004VXI-20OR;
	Tue, 07 Jan 2025 11:13:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7WB-00000004VU3-2u72
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 11:13:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1tV7WA-0006J5-IS; Tue, 07 Jan 2025 12:13:02 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tV7W9-007Kpy-1P;
	Tue, 07 Jan 2025 12:13:02 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tV7WA-009Wlt-0Q;
	Tue, 07 Jan 2025 12:13:02 +0100
Date: Tue, 7 Jan 2025 12:13:02 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sebastian =?utf-8?B?R3Jvw58=?= <sebastian.gross@emlix.com>
Cc: barebox@lists.infradead.org
Message-ID: <20250107111302.642ikgjfqmm3qgth@pengutronix.de>
References: <92d4dd39-529d-4e4c-b231-76c3ba1790a7@emlix.com>
 <20250107073718.67626a7dq3afqjaz@pengutronix.de>
 <08eeaf77-9771-4dd4-9249-9ae788ef8265@emlix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <08eeaf77-9771-4dd4-9249-9ae788ef8265@emlix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_031303_728491_1468E01E 
X-CRM114-Status: GOOD (  20.30  )
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
Subject: Re: bootm: fit-image: hash node name too strict
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-01-07, Sebastian Groß wrote:
> Hi Marco,
> 
> On 2025-01-07 8:37 AM, Marco Felsch wrote:
> > > Since the image is build by uboot's mkimage I would expect the itb's to be
> > > compatible. Or am I missing something?
> > > 
> > > Changing the following line in the `its`, ie. its build script
> > > ```
> > > - hash { algo = "${FIT_HASH_ALG}"; };
> > > + hash@1 { algo = "${FIT_HASH_ALG}"; };
> > > ```
> > > made the fit-image work.
> > I can't find this line within the U-Boot src code. Can you provide a
> > link please?
> Sorry for the confusion. I meant the build script within yocto that
> generates the `its` and then the `itb`

Can you give me some pointers please? I've checked the
kernel-fitimage.bbclass in oe-core and which used hash@1 during the
initial commit which was changed to hash-1 later on.

> > > Perhaps another if-clause is required. Or some error message that states
> > > which property/string was searched for,
> > > since there were hashes in the image, but not where barebox expected them.
> > We could search for the legacy single 'hash' node name as well and print
> > a warning that this should be changed.
> I concur!

If we can find a valid source which still uses the old style :)

> Looking at `fit_image_verify_signature` this change might be necessary too
> for `signature`

Same here.

Regards,
  Marco


