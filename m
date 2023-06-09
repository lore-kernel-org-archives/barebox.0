Delivery-date: Fri, 09 Jun 2023 08:16:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VQX-00GpGX-5v
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 08:16:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VQU-0008E0-O1
	for lore@pengutronix.de; Fri, 09 Jun 2023 08:16:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0w8V52M6b/r+wBYeX3QcfyeHWVgo75DHhyaSB1vrvf0=; b=bH3tO28+DhIBIw3+vz1jaq0bIr
	l0zrPw0L5Bhdu1p9chduunhCE71cwI91VPHoNT01NTCF0IbIh0OiIOEvND8z8IT27O6NFvFr9yX7m
	kuge9hEEVQJUAGEiaLGkMygBOMBhJq6mdPxPDOlNv6dDzSRMPZeHGWK2C14hEco/WFxH0mtyg+mPF
	nkKjbxRDIUnzxcngIDRFeViMoHsEp0Ro8HAxyHVvLoKzTl5/lsjuw0I8SfUyBnW8YJtDGSGjBDYgC
	QfdZH+f/tR+uPdC2IbadC94MllUM7E5F6hj08VY+va1vuyZ9hyw0NHKxnkwH9dA8vRC4ssTnPUm4y
	EI1CCuUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7VPJ-00BpSb-0N;
	Fri, 09 Jun 2023 06:15:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7VPF-00BpRG-21
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 06:15:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7VP7-0007wH-Rn; Fri, 09 Jun 2023 08:15:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7VP7-0007Y7-Cd; Fri, 09 Jun 2023 08:15:21 +0200
Date: Fri, 9 Jun 2023 08:15:21 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230609061521.GK18491@pengutronix.de>
References: <20230606081718.2246807-1-yegorslists@googlemail.com>
 <CAGm1_ks5-ODLSi_xyXrFsWB+98y724Ky2UtV823BxPnvmjLM-w@mail.gmail.com>
 <20230606095851.GD18491@pengutronix.de>
 <CAGm1_ku-9qaGMZsEO0ME90rd3dnf5Q12XwjfUpYeXwciNmYvnw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGm1_ku-9qaGMZsEO0ME90rd3dnf5Q12XwjfUpYeXwciNmYvnw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_231529_667413_B3B3F102 
X-CRM114-Status: GOOD (  21.91  )
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
Subject: Re: [PATCH v2] net: phy: add driver for MotorComm PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 08, 2023 at 12:48:47PM +0200, Yegor Yefremov wrote:
> Hi Sascha,
> 
> On Tue, Jun 6, 2023 at 11:58 AM Sascha Hauer <sha@pengutronix.de> wrote:
> >
> > Hi Yegor,
> >
> > On Tue, Jun 06, 2023 at 10:21:39AM +0200, Yegor Yefremov wrote:
> > > Hi Sascha,
> > >
> > >
> > > > +       ret = phy_modify(phydev, YT8511_PAGE, YT8511_DELAY_FE_TX_EN, fe);
> > > > +       if (ret < 0)
> > > > +               goto err_restore_page;
> > > > +
> > > > +       /* leave pll enabled in sleep */
> > > > +       ret = phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_SLEEP_CTRL);
> > > > +       if (ret < 0)
> > > > +               goto err_restore_page;
> > > > +
> > > > +       ret = phy_modify(phydev, YT8511_PAGE, 0, YT8511_PLLON_SLP);
> > > > +       if (ret < 0)
> > > > +               goto err_restore_page;
> > > > +
> > > > +err_restore_page:
> > > > +       return phy_restore_page(phydev, oldpage, ret);
> > >
> > > As for this approach, it is also used by some other drivers in the Linux kernel:
> > >
> > > drivers/net/phy/realtek.c
> > > drivers/net/phy/icplus.c
> >
> > It's ok like this. I didn't realize phy_restore_page() takes ret as
> > argument and returns it.
> 
> The driver doesn't use a phy_id_mask for now and it causes problems
> that unknown PHY will be assigned to MotorComm. What mask should I
> use? 0xfffffff or 0x00000fff?

It is PHY_ID_MATCH_EXACT() in the kernel, so should be 0xffffffff.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


