Delivery-date: Tue, 02 Sep 2025 21:13:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWRQ-007NgD-1m
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 21:13:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWRP-000752-Cg
	for lore@pengutronix.de; Tue, 02 Sep 2025 21:13:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zSJxsqgJpREeakgvAvifcrcO0mWtUKi6DbjdAw5S+EY=; b=KRZzSPbLbMjBN7FCke+01cy3A4
	8aOhau3N7sO2inU96mmhN60E96VUu6umDHkK9zhEv4/1HG8hfY0Qse+5VbZ4IGeYa+8Kpe4G7o+z7
	rgeFFMppyJVdz7M5PDxtckQmSQny+4oIeBj1ewI9/6znxYGJplY46qS9PApyY/qyXOthXWlQY2j2q
	6T8YH7VmcaPWnXv4hsGhjmJncpk4m/6td2g/gtVMrg9lEjNfiHuPHMGJ3jlukrgifBOEnBcR80Stb
	oJhRAmsebYNfK1g1tZg3TSUV2kut1xHGG49+zn8b6SL6hoKZNNyvG5rvvyrNVync533dpNAi0R5Sc
	o0FjqaxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utWQv-00000001e3I-01sM;
	Tue, 02 Sep 2025 19:12:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utSHT-00000000SEs-0t2y
	for barebox@lists.infradead.org;
	Tue, 02 Sep 2025 14:46:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1utSHR-0008DB-GW; Tue, 02 Sep 2025 16:46:41 +0200
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1utSHR-003PQm-02;
	Tue, 02 Sep 2025 16:46:41 +0200
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ptz.office.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1utSHQ-009MkW-2h;
	Tue, 02 Sep 2025 16:46:40 +0200
Message-ID: <28a00db6c1bdf69f93e6ef7210e11c5dfa368411.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Tobias Waldekranz
	 <tobias@waldekranz.com>, barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>, Michael Olbrich
 <mol@pengutronix.de>,  anis chali <chalianis1@gmail.com>, Marco Felsch
 <m.felsch@pengutronix.de>
Date: Tue, 02 Sep 2025 16:46:40 +0200
In-Reply-To: <24ac7ede-0f36-4283-b654-9cccdfa97a37@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
	 <07a7e6e0-f0dd-4969-888a-b616fe337158@pengutronix.de>
	 <87frd83p9h.fsf@waldekranz.com>
	 <24ac7ede-0f36-4283-b654-9cccdfa97a37@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_074643_249290_52C96D83 
X-CRM114-Status: GOOD (  18.08  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 2025-09-02 at 11:03 +0200, Ahmad Fatoum wrote:
> > Yeah I noticed that, _very_ useful. For Infix, if we end up going with
> > LVM, I suspect we won't be able to send all of that info along with the
> > commandline, and will end up needing to figure that out (again) in an
> > initramfs - but for most cases I think it would work really well!
>=20
> Ah, didn't think of LVM. If mix-and-match is no problem for you, then
> doing it in the initramfs is a workable solution of course.

If you are thinking about LVM, you may want to take a look at how Android i=
s
using dm-linear for "dynamic partitions":
https://source.android.com/docs/core/ota/dynamic_partitions/ab_launch
https://source.android.com/docs/core/ota/dynamic_partitions/implement

This is also related to virtual A/B:
https://source.android.com/docs/core/ota/virtual_ab

The components are "snapuserd" and "dm-user" (which was not merged):
https://lpc.events/event/11/contributions/1049/attachments/826/1562/2021%20=
LPC_%20dm-snapshot%20in%20user%20space.pdf
https://lwn.net/Articles/838986/

I'm not sure what they use at the moment...

Regards,
Jan

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


