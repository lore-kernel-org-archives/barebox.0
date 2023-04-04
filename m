Delivery-date: Tue, 04 Apr 2023 14:29:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjfnL-009i89-Lh
	for lore@lore.pengutronix.de; Tue, 04 Apr 2023 14:29:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjfnL-0006F0-AJ
	for lore@pengutronix.de; Tue, 04 Apr 2023 14:29:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3N9vuIpEz8lTDJybmsicECHMgZOdRBztKHA7N3E2aC0=; b=wvvbByu24/4bVQJbVw9vS8j+Ag
	5ZnbJSEY5O6U1lLGlUYafS2CXhvZvlYRTkrVpMSm2t4r6VNGhIvznyy4iTy65swijsZuARdf9YmlB
	Pg4WmueRIfTW7sNv0BOVxYRGEZ71YLTmnnOxqtW22Qk/CrdOasAwsa92FB/q1JrrKNWyAxp9fK1Hk
	Sg8/I+5/zO5H9tKWACsXeytBW7zjRfMfxBw3xDHexw7Eco5bWcytlPrbz54x3ZN7D5Zg1O4GVwwOT
	2vK5/1o1thUgbxTtfrQhUtHeO4TOnd+DLVgUWLz3hEFFjjpduRHN/FoWAjXFY7Vuyv1sEnMvwF+Bg
	JA0P4m9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfmK-001GfF-03;
	Tue, 04 Apr 2023 12:28:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfmH-001GeF-0V
	for barebox@lists.infradead.org;
	Tue, 04 Apr 2023 12:28:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1pjfmD-0006At-LF; Tue, 04 Apr 2023 14:28:41 +0200
Message-ID: <156da0c77eb2c3e02501777a577934759bfafb16.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Rouven Czerwinski <rouven@czerwinskis.de>
Date: Tue, 04 Apr 2023 14:28:40 +0200
In-Reply-To: <20230403071105.GQ19113@pengutronix.de>
References: <20230330161101.58529-1-r.czerwinski@pengutronix.de>
	 <20230403071105.GQ19113@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_052845_197779_FB0E3DEB 
X-CRM114-Status: GOOD (  11.76  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH next v2] arm: rockchip: add support for CM3 on IO board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On Mon, 2023-04-03 at 09:11 +0200, Sascha Hauer wrote:
> On Thu, Mar 30, 2023 at 06:11:01PM +0200, Rouven Czerwinski wrote:
> > From: Rouven Czerwinski <rouven@czerwinskis.de>
> >=20
> > Working:
> > - RKBIN DDR training (rk3566_ddr_1056MHz_v1.13.bin)
> > - RKBIN TF-A (v1.34) from RKBIN
> > - Environment storage
> > - DHCP, ping and link detection
> >=20
> > Signed-off-by: Rouven Czerwinski <rouven@czerwinskis.de>
> > ---
> > v2:
> > - rebase on next and adjust to RK356x changes
> > - update rockchip boards documentation
> >=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memory@a00000 {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0device_type =3D "memory";
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0reg =3D <0x0 0x00a00000 0x0 0x7f600000>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
>=20
> Now that we have a driver reading back the memory settings from the
> controller this shouldn't be needed anymore. I dropped the memory node
> while applying, please check if it works.

It does, thanks!

Best regards,
Rouven Czerwinski


