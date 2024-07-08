Delivery-date: Mon, 08 Jul 2024 14:04:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sQn6n-002lVV-1a
	for lore@lore.pengutronix.de;
	Mon, 08 Jul 2024 14:04:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sQn6m-0001rd-PA
	for lore@pengutronix.de; Mon, 08 Jul 2024 14:04:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6zadFeQNHGHCEZkACFLxUvwTTiyVFr1vHDVlX2beUqc=; b=OPrymRMmTmYkACg1CVHqxysUs4
	+DDRbNttjA/oZyP34FQitDsnSUNWue/oRKGiS+uyqOEl/5rHfXw3JbracZ0I7HfuV2SKsfnEH2MZJ
	O+YPgQUPOpo5Y4x30nPMU7i0wPYVVRDfoJ5G6fBJZEXxN+iDuIQP3yZMg/9txVLChcGxl7+9VJqHo
	HdgQdTTw8iwkYsjea4jMk8k842morkfohVeMEQr9XlMUFIyjbd+uuHPM76X/vYP5JAZArkCuBA1jY
	8zVD7aXxNXzHaAAnhrehH+vL8T3uz7oLdhtN55kkd6KvToYHAJY4M1h7JbSD9+sAMcDvLMcqXitc6
	qPv/7rRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQn6D-00000003gzN-24EN;
	Mon, 08 Jul 2024 12:04:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQn6A-00000003gxR-1M2a
	for barebox@lists.infradead.org;
	Mon, 08 Jul 2024 12:04:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1sQn69-0001l7-0a; Mon, 08 Jul 2024 14:04:01 +0200
Message-ID: <08328fc09813504bd001b01924cab1002b2a770a.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Date: Mon, 08 Jul 2024 14:04:00 +0200
In-Reply-To: <lybk38xg9s.fsf@ensc-pc.intern.sigma-chemnitz.de>
References: <lyjzhwxjwj.fsf@ensc-pc.intern.sigma-chemnitz.de>
	 <5c3923960eb059b2edc64a73cf53a75c5a28476c.camel@pengutronix.de>
	 <lybk38xg9s.fsf@ensc-pc.intern.sigma-chemnitz.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_050402_383494_5B6DF195 
X-CRM114-Status: GOOD (  15.58  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Major memory performance decline from u-boot to barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Montag, dem 08.07.2024 um 13:41 +0200 schrieb Enrico Scholz:
> Lucas Stach <l.stach@pengutronix.de> writes:
>=20
> > > I have a karo tx6s module (imx6s, 512 MiB RAM) which is shipped with =
an
> > > ancient u-boot 2015 bootloader.
> > >=20
> > > barebox 2024.07 works out-of-the box on it. But under the booted linu=
x
> > > system a see a major regression in memory performance.
> >=20
> > The most likely cause is that Barebox applies the workaround for ARM
> > erratum 845369, which has a major impact on streaming writes and thus
> > both memset and memcpy performance. The old U-Boot probably does not
> > include this workaround.
> >=20
> > You may check this theory by removing the call to
> > enable_arm_errata_845369_war in imx6_cpu_lowlevel_init.
>=20
> Thanks; after disabling this workaround, benchmarks are reporting high
> numbers again.
>=20
Note that while benchmarks are affected heavily, most real workloads
don't exhibit a dramatic loss in performance, at least when they don't
move a lot of data via the CPU, which is a bad idea on this platform
anyway.

> Would it make sense to enable this workaround conditionally?  E.g. the
> imx6s is not affected by this erratum because it has only one core and
> no ACP.

Yes, this might make sense. The call activating the workaround in
imx6_cpu_lowlevel_init could be guarded by reading the number of
available CPU cores from the SCU, only installing the workaround if
there is more than a single CPU present.

Regards,
Lucas


