Delivery-date: Wed, 05 Feb 2025 11:32:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfcho-008lQL-2C
	for lore@lore.pengutronix.de;
	Wed, 05 Feb 2025 11:32:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfcho-0002XV-Q3
	for lore@pengutronix.de; Wed, 05 Feb 2025 11:32:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:
	From:Subject:Cc:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kq4RjLvwPHhfh8MiajWxoBJby+F+Ik+lmtAru4T2p4k=; b=P17mQmsSn3alergvgcq8JSpVdp
	J5qstFDrpf1dyY9843u6xqPGV4p1uQdUm6T8RCd3GKCVzam5tZ9P8CWq7i5FPNqpCVH9n7iOopqwv
	DbaLC57vDkNfr9A4zX24swzjHbtLqsfKF3bEqLy1hkUA8JEWiS73r0fwWNAx3YPYsSgDEM7xVdKZp
	j1hXkAXBUX68ns447WmWXMnYaf5htgui97zuMy2ztYpQJX70bBmvjabSEMtOx1xZ5zNv6oCahv7QL
	isFSk5Iw28vskbDRl7mgLAs9y0OQR9vRrTIufxucpstBpKCHcH2XV9817KTJHKHGezYk3zhGo1uu2
	HKwgVB0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfcgx-00000002tQa-3BLo;
	Wed, 05 Feb 2025 10:31:35 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfcgu-00000002tPH-2kY1
	for barebox@lists.infradead.org;
	Wed, 05 Feb 2025 10:31:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1738751490;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Kq4RjLvwPHhfh8MiajWxoBJby+F+Ik+lmtAru4T2p4k=;
	b=OBQUpfP0m5XGioyFRZmQ2oyWhflqXwlyldwE83gWjcKUfmTkWmBxaGGjYknML/BJjmBrQN
	5RXAW9SCOOQRSJnt+Z8p1bM2USqXYBB2fUfFN0Xm8dTtUa34CQRTrx4hX1drdGBYMhWiKi
	mZ03a9BL6BADZHYuc9LAsy+2FvP/faIgb5HQC3LEkxGkpu9+S8SPXSanheB4A6Ybl33muk
	gIwe7E+Vnak1SYd/B0zKdaDQQvH9qX5LFgVUDIrkNixMetU/S7ztpUu5EH5IN70wSvLseD
	eV74tNqQfYBpsq72eKqKrwMHGsjc+llI4dg/DwAxu18HA+aJ1BoZ0GnKrXShRg==
Received: from localhost (<unknown> [2a01:e0a:12:d860:671e:1939:7a9a:a2ba])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 94d4f275 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 5 Feb 2025 11:31:30 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 05 Feb 2025 11:31:29 +0100
Message-Id: <D7KFYN803WNQ.BOAE8FUKU416@zdiv.net>
Cc: "Khem Raj" <raj.khem@gmail.com>, =?utf-8?q?Enrico_J=C3=B6rns?=
 <ejo@pengutronix.de>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>, <barebox@lists.infradead.org>
X-Mailer: aerc 0.19.0
References: <20250127195109.3928003-1-a.fatoum@pengutronix.de>
In-Reply-To: <20250127195109.3928003-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_023133_008232_20252A20 
X-CRM114-Status: UNSURE (   8.15  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFT v3] scripts: define _GNU_SOURCE for all source files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tested on alpine linux with musl 1.2.5, and it compiled without issue

On Mon Jan 27, 2025 at 8:51 PM CET, Ahmad Fatoum wrote:
> musl doesn't define loff_t, unless _GNU_SOURCE is defined, which
> we don't do everywhere and glibc didn't mind.
>
> This led to build errors with musl when code makes it into
> scripts/ that uses loff_t. This was already fixed once e.g. in commit
> c0d065fb0aa0 ("scripts: bareboximd: remove usage of loff_t").
>
> To fix this issue for good, let's define _GNU_SOURCE globally for all fil=
es.
>
> Link: https://lore.kernel.org/all/CAMKF1sqX7gFCEH78fHS+jkUSieL5crAU_RwAUO=
-daJL0u+fj0g@mail.gmail.com/
> Fixes: 5171f4d0696f ("scripts: implement read_fd and pread_full for tools=
")
> Suggested-by: Khem Raj <raj.khem@gmail.com>
> Reported-by: Enrico J=C3=B6rns <ejo@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> @Enrico, please give this a test. I only tested against glibc.
>
> v2 -> v3:
>   - set _GNU_SOURCE instead of defining loff_t (Khem)
> v1 -> v2:
>   - include <linux/types.h> from scripts/common.h (Enrico)
> v2 was here:
>   https://lore.barebox.org/barebox/20250127143146.2965544-1-a.fatoum@peng=
utronix.de/T/#u
> ---


