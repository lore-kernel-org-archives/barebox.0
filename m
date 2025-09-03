Delivery-date: Wed, 03 Sep 2025 08:20:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgqu-007Y4Z-2D
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 08:20:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgqt-0007Y3-4h
	for lore@pengutronix.de; Wed, 03 Sep 2025 08:20:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FcWBlihkJ9+5MVU4QghJglti3jqnCIzlfgX13HIHXDg=; b=P9dN46IKHcP0mywUBNA4wCczp8
	TA3HVguxCeLJb4vJxKwDYyeWOY+jRbrvlokHZJXxyXXfqP5k9bG8sEhPuyB2Yb9wCOy2hECeLVxzK
	uijieNlncbF+NC7wMW8Oo/z/9uA5KSw306ZrsJAd3CByQIj4hXiesaxpUbjoxcqomnbqcwDerfo+L
	1SkJWzk0D0vG2RgYAsVtL+p7vuj0ultfaEutxt+zIojzDm8xWlL5wLJPw2FSRVeoQmFz/GP3bV6Nt
	XvnQuhMZubZwmJh/vPoqmxiWBpFdup/z0D0IcpqPFXESMlOtgo5bE6QLfVS/GpAicsKJET7/dXNz2
	xl0XpVwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgqU-00000004Z5Y-3dQB;
	Wed, 03 Sep 2025 06:19:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgoh-00000004Xvh-25sl
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 06:18:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgog-0006rV-5r; Wed, 03 Sep 2025 08:17:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgof-003Vxp-3D;
	Wed, 03 Sep 2025 08:17:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgof-00000009kiI-3vf2;
	Wed, 03 Sep 2025 08:17:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250901153852.2554758-1-a.fatoum@pengutronix.de>
References: <20250901153852.2554758-1-a.fatoum@pengutronix.de>
Message-Id: <175688027793.2324451.1226334497693855536.b4-ty@pengutronix.de>
Date: Wed, 03 Sep 2025 08:17:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_231759_542601_1F55BD24 
X-CRM114-Status: UNSURE (   8.14  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] ci: update to Trixie to use make --shuffle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Sep 2025 17:38:02 +0200, Ahmad Fatoum wrote:
> Debian Trixie ships with GNU make v4.4.1.
> 
> v4.4 introduced a new --shuffle option that shuffles goal and prerequisite
> ordering to hopefully catch issues around non-deterministic build order
> in parallel makefiles.
> 
> Let's enable this option for all our defconfig builds. When a build
> fails, make will also print to stderr a shuffle=<integer> line.
> 
> [...]

Applied, thanks!

[1/3] ci: container: update components installed on top to newest versions
      https://git.pengutronix.de/cgit/barebox/commit/?id=d37db5da32f3 (link may not be stable)
[2/3] ci: container: update to Debian Trixie
      https://git.pengutronix.de/cgit/barebox/commit/?id=97241a3949b1 (link may not be stable)
[3/3] ci: build: shuffle goal and prerequisite ordering
      https://git.pengutronix.de/cgit/barebox/commit/?id=b9c0f4bd179b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



