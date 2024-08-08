Delivery-date: Thu, 08 Aug 2024 11:46:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbzjI-007SCw-2y
	for lore@lore.pengutronix.de;
	Thu, 08 Aug 2024 11:46:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbzjI-0001ES-Bk
	for lore@pengutronix.de; Thu, 08 Aug 2024 11:46:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-type:MIME-Version:Subject:Date:Message-ID:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EOOpCw2x1/EaRbLAD00Es01xsCV2Ek0T1ezenxIwiGI=; b=Z60/weGwk0Ce9dOM5iE1h5JBBI
	/JVIQ3lQBDI+nrGU5d/o1cgc5PuU1fAZNv0nj9R7ayteoRn9zVLA1vjEZ5By5h8+4Nkx/csextHrt
	xy71F3tzqiiMpStpCvdjnItd1AFm0uepBAM3e6fmb6VQpKJ/ZA75EKSWBoFdm2Va00bKK6wJakvG4
	DTjqReggr6mB4CmSEOfym55zVdmGuevqYWTlMfLBmCNiEzHZ1Jf8z7SXQVmOJa753hYfTBO4fB9At
	t6cHaCvS9I00AvMEutKFVnrSlnPbvS5aqVRvf77A5qjLMmu/IH9Yf3lq0NCEWGsNXZ7TMEFC4ul6z
	ad04zluw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzid-00000007lPU-0MOP;
	Thu, 08 Aug 2024 09:46:03 +0000
Received: from mr5.vodafonemail.de ([145.253.228.165])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbziZ-00000007lMn-2MdN
	for barebox@lists.infradead.org;
	Thu, 08 Aug 2024 09:46:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arcor.de;
	s=vfde-mb-mr2-23sep; t=1723110350;
	bh=EOOpCw2x1/EaRbLAD00Es01xsCV2Ek0T1ezenxIwiGI=;
	h=From:To:Message-ID:Date:Subject:Content-type:From;
	b=Elw838CwOjiS0ZzaZxnwasM7SGcyRtd0LQ9I7etVQVDhs+Rmzbtsg+mbR6HdRu743
	 7VtsmgQShJCYS/UcWSiMc7dyKr1ZyWBwduN3+yrhx/LacTLSuEXQWuCa6qLJyHijsc
	 eyC2IYCilF6nERXvUm4WOtwLq8+bUEXxJWHz5Wb8=
Received: from mp102.fra-mediabeam.com (unknown [10.0.0.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mr5.vodafonemail.de (Postfix) with ESMTPS id 4WfhxV57Mjz1y4K
	for <barebox@lists.infradead.org>; Thu,  8 Aug 2024 09:45:50 +0000 (UTC)
Received: from mailbackend01 (unknown [10.0.0.2])
	by mp102.fra-mediabeam.com (Postfix) with ESMTP id 4WfhxV1ZS4z8t5g
	for <barebox@lists.infradead.org>; Thu,  8 Aug 2024 09:45:50 +0000 (UTC)
Received: from [212.43.72.26]
	by mail.vodafone.de via HTTP; Thu, 08 Aug 2024 11:45:45 +0200
From: giorgio.nicole@arcor.de
To: barebox@lists.infradead.org
Message-ID: <48fe5dbe42e14b518a86e25bf21e4425@arcor.de>
Date: Thu, 08 Aug 2024 11:45:45 +0200
X-Priority: 3
MIME-Version: 1.0
Content-type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-purgate-type: clean
X-purgate: clean
X-purgate-size: 787
X-purgate-ID: 155817::1723110350-ABFFE11D-A1617949/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_024600_051070_4D59A2A2 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MALFORMED_FREEMAIL,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: barebox on EFI bios and secure boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



Hi,

I use barebox to boot a linux kernel on an Intel atom based PC with an =
EFI bios and this just works=2E

Now I wanted to configure the bios to enable the secure boot mode: this=
 means I tried to write some
EFI variables (db, dbx, KEK, PK); for this I used the efitools utils (e=
fi-updatevar for example) but it didn't
worked: I always get an 'Invalid argument' error=2E

After some unsuccessful tries I booted the linux kernel directly from t=
he bios, without barebox and in this
case the efi-updatevar tool worked as expected; so I suppose that start=
ing barebox has some kind of effect
on the persistent store for the efi vars=2E

Does anyone have similar issues or a suggestion about what can be check=
ed to fix this ???

thank you,

giorgio




