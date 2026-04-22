Delivery-date: Wed, 22 Apr 2026 11:19:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFTk1-00F33p-31
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 11:19:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFTk1-0007xP-Dz
	for lore@pengutronix.de; Wed, 22 Apr 2026 11:19:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IQxPXErwGRayVNNZiUvwf9IEsnGHmcCdBmrOSavQS6k=; b=SYf4qv/12zV8DApClO2uGZp/6t
	Fb/6/b/EyJnANBFUPpATp8opDaWHJbNuI6M+uKroHiCdTd3bKUpvAPpq9AnUKg+VDJ1WrKSATtLiV
	dEUo1oyK2cTL1EtokB/L4Hsw18cP+1R2Z8kPaqVDdOuZ+MCGR5/wtmqqWsdRRWl4H4EiCs11S9ihY
	nkNotgw8fLI7fYJBpZ6cgkGYnWPrP17oBOG/7Oyf5AgBMMFKIUkCWpDfBd+d5tOHRePXJDh0X2aWx
	26jVqKQYn/3lNa3FPfQDSZ8/58yYXjSgaEZT8ErnoRE9d5l1+jqvKRap3Q+Z5t7+D3YjpZ6TX1gpc
	EtcIaJcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFTjf-00000009pdX-2KDo;
	Wed, 22 Apr 2026 09:19:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFTjc-00000009pcx-28LS
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 09:19:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wFTja-0007rO-W9; Wed, 22 Apr 2026 11:19:03 +0200
Message-ID: <3e226610c6b2e4a5b2f2d702d4eb11c03680cbac.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Date: Wed, 22 Apr 2026 11:19:02 +0200
In-Reply-To: <aeiR55jQR56V3YDQ@pengutronix.de>
References: <20260415-v2026-03-0-topic-soc_bin_id-v2-0-81fab6ba5de0@pengutronix.de>
	 <20260415-v2026-03-0-topic-soc_bin_id-v2-1-81fab6ba5de0@pengutronix.de>
	 <aeh_ExzusLb9PCX3@pengutronix.de>
	 <479b96ec421925a887ad63f65a5c00478caac431.camel@pengutronix.de>
	 <aeiF3Z6yDuuy3IoD@pengutronix.de>
	 <86d49148492685a515b669a05995b89570de6f79.camel@pengutronix.de>
	 <aeiR55jQR56V3YDQ@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_021904_570124_2D1069D4 
X-CRM114-Status: GOOD (  13.01  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] common: misc: add soc_uid_hex to globalvar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, 2026-04-22 at 11:16 +0200, Sascha Hauer wrote:
> On Wed, Apr 22, 2026 at 10:52:34AM +0200, Fabian Pflug wrote:
> >=20
> > There already is
> >=20
> > BAREBOX_MAGICVAR(global.soc_uid_hex, "SoC Unique ID (in hex)");
> >=20
> > And since it is a single value and not a byte array, I think byte array=
 is the wrong representation.
> > Using a byte-array for TLV does not work with the TLV tooling. This exp=
ects a single value.
>=20
> You are right, byte array is not the correct term here. What I wanted to
> make clear is that it is the raw buffer content with the first byte in
> the buffer being the first two digits of the string, just to make the
> difference between these two clearer:
>=20
> global.soc_uid=3D0011223344556677		"SoC Unique ID"
> global.soc_uid_hex=3D7766554433221100	"SoC Unique ID (in hex)"
>=20
> Both are obviously hex values, which one means what?

maybe "Raw SoC Unique ID (vendor independent representation)"?

>=20
> Sascha


