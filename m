Delivery-date: Mon, 19 Sep 2022 11:15:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaCsX-009SBC-38
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 11:15:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaCsV-0003Ct-Ol
	for lore@pengutronix.de; Mon, 19 Sep 2022 11:15:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EQBuSSminpDhJnzv9Gvz6SaoM94AtsT4/7FDvGb0/EA=; b=Kb+h6F3eUKytxD1mr8XZ8EXQXT
	r9QSj1imxDJj3H9OTLyATFMlACocRDbyVeRNuzrh59B0p6C/vAbGFy0bq8ocdAFiUTl/U5X7kDxYw
	cQn+cOveZejWhSatkCkb4xggEMOuvRjloHl2ao0KR+KEbVK8fgY8mz64ysVBfJEnzdWz/gS+FoWIt
	5zq0xY7LSc2sAvuCOE8f5e0+vvnqdbO3o8nAenjdnaJU5vYKxXbCQIz+Blz28Rnhk6qo19oF/hLcJ
	Rjpo0HoDckjN3WHi6CCkApylz+e2Z90yfSJW+oyZz/EBj7JNXnjgMUF1Vt19/XSX1mSbZyXmBnULU
	QpksanMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaCr6-00AfE2-Qt; Mon, 19 Sep 2022 09:14:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaCqz-00Af97-Gb
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 09:14:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaCqw-00031w-Vy; Mon, 19 Sep 2022 11:14:10 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaCqw-0008PE-Kx; Mon, 19 Sep 2022 11:14:10 +0200
Date: Mon, 19 Sep 2022 11:14:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Trent Piepho <trent.piepho@igorinstitute.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Barebox List <barebox@lists.infradead.org>
Message-ID: <20220919091410.GC6477@pengutronix.de>
References: <20220907112118.71575e3650222736432b3086@gmail.com>
 <20220912080152.GE24324@pengutronix.de>
 <20220912120734.3fa82231ca6d16ba604ee262@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220912120734.3fa82231ca6d16ba604ee262@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_021413_623749_DE37D976 
X-CRM114-Status: GOOD (  22.95  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Makefile.lib: cmd_dtc: warning: missing whitespace after the
 macro name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Antony,

On Mon, Sep 12, 2022 at 12:07:34PM +0300, Antony Pavlov wrote:
> On Mon, 12 Sep 2022 10:01:52 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > One side effect is that this gets even less readable.
> 
> Yes, you are right :)
> 
> > Another one would be that two dts filenames which only differ in the
> > usage of '.' and '_' would result in the same define, but I think that
> > case is negligible as this define is unused in barebox itself. It could
>                                        ^^^^^^^^^^^^^^^^^^^^^^^^
> > be used by external dts fragments passed in via CONFIG_EXTERNAL_DTS_FRAGMENTS.
> > 
> > Other than that, what side effects are you afraid of?
> 
> I have an idea that someone relies on these *_dts macros.
> 
> Now I see (as you have noted above) that there is no macro users in mainline source tree:

Could you create a formal patch from this?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


