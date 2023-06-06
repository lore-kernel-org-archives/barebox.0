Delivery-date: Tue, 06 Jun 2023 12:00:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6TTv-00Ctmd-RK
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 12:00:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6TTt-0003rQ-5V
	for lore@pengutronix.de; Tue, 06 Jun 2023 12:00:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dmyhr1pUrRalUfTH9UCaGbAjd5/kFUIaSxCQPaUds0Q=; b=Vn2rwf4m8aFD8l9Hs7k9BaUqOj
	Y9DSQMFFQzhGyDWZzDTLq5Cjsxxbc0MlUbB3iCHWWj3yyl5/V/E19qPiqvM9wVhdt3SWQtL9F1ZDR
	stWa+qXnJ/PYso1oh0gsK0shJDwGPDBzZKk9veL7JeSgYcHB+fHv+eU53UkkgksFdvuby7J6bzYhK
	4NwxMl8qRu16pRLhnT40jJ25zoG6pClLWx9NLh+lKEdP7t3/ThlC4ERO4jvBddKEuvw5VGALpjDOU
	8Kcb7HMDp0CKLQ9k859KwpKhz/Mh5jUzKBxiOfwFGdu8Y6a4SdSE9YOxL+a3ciCMv58hGC0Qn3cvn
	ois+oDyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6TSp-0016mY-2a;
	Tue, 06 Jun 2023 09:58:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6TSn-0016ld-0C
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 09:58:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6TSl-0003hu-RZ; Tue, 06 Jun 2023 11:58:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6TSl-0004Wu-DD; Tue, 06 Jun 2023 11:58:51 +0200
Date: Tue, 6 Jun 2023 11:58:51 +0200
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230606095851.GD18491@pengutronix.de>
References: <20230606081718.2246807-1-yegorslists@googlemail.com>
 <CAGm1_ks5-ODLSi_xyXrFsWB+98y724Ky2UtV823BxPnvmjLM-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGm1_ks5-ODLSi_xyXrFsWB+98y724Ky2UtV823BxPnvmjLM-w@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_025853_102299_238E42EA 
X-CRM114-Status: GOOD (  17.66  )
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

Hi Yegor,

On Tue, Jun 06, 2023 at 10:21:39AM +0200, Yegor Yefremov wrote:
> Hi Sascha,
> 
> 
> > +       ret = phy_modify(phydev, YT8511_PAGE, YT8511_DELAY_FE_TX_EN, fe);
> > +       if (ret < 0)
> > +               goto err_restore_page;
> > +
> > +       /* leave pll enabled in sleep */
> > +       ret = phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_SLEEP_CTRL);
> > +       if (ret < 0)
> > +               goto err_restore_page;
> > +
> > +       ret = phy_modify(phydev, YT8511_PAGE, 0, YT8511_PLLON_SLP);
> > +       if (ret < 0)
> > +               goto err_restore_page;
> > +
> > +err_restore_page:
> > +       return phy_restore_page(phydev, oldpage, ret);
> 
> As for this approach, it is also used by some other drivers in the Linux kernel:
> 
> drivers/net/phy/realtek.c
> drivers/net/phy/icplus.c

It's ok like this. I didn't realize phy_restore_page() takes ret as
argument and returns it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


