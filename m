Delivery-date: Fri, 23 Jan 2026 11:12:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjE9R-004Ri6-1q
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 11:12:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjE9Q-0005Lq-JW
	for lore@pengutronix.de; Fri, 23 Jan 2026 11:12:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aIrolLzxBAU12rUp5kahNlzb2uMBCUFno+V/pxS2xng=; b=g4Z/XOZ4eU98VrdMtEu3Io6kWX
	xaxuo0XovnO/jYbgzxwBkxeKLUAYtPPMA426NVSiTAdPvHWV8glgjH/mhQ2m/azv8SWzRh/ceg641
	aAfM91MqjtqCENLO8G/fFY471G62Fusz07nKXAZTlK2fGsg2AHkgDzvrpsAha0+ojL3vu6FB8W0RG
	imE2UmeBGhIiSmbaOZ6Yeti2qyDbWTGQqvkU26gHK7Y4l1a15IvIjjXXWbd7d+HE6cRJIHVSa4b7E
	vgylVC8CcJaI9P1jmMPik2ugG3wZPU3wTinXKe54qO2UEWW+AjaTaSkge/h/k0jBevye02z8c+LkC
	Dnc98KcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjE8y-00000008gm5-2m8t;
	Fri, 23 Jan 2026 10:11:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjE8t-00000008glY-3MEz
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 10:11:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vjE8r-0005Ar-8u; Fri, 23 Jan 2026 11:11:49 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vjE8r-0024WX-2R;
	Fri, 23 Jan 2026 11:11:49 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vjE8q-00Atz8-3C;
	Fri, 23 Jan 2026 11:11:49 +0100
Date: Fri, 23 Jan 2026 11:11:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Fabian Pfitzner <f.pfitzner@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <aXNJZPJxO_JoLOdh@pengutronix.de>
References: <20260119-fpf-imx8mp-frdm-v1-0-13fac69eda23@pengutronix.de>
 <20260119-fpf-imx8mp-frdm-v1-1-13fac69eda23@pengutronix.de>
 <20260119152437.nenxd336vgenmlib@pengutronix.de>
 <aXM8iigmqbfe3h2k@pengutronix.de>
 <d482031d-a2c1-42d8-aaff-ecce2dacce81@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d482031d-a2c1-42d8-aaff-ecce2dacce81@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_021151_860228_C2D55EE4 
X-CRM114-Status: GOOD (  20.47  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: i.MX8MP: add imx8mp-frdm board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jan 23, 2026 at 10:27:18AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 1/23/26 10:16, Sascha Hauer wrote:
> >> @Ahmad @Sascha
> >>
> >> Do we have a proper driver for the bbu? In that case we could drop the
> >> whole board.c :-)
> > 
> > No we don't have that yet. Would be nice to have, but requires some
> > thinking. I think this would require yet another barebox specific device
> > tree binding which is not a nice thing to have.
> 
> Another possibility would be to register it in SoC code as it's mostly
> the same across boards anyway. In that case, boards would only need
> an opt-in/opt-out and optionally a way to register different/additional
> names for the update handlers..

That sounds good. It would even allow us to register the current
bootsource as default handler.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


