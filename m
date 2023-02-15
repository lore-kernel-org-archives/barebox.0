Delivery-date: Wed, 15 Feb 2023 15:07:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSIRU-008TkM-Lv
	for lore@lore.pengutronix.de; Wed, 15 Feb 2023 15:07:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSIRR-0006UL-Si
	for lore@pengutronix.de; Wed, 15 Feb 2023 15:07:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=onATYub270cHeEGqzU+MQFXAALzPkSV7kEviJvOg6wc=; b=MZRl2LALxu/wLnMysx8+JgpmhZ
	l2lnmKja3jEWCI5dy5BLZjkHTnWzabIjjGPqlZeZa38LNOJhbkeHwTqL4ScXNkFvGVM2i5vvSBxkR
	6/UkEsFMcdPOknjv8W7oBdiyJlVcQ910bYb2IXEmTiVnvGyDCM8I/joWQcZpRXOv5Ux+g8eUavKPp
	Nvcx2fY4T8ZXK3HNadJOu9eKsYeGl0WCp4PgqlfpE7jMGuL49+T5CLZT+HGbm5jIhdvfIagFxRV4q
	5SypB9p1gvFRTPIoENbdO9HytnN8hPWP/3sf+2pXSk7kai/9k/ytAJxnOGxn5ZLC8zmIjqRrdJ5sZ
	3X5ficog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSIQf-00699r-HY; Wed, 15 Feb 2023 14:06:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSIQa-00698t-Uu
	for barebox@lists.infradead.org; Wed, 15 Feb 2023 14:06:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1pSIQY-0006NV-93; Wed, 15 Feb 2023 15:06:30 +0100
Message-ID: <45dbf5141a71bc1db6756cfc9df3fb0c0b33b3be.camel@pengutronix.de>
From: Enrico =?ISO-8859-1?Q?J=F6rns?= <ejo@pengutronix.de>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>, Alexander Kanavin
	 <alex.kanavin@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Marco Felsch
	 <m.felsch@pengutronix.de>, openembedded-core@lists.openembedded.org, 
	yocto@pengutronix.de, barebox@lists.infradead.org
Date: Wed, 15 Feb 2023 15:06:29 +0100
In-Reply-To: <CAP9ODKqjkCuhyVkfhskOSdF3g57=R9MO6Bcy2R5zBV9fVd6wZQ@mail.gmail.com>
References: <20230203135011.2061939-1-m.felsch@pengutronix.de>
	 <12e370a3183d04572da1c5749d8e64dcf5091a0c.camel@linuxfoundation.org>
	 <acf8b79c23675a2b4c7225e55e4ab369fbcf7f54.camel@pengutronix.de>
	 <7f5ebf2315c969ce7c76d024ec373f45cc8eff3f.camel@linuxfoundation.org>
	 <CAP9ODKokQpGL3ttukqRaq3-8m0ci7qp8mckbgudGJx1HOu-fPw@mail.gmail.com>
	 <CANNYZj8_RkjMASpozi+oSu3XOHCW04n9YUC5UgHKy+2vm=cDrQ@mail.gmail.com>
	 <CAP9ODKqjkCuhyVkfhskOSdF3g57=R9MO6Bcy2R5zBV9fVd6wZQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_060633_017291_E9F1C752 
X-CRM114-Status: GOOD (  23.18  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [yocto] [OE-core] [PATCH 1/2] barebox: add initial support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am Mittwoch, dem 15.02.2023 um 10:53 -0300 schrieb Otavio Salvador:
> Em qua., 15 de fev. de 2023 às 10:44, Alexander Kanavin
> <alex.kanavin@gmail.com> escreveu:
> > On Wed, 15 Feb 2023 at 12:22, Otavio Salvador
> > <otavio.salvador@ossystems.com.br> wrote:
> > > > Fair enough, I'm open to the idea. It would be interesting/useful to
> > > > see if anyone else in the community is in favour of this or not. I'm
> > > > sure you appreciate why we need to ask the question and why we can't
> > > > just add everything! :)
> > > > 
> > > > The community usage does appear to be primarily phytec/ptx.
> > > 
> > > I have used barebox in some projects in the past for multiple customers. It is a solid and
> > > commonly used bootloader. I consider U-Boot the industry standard, but Barebox is also widely
> > > used, and it makes sense to be part of OE-Core.
> > 
> > I do not quite understand why barebox needs to be specifically in
> > oe-core. There's a well maintained layer for it:
> > https://github.com/menschel-d/meta-barebox
> > so once all those meta-phytec recipes are phased out in favour of
> > using that layer, there's no fragmentation.
> 
> I think the Barebox inside OE-Core allows a bigger integration and
> reuse of existing tooling for signing and other classes currently well
> integrated with U-Boot.

Yes, this is another valid point. We have already identified that many things in OE are a bit
tailored to u-boot. Having another option (as one has for x86 with grub anyway) could, especially on
ARM platforms, inspire to make things more generic and probably also create community synergy
effects.

What clearly would not be the intention is to tailor things in oe-core for barebox only.

> For me, a critical point for decision is if
> Pengutronix will commit to support it.

Yes, I stated that this is clearly our intention.
So support isn't only a one-man show at all ;)


Thanks and best regards, Enrico

-- 
Pengutronix e.K.                           | Enrico Jörns                |
Embedded Linux Consulting & Support        | https://www.pengutronix.de/ |
Steuerwalder Str. 21                       | Phone: +49-5121-206917-180  |
31137 Hildesheim, Germany                  | Fax:   +49-5121-206917-9    |



