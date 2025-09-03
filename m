Delivery-date: Wed, 03 Sep 2025 08:24:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgv1-007YA8-0k
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 08:24:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utguz-0000Ph-TZ
	for lore@pengutronix.de; Wed, 03 Sep 2025 08:24:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5RC8TUkn7gV4RiA6DEHuWtpf97dX0J9QjlgMbepyF+U=; b=KPD3jZZbGpztrZGXGeoQ8ToSvO
	An5W1/KEyzmjdQ+7hhbLzyCjlV7KJa/mhTo+bplM5SWuJfwTmNb1xXRXO81wHtblTTDGJs82thD7M
	utjukeoNgV1fx2b4/+6UA8WsA9cJpBXcsKPME6ePQpnCIu0bdDRVab0S4TdLjc0Agpwa+SPp/5mcz
	wyYXqvOEyKfUXpfWQWEuAC8DvmCzokT2IX/yGSg9byp1kMN3kyfU4c6oMObDLkFqdYN4t8dCsFt6Y
	IwPfQvzCNMU630eLvYVwqO9VoSyfoG/4yCugdD2t26b2ACXBpCip7Ecd6kG0iGdf4PT1eoelR75E0
	+W5pFL1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utguc-00000004bXh-2Htw;
	Wed, 03 Sep 2025 06:24:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgtM-00000004b1W-0ZHF
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 06:22:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgtK-0008HK-W1; Wed, 03 Sep 2025 08:22:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgtK-003Vyi-2b;
	Wed, 03 Sep 2025 08:22:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgtK-00000009l29-38jh;
	Wed, 03 Sep 2025 08:22:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250829131142.415464-1-s.hauer@pengutronix.de>
References: <20250829131142.415464-1-s.hauer@pengutronix.de>
Message-Id: <175688056674.2325682.15802752624445659200.b4-ty@pengutronix.de>
Date: Wed, 03 Sep 2025 08:22:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_232248_180444_01EA6996 
X-CRM114-Status: UNSURE (   6.25  )
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
Subject: Re: [PATCH] ARM: mmu: fix <unknown> mapping print
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 29 Aug 2025 15:11:42 +0200, Sascha Hauer wrote:
> Mask out the ARCH_MAP_FLAG_PAGEWISE bit in map_type_tostr(). Otherwise
> mapping types with this bit set end up being <unknown>.
> 
> 

Applied, thanks!

[1/1] ARM: mmu: fix <unknown> mapping print
      https://git.pengutronix.de/cgit/barebox/commit/?id=258c624a4e24 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



