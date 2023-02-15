Delivery-date: Wed, 15 Feb 2023 16:03:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSJJO-008WVe-Me
	for lore@lore.pengutronix.de; Wed, 15 Feb 2023 16:03:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSJJL-0005Je-Jy
	for lore@pengutronix.de; Wed, 15 Feb 2023 16:03:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DFHPbO8+gwImXAyB1w6maoWU/mttJ1FpJxnjweTnXRo=; b=LwZeOU8/45n1cVqRQ30RrPYl8z
	guA+gbmOXLBYY0uH+HI6KFZDm+myf8Uh4CsEpnrKNxtOzSL01O9Sg76i7NGhl2WvhNkq1ynu6YwJS
	CN7NSN5HxmJgi9y3nAf7cx7KrCBmMcFoRmLDefawUrY616s5Vij2wKp5pMEJ41IMHb5lpBMr/L6ks
	8LHLZ0u1wlPoFjVPlC1304twikthe0oCgeti7OS4FiaQD5FMFYedwlcQg4hOnrqKFBhLAfkwucLeT
	CLPPNoe6SYeLBYwRNm0twifnX77dGWIWJxHAIYzloYbD2PjaK61WJouADlFxgCZPcYMO1DtM4rUh6
	amNzGF2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSJI7-006JMN-Ei; Wed, 15 Feb 2023 15:01:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSJI3-006JKy-6z
	for barebox@lists.infradead.org; Wed, 15 Feb 2023 15:01:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1pSJHy-0004x2-DK; Wed, 15 Feb 2023 16:01:42 +0100
Message-ID: <721e4d45d0d67a03be6ea4953351f5cb0c4ac36d.camel@pengutronix.de>
From: Enrico =?ISO-8859-1?Q?J=F6rns?= <ejo@pengutronix.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Otavio Salvador
	 <otavio.salvador@ossystems.com.br>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Marco Felsch
	 <m.felsch@pengutronix.de>, openembedded-core@lists.openembedded.org, 
	yocto@pengutronix.de, barebox@lists.infradead.org
Date: Wed, 15 Feb 2023 16:01:41 +0100
In-Reply-To: <CANNYZj_jLK-FXrGx+bF6fXrSsc-so6G_kpyZKNTpatqJKxQeRg@mail.gmail.com>
References: <20230203135011.2061939-1-m.felsch@pengutronix.de>
	 <12e370a3183d04572da1c5749d8e64dcf5091a0c.camel@linuxfoundation.org>
	 <acf8b79c23675a2b4c7225e55e4ab369fbcf7f54.camel@pengutronix.de>
	 <7f5ebf2315c969ce7c76d024ec373f45cc8eff3f.camel@linuxfoundation.org>
	 <CAP9ODKokQpGL3ttukqRaq3-8m0ci7qp8mckbgudGJx1HOu-fPw@mail.gmail.com>
	 <CANNYZj8_RkjMASpozi+oSu3XOHCW04n9YUC5UgHKy+2vm=cDrQ@mail.gmail.com>
	 <CAP9ODKqjkCuhyVkfhskOSdF3g57=R9MO6Bcy2R5zBV9fVd6wZQ@mail.gmail.com>
	 <CANNYZj_jLK-FXrGx+bF6fXrSsc-so6G_kpyZKNTpatqJKxQeRg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_070147_269772_B56ABEDF 
X-CRM114-Status: GOOD (  17.50  )
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

Am Mittwoch, dem 15.02.2023 um 15:11 +0100 schrieb Alexander Kanavin:
> On Wed, 15 Feb 2023 at 14:53, Otavio Salvador
> <otavio.salvador@ossystems.com.br> wrote:
> > I think the Barebox inside OE-Core allows a bigger integration and
> > reuse of existing tooling for signing and other classes currently well
> > integrated with U-Boot. For me, a critical point for decision is if
> > Pengutronix will commit to support it.
> 
> You should be well aware there's a history of people contributing
> stuff to core and even assigning themselves as maintainers, then
> disappearing.

If possible I would add my name with the above-mentioned Mailing list to the maintainers file.
This ensures I am responsible but not the only one reading the mails.

> And then it falls (largely) on me to keep things
> (barely) going. What happens if ptx withdraws its commitment? Can I
> then send a commit that removes barebox from core? Imagine the angry
> lynch mob that will show up after my head.

I am fully ok with removing barebox again if we fail maintaining it properly.

Should I sign this somewhere? ;)

> Adding things to core is a decision that cannot be easily reversed, so
> I'd rather have barebox in meta-barebox for a while, with any needed
> fixing to classes and infra in core.

It has been in meta-ptx since 2015 and in meta-barebox since 2016. I would call that 'a while' :)


Best regards, Enrico

-- 
Pengutronix e.K.                           | Enrico Jörns                |
Embedded Linux Consulting & Support        | https://www.pengutronix.de/ |
Steuerwalder Str. 21                       | Phone: +49-5121-206917-180  |
31137 Hildesheim, Germany                  | Fax:   +49-5121-206917-9    |



