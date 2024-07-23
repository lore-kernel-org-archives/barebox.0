Delivery-date: Tue, 23 Jul 2024 14:25:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWEZk-0028ia-12
	for lore@lore.pengutronix.de;
	Tue, 23 Jul 2024 14:25:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWEZj-0008J2-Nw
	for lore@pengutronix.de; Tue, 23 Jul 2024 14:25:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TmD9Zhqi0hFTmvZ16oRT1RmaUd9wWAIfvvw7QK7jWLY=; b=WfSbjZeACDKccnW9PQ7BX6Nugq
	yEc6o3ZJ33v+MbHwcGK47stO14i5cG7TihOMuPdQJ93aFr++/5qcupH2oWdjioDYEZVfQmCdjw0ss
	rC/rjS4tM04v9L5QuHKmtYEG2kgEN0Z8BqaZ7ODYB4QIxOgOSIhSE4lbsL4TUEWq+hTDACXIIUwRn
	jY0Z28zJS7dg3MbKYu5ZDlC8ZCd9AsDWyPY8gBcpJJvHHo5j9Agf/Mon9qHdwwXrQ7IHfTQb6LLXX
	XGH7aFFUhkvCrO0KvXKfhTng0Yxa9hrm3IL8wtlizEXRvtGa2bFZuUOxhkLVieO74e6WWHvDUFAN/
	06fQymDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWEZC-0000000CNay-1edH;
	Tue, 23 Jul 2024 12:24:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWEZ7-0000000CNaB-3zrm
	for barebox@lists.infradead.org;
	Tue, 23 Jul 2024 12:24:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1sWEZ4-0008Gr-HB; Tue, 23 Jul 2024 14:24:22 +0200
Message-ID: <c91faed04802d13072ac42b233216fc5cb414d4f.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Stefano Manni <stefano.manni@gmail.com>, barebox@lists.infradead.org
Date: Tue, 23 Jul 2024 14:24:22 +0200
In-Reply-To: <CANn9nbgEYhJEPCZs4oQ-TBLM5OFz-076yiwRCYzewPJVfoiKMw@mail.gmail.com>
References: <CANn9nbgEYhJEPCZs4oQ-TBLM5OFz-076yiwRCYzewPJVfoiKMw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_052426_011933_9A22D746 
X-CRM114-Status: GOOD (  11.18  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: HAB warning on imx6sx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Tue, 2024-07-23 at 14:09 +0200, Stefano Manni wrote:
> Hello,
>=20
> on a board based on imx6sx I'm facing the following warning when
> HABv4
> is enabled on barebox 2024.02:
>=20
> ERROR: HABv4: -------- HAB Event 0 --------
> ERROR: HABv4: event data:
> ERROR: HABv4:=C2=A0 db 00 24 42=C2=A0 69 30 e1 1d
> ERROR: HABv4:=C2=A0 00 08 00 02=C2=A0 40 00 36 06
> ERROR: HABv4:=C2=A0 55 55 00 03=C2=A0 00 00 00 00
> ERROR: HABv4:=C2=A0 00 00 00 00=C2=A0 00 00 00 00
> ERROR: HABv4:=C2=A0 00 00 00 01
> ERROR: HABv4: Status: Operation completed with warning (0x69)
> ERROR: HABv4: Reason: Engine failure (0x30)
> ERROR: HABv4: Context: Event logged in hab_rvt.entry() (0xe1)
> ERROR: HABv4: Engine: CAAM (0x1d)
>=20
> Have you ever experienced something like this? On another board based
> on on imx6ul I've never seen it.
>=20
> Should I ignore it? Maybe it disappears when I secure the device?

This is a common warning on some i.MX6 devices which indicates a CAAM
RNG self-test failure, see the description in
drivers/crypto/caam/rng_self_test.c which should be run by the
bootloader to ensure that the RNG part of the CAAM is not faulty.
This requires the CAAM driver within barebox to be enabled.

Best regards,
Rouven Czerwinski


