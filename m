Delivery-date: Thu, 07 May 2026 14:47:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKy8z-001y1n-1b
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 14:47:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKy8u-0007lJ-Ha
	for lore@pengutronix.de; Thu, 07 May 2026 14:47:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LWfb8Zx9DdVJImAe3WZOt2lpDS8A7qWM0Ixj1uFza48=; b=yRjp2RMyq0nCEPlvTh3p1qC+dx
	i/joXCcg9SSIYAdDzXgAIztkNePhrI7ylMwh9nI2N2qL8Yn622RzNvGE8Lg3QDyN9BqclEUMo/4Lj
	95ck4+JAPNv7InuKngLDtlZeOR+qjrddFayzRhZz7r0OxSOrI81y/XBatO3SmyNPqJns4OwAp6ssX
	VdpBj091n/21e9v+KMIdv+4uGa2HqB35WWJAexbx0BqeuCZrXT6U5vTT9yyrDZ+FDVREmQoUSIvjr
	KzVGgE8e44W9iSruby8HHL+Fxubl6NewqK3sEEUYSTmOfvlIODAwRL8An1DZg9271CJzrOD6+Zm6T
	jvguiyFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7v-00000003Vin-2Ylq;
	Thu, 07 May 2026 10:38:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7u-00000003Vhq-0p9n
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 10:38:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=LWfb8Zx9DdVJImAe3WZOt2lpDS8A7qWM0Ixj1uFza48=; b=cDlt0xqizdytRTRm4mdKBlF0Sk
	XFJG2BSI37UKakBCQg07deArfYtywIfHUiwWBLW0Q0XwqzkmYRDB92lHIdo1YFbIzRX9RzFh0HLik
	vGmTZUm5fExlXr8y0KvTjv50rocVDbdKd+2GWNiXVsKf5DyGCafh9stCxJ2waWO7ZRdte7azjUrDt
	G3k29DBZO+UKRUgGoM/361Nu9tHXfyKYpQqlEjThTrJnUp+Uj1zJVK8DnSqpCBj93VBCx/kcNj1d9
	peesZE/DNSq/fh5gFovF7cz5vkgsQNlOP6wdN9LuamnwZ7Uldb+0N3ZYD+Yub+hWe2B6AWjfkdR81
	KbRbiFgg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7o-00000003ENw-1MSe
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 10:38:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7k-0000T7-Fh; Thu, 07 May 2026 12:38:32 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7j-000uD4-2A;
	Thu, 07 May 2026 12:38:32 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7k-0000000BjIN-039k;
	Thu, 07 May 2026 12:38:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260503083304.2765131-1-a.fatoum@barebox.org>
References: <20260503083304.2765131-1-a.fatoum@barebox.org>
Message-Id: <177815031201.2795644.15900418553099408956.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 12:38:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_113837_071917_A6828339 
X-CRM114-Status: UNSURE (   7.30  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: splash: optimize background fill
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 03 May 2026 10:32:54 +0200, Ahmad Fatoum wrote:
> The background color is specified to the command as 0xttrrggbb,
> which is not necessarily the native color format of the framebuffer and
> thus gu_memset_pixel() will do color conversion.
> 
> Instead of redoing the color conversion for every line, let's just
> do it once in advance and then keep reusing it.
> 
> [...]

Applied, thanks!

[1/1] commands: splash: optimize background fill
      https://git.pengutronix.de/cgit/barebox/commit/?id=2ebfe22faf64 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



