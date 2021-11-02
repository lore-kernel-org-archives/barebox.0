Delivery-date: Tue, 02 Nov 2021 08:42:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhoRU-00034U-77
	for lore@lore.pengutronix.de; Tue, 02 Nov 2021 08:42:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhoRT-00079i-9T
	for lore@pengutronix.de; Tue, 02 Nov 2021 08:42:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aieO7Rr3f/2iylINiVrjbd9C9p5FGIkU5aXNVmZnFuw=; b=Ysw2AGJ9TWLPbo
	/7lKcN7S0pKEiOrxyZdCdME//PqfF0DqDcXofBemciL8jTOhlYhoGpbJo5pY0MmzBexEs63WYswRP
	+bWamucq3uC7UUQoVDo7j2BzBvYYwQS9Nj7vVqOkHcHnHqyEpyoTLyCvjvf/xANnFxS4z5bmwxXZ3
	yHHkHuzFsFkBT0K0stPLnXOLuq0R583GqO7eA0jTcrJhbRG6vl2OSpbhaHrq5fBzdgx/n2jmP8oqh
	RbbnLLcErgS5UMetrk0K7Z4jJmhGebOopfqwuHXNkOybGXBL5nYDwJED57lz3PV3xmO1VdRBrTYSh
	GRcLNFgSV86sDyu6BSww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhoPj-000o96-Cp; Tue, 02 Nov 2021 07:40:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhoPd-000o7j-C7
 for barebox@lists.infradead.org; Tue, 02 Nov 2021 07:40:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhoPY-0006sL-VC; Tue, 02 Nov 2021 08:40:48 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhoPY-0001u5-BL; Tue, 02 Nov 2021 08:40:48 +0100
Date: Tue, 2 Nov 2021 08:40:48 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>,
 barebox@lists.infradead.org
Message-ID: <20211102074048.GW25698@pengutronix.de>
References: <20211020083954.3787-1-danek.brat@gmail.com>
 <20211101090039.GM25698@pengutronix.de>
 <CAMHeXxMJYC2q4Hs7zd9A=5-KsXyFUtTshMVoZZC2nJUah=LtjA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxMJYC2q4Hs7zd9A=5-KsXyFUtTshMVoZZC2nJUah=LtjA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:16:26 up 257 days, 10:40, 117 users,  load average: 0.25, 0.25,
 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_004053_438993_33AAD986 
X-CRM114-Status: GOOD (  39.43  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] phy: core: Make 'phy_optional_get' return NULL when not
 implemented
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 01, 2021 at 11:33:07AM -0700, Trent Piepho wrote:
>    On Mon, Nov 1, 2021 at 2:01 AM Sascha Hauer <[1]sha@pengutronix.de> wr=
ote:
>    > On Wed, Oct 20, 2021 at 10:39:54AM +0200, Daniel Br=E1t wrote:
>    > > Make 'phy_optional_get' return NULL instead of ERR_PTR(-ENOSYS) wh=
en
>    the
>    > > CONFIG_GENERIC_PHY is not enabled. It makes more sense to return N=
ULL
>    instead
>    > > of straight up throwing a error since the function has 'optional' =
in
>    its name.
>    > > This also fixes dwc2 usb driver which would previously fail inside=
 its
>    probe
>    > > function despite being able to function without a phy just fine.
>    >
>    > The phy is only optional as long as none is specified in the device
>    > tree. When there is one specified then it's no longer optional. We c=
an't
>    > do the right thing here without checking the device tree. Given that
>    > it's simple to enable CONFIG_GENERIC_PHY I think this is the way to =
go.
> =

>    But this force enables GENERIC_PHY when it's not needed.
> =

>    There are commonly many device nodes in Linux dts files that are not u=
sed
>    by an enabled Barebox driver.=A0 It's normal to turn off a driver that=
 might
>    be or could be used.=A0 Is it necessarily an error if a phy is present=
 in
>    the dts but we don't wish to include support for it?

We need to distinguish the cases "There is a phy specified, but the
reset defaults are good enough to go without a driver" and "There is a
phy specified and we need driver support for it". barebox can't know
this.

Returning NULL from the phy_optional_get() stub has another problem:
Some devices might work with CONFIG_GENERIC_PHY disabled, but stop
to work when CONFIG_GENERIC_PHY gets enabled, because we might have
no driver for the phy. Having boards that only work with CONFIG_GENERIC_PHY
disabled is rather unexpected as well.

>    struct phy *phy_optional_get(struct device_d *dev, const char *string)
>    {
>    =A0 =A0 =A0 =A0 if (dev->device_node &&
>    =A0 =A0 =A0 =A0 =A0 =A0 !of_parse_phandle_with_args(dev->device_node, =
"phys",
>    "#phy-cells",=A0of_property_match_string(dev->device_node, "phy-names",
>    string), NULL))
>    =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_warn(dev, "%s phy specified in dev=
ice tree but
>    CONFIG_GENERIC_PHY support is not enabled", string);
>    =A0 =A0 =A0 =A0 return NULL;
>    }

I am fine with this approach. We could add a check if the phy node has a
status =3D "disabled" property. That would allow a board to explicitly
state that we do not need to support a phy. We could then do the
right thing no matter if CONFIG_GENERIC_PHY is enabled or not.

Thinking about it I would prefer something like barebox,status =3D "disable=
d"
to prevent the property from leaking into Linux.

Sascha


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

