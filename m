Delivery-date: Fri, 21 Apr 2023 08:24:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppkBh-00BBh2-QO
	for lore@lore.pengutronix.de; Fri, 21 Apr 2023 08:24:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppkBh-00055G-MO
	for lore@pengutronix.de; Fri, 21 Apr 2023 08:24:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uyvd2K+fer2HYzHGfGgbif0CeUhh+pxcTAj6AJyWjcM=; b=VYS3xhKlULwgGsHAbbGVngwvlE
	GbIjIrBxOTIXXc7uyy4hgBp+0tZsxkSmjfs8nTB1rmh3X688yafl1Zru9cfwyKBqt/Xx5VGzwypj0
	Pr51x54Yb5vxj/J/eL51i1XXG+tFKtWwW9UMHhYZ4IWYV+eaxnlKev+OMfRo2LWdDQfXbAjZmF+zI
	6lS2vh93OPTbUpPvI68Sd2fOafh6NneC1U8ImYcRZ8B/WInUrIq17Cr2zaiDJodCOqVWfqS7ymBXT
	693gt/XWaQoZ9AEOkYX5dY37OrPBY/9GsGKh7YhjD/Lt4PcLafq27dnIYf0XynfMh0580rdWtV7WN
	09NqdCaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppkAI-009o70-2o;
	Fri, 21 Apr 2023 06:22:38 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppkAF-009o50-1k
	for barebox@lists.infradead.org;
	Fri, 21 Apr 2023 06:22:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Uyvd2K+fer2HYzHGfGgbif0CeUhh+pxcTAj6AJyWjcM=; b=XC152tuIIEQH+ifH4WA2G4e34V
	iwI3IGwDchPwDeHqpVl+OrIzxeAQCnAO5XKg/Y20XWn7vIS1/y88TyohDJee1fdBvqG+9wtq4iUFa
	zPoLIvnUxzY9bC+kudZ/SbwdDBR737CKMgGTig2UmXouqktDh0k8RVXowD3e/CtjMOQXXd4xjXMKU
	3BFit5lFD3TULtyrAWxyRbZZvIE5KKANQZhqnxH622llsvvvxVRnMLiaYVC6kmYddEMbNv5yA9je2
	8FR1Agl/ZGeHJhP5AdagpORP3R778aZXBOOC0blBzUaUurBKa+BZHslmmJSn/hB9WLJZGfOncqnTQ
	KzMgxrzg==;
Received: from p200300ccff0adc001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:cc:ff0a:dc00:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <andreas@kemnade.info>)
	id 1ppkAA-00042I-Me
	for barebox@lists.infradead.org; Fri, 21 Apr 2023 08:22:30 +0200
Date: Fri, 21 Apr 2023 08:22:29 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: barebox@lists.infradead.org
Message-ID: <20230421082229.1b2d537e@aktux>
In-Reply-To: <20230420195255.1153119-1-andreas@kemnade.info>
References: <20230420195255.1153119-1-andreas@kemnade.info>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.24; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230420_232235_757324_96F555CA 
X-CRM114-Status: UNSURE (   4.47  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: bbu: fix compilation without
 CONFIG_BAREBOX_UPDATE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, 20 Apr 2023 21:52:55 +0200
Andreas Kemnade <andreas@kemnade.info> wrote:

> Fix
> include/mach/imx/bbu.h:208:1: error: expected identifier or =E2=80=98(=E2=
=80=99 before =E2=80=98{=E2=80=99 token
>=20
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>

should probably have added a fixes:
Fixes: 6e0cb133be ("ARM: i.MX: bbu: add FlexSPI update handler")


