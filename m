Delivery-date: Tue, 11 Mar 2025 12:05:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trxQm-00Ce9N-1g
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 12:05:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trxQl-0000IV-CT
	for lore@pengutronix.de; Tue, 11 Mar 2025 12:05:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z+Xav8gwdVIKkJP/Xb3wJDGknLZmN2STjP4A11W8CI8=; b=mQpLPI7llDVipi1YPkR/l38oS5
	4qK4vFaxDZh1R637RHoV6GncWPQtrU7arFXcuIsQ+9QRRC7vuVRRxeqwneBFPnlApVnQWNVDJ7zoS
	zY2tecT4fyPqSWkQpYV/wIlxehHvalXZiILRv0Z36K/yemLgJEYR9zBGnG+eyQXD5AFdx1169a7OV
	JlFumAW9N0K12sxfXiI1G8KkZH36kgSMEUU9jGjKvfklj7hVDQ4tOxJ5NlWjJ6jCRd3y4K3CXe3RX
	+OtdfaeTL/b8y5EUFF7p2KvOGkUwxEzbXynCo5M/0pt0GL4gW+lcvAZYKKVQhKeIR/cijqUdDjytT
	SEe1iOeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trxQN-00000005Pun-3oAH;
	Tue, 11 Mar 2025 11:05:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trxQL-00000005PtP-0sFl
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 11:05:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1trxQI-0000DB-Lz; Tue, 11 Mar 2025 12:05:22 +0100
Message-ID: <a2b2fd98bb4d5f5597b55587ddc9f6b6e4da8fcb.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>,  BAREBOX <barebox@lists.infradead.org>
Date: Tue, 11 Mar 2025 12:05:22 +0100
In-Reply-To: <20250311-pca9450-wdog-v1-0-45120abeae00@pengutronix.de>
References: <20250311-pca9450-wdog-v1-0-45120abeae00@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_040525_243838_E92C90C1 
X-CRM114-Status: GOOD (  11.73  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] Move pca9450 RESET_CTRL configuration to driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Tue, 2025-03-11 at 11:50 +0100, Jonas Rebmann wrote:
> Configure the RESET_CTRL register of the pca9450 pmic in the driver,
> like u-boot and kernel do. Subsequently, remove the setup of this
> register from the pca9450_register_init_callback of the two imx93 boards
> we currently have.

Does it make sense to select the pcs9450 in the board kconfig symbols?
This way users retain the behaviour after an update even if the pca9450
driver was not selected before.

> Configuration of this register in lowlevel.c of the imx8 boards remains
> untouched for now as they use a larger array of pmic register setups
> which I haven't given a closer look as to which is actually needed given
> the defaults and what's done in the driver already.
>=20
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
> Jonas Rebmann (2):
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mfd: pca9450: configure pmic reset behavio=
r
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ARM: boards: remove obsolete PCA9450_RESET=
_CTRL setup
>=20
> =C2=A0arch/arm/boards/phytec-phycore-imx93/board.c |=C2=A0 9 ---------
> =C2=A0arch/arm/boards/tqma93xx/board.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 3 ---
> =C2=A0drivers/mfd/pca9450.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | 11 +++++++++++
> =C2=A0include/mfd/pca9450.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0 4 ++++
> =C2=A04 files changed, 15 insertions(+), 12 deletions(-)
> ---
> base-commit: d004da6e3710cc01b645a57c8dd1a986eced1c80
> change-id: 20250311-pca9450-wdog-b9458f1a26ff
>=20
> Best regards,

Best regards,
Rouven


