Delivery-date: Thu, 01 Jun 2023 17:51:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4kae-005zar-Om
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 17:51:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4kac-0000Gz-Eg
	for lore@pengutronix.de; Thu, 01 Jun 2023 17:51:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ltYL5LsTRGFIjqdClrB25GMlMU9OEz4PLZlE5yc5+9I=; b=me5SW+RFzyGgs++fu4q0kh4lJ5
	OvR2j6PTb6lacjoTaHirXV+3xydy/tICNjBfw3OZN1595XRup2SqoIxM6E1kw9POgPAUa7U3qNk0S
	SnzubWkvMgdGmAYAH8x9781C4SK9zlZSxrdxqZYAIVZzsF08Zzf7gq6sNKk7/7JCTvuvfKyWJWTEg
	hameggKssJ+BB+Yqb77827J7YjyNqtzA5OxAx+CIOy3RPPA/3u2TyMgBDpfio2ZAip5BjUHf1lgz/
	MFchOzHhV2uVprNEgTNTngXBIMzJr1syn6yNU1aE2QyhNbtq3NjKqKsV+BI1YV7XL9YpDeAuPAmLT
	KhSyFr2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4kZV-0046PU-2G;
	Thu, 01 Jun 2023 15:50:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4kZQ-0046Nf-2n
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 15:50:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4kZN-0008ND-Kr; Thu, 01 Jun 2023 17:50:33 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4kZN-00009M-CJ; Thu, 01 Jun 2023 17:50:33 +0200
Date: Thu, 1 Jun 2023 17:50:33 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230601155033.6ehyw6sddexbn4qj@pengutronix.de>
References: <20230601142506.1069998-1-m.felsch@pengutronix.de>
 <20230601143209.GN18491@pengutronix.de>
 <20230601143842.447ap3h6hmu27gxl@pengutronix.de>
 <ZHi5LycyuzDwjwTS@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZHi5LycyuzDwjwTS@tellis.lin.mbt.kalray.eu>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_085036_903697_0772033B 
X-CRM114-Status: GOOD (  18.55  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gpiolib: fix gpio-hog functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Jules,

On 23-06-01, Jules Maselbas wrote:
> On Thu, Jun 01, 2023 at 04:38:42PM +0200, Marco Felsch wrote:
> > On 23-06-01, Sascha Hauer wrote:
> > > On Thu, Jun 01, 2023 at 04:25:06PM +0200, Marco Felsch wrote:
> > > > This reverts commit 3641d381e63321016e3bf09504852a6b2a2f879b.
> > > > 
> > > > Since the of_xlate support the gpio-hog support is broken because the
> > > > 'gpio' property used to specify the gpio-hog pin does not contain any
> > > > phandle. Due to the fact that of_xlate was never implemented the easiest
> > > > way to fix the gpio-hog functionality is to revert the commit.
> > > 
> > > 3641d381e63321016e3bf09504852a6b2a2f879b was introduced for sunxi. As
> > > Jules is currently working on sunxi support this is likely needed soon,
> > > so what's the second easiest way?
> > 
> > There is no sunxi driver within the kernel which make use of of_xlate.
> 
> of_xlate is used by sunxi pinctrl driver, see:
> https://elixir.bootlin.com/linux/latest/source/drivers/pinctrl/sunxi/pinctrl-sunxi.c#L975

Thanks for the link, didn't searched the pinctrl driver dir..

Anyway I still think that we should (re-)sync the barebox gpio code with
linux. The sync can start with adding the of_xlate support like it is
done in linux? This was also my reason for completely revert your patch
since a gpiolib sync would adapt the of_xlate handling anyway.

Regards,
  Marco


