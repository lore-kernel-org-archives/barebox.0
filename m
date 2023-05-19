Delivery-date: Fri, 19 May 2023 11:41:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzwcU-006WWf-Me
	for lore@lore.pengutronix.de; Fri, 19 May 2023 11:41:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzwcR-0001He-VD
	for lore@pengutronix.de; Fri, 19 May 2023 11:41:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K4ATh0RCKs/H020BIlQPH/S80RxLduWfPWSe8SmnBMI=; b=fHnOPGO7ieq49j3TQvRn7f0tHZ
	pal0awny4EFj8+ynlpsMNrlhX7ofErd7xVpdyafFXiXv7J4AoZJnRDroL6yZduDSWTTtBbE+Xc4Wn
	KslSiQr16Ya8+b+FbKVVujRcyqNxf19CL65pugiW8U+xx42A6QEsWlmGm0tyvT3pCql/N+VZqzGAC
	TutQ2kAUC38otfZZ2hoyQWq1dAb5i5SO5jyGr3hFXFs1TTrgvyxBXg4YTo9HgSrafh0QUblxE2Qrb
	6LNTbLI5cNRYvTHrWgwZzd0EU8iHTPm4FuE9kzgSTvuysXh/gokvLsoBYsyXOwH42sf+oNl8sCTEA
	VZdjoGuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwbJ-00Fko2-2f;
	Fri, 19 May 2023 09:40:41 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwbF-00FklA-18
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 09:40:39 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 7BFA040009;
	Fri, 19 May 2023 09:40:32 +0000 (UTC)
Date: Fri, 19 May 2023 11:40:25 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZGdECY17-gOOXldS@tour>
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
 <20230510233711.37345-2-jmaselbas@zdiv.net>
 <a20ef0c6-dc9d-c067-05c9-ec85f3f4adca@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a20ef0c6-dc9d-c067-05c9-ec85f3f4adca@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_024037_534442_24B9D788 
X-CRM114-Status: GOOD (  13.77  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH 01/11] scripts: Add Allwinner eGON image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 18, 2023 at 08:47:27PM +0200, Ahmad Fatoum wrote:
> On 11.05.23 01:37, Jules Maselbas wrote:
> > On power-up Allwinner SoC starts in boot ROM, aka BROM, which will search
> > for an eGON image: first from the SD card, then from eMMC. If no image is
> > found then the BROM will enter into FEL mode that can be used for initial
> > programming and recovery of devices using USB.
> > 
> > The eGON header structure is adapted from u-boot: /include/sunxi_image.h,
> > the header structure is also documented on https://linux-sunxi.org/EGON
> > 
> > BROM will load, at most, the first 32KB of the image into SRAM, including
> > the header itself! The jump instruction in the header needs to be patched
> > accordingly with the image size.
> 
> S-o-b missing.
I haven't properly setup git on this computer...


