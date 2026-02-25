Delivery-date: Wed, 25 Feb 2026 14:57:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvFO1-005Xcd-1L
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 14:57:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvFO1-0008Rn-Q2
	for lore@pengutronix.de; Wed, 25 Feb 2026 14:57:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zLLSv7uR8a9vvkl+kXi2JM7D4vXPSn+rox+IZdI0IP8=; b=kU40KR1wGEHljLWCpxbNB7qkI4
	JdGtva258Aeuf+wzKudltwJOGt+CTtC9HFlFzFxTq81VP+iEpt9pXnC9nChvCy+IF3uoe5lXUyPqa
	onjkOQxd9YiwhUR0f/RpGGUmIr6OkwGF/Tfx3VMojlSj3A2Ap41iNYLA2MQHneHDpPN4lE9nSIF8F
	shJcD/mzJsxR0kUDL245M0bQlbCdgzmb5Cn6PIL+HplChFEODqHMzEGbFr4zA1n4FN5Y9WlaX+WUV
	9crEdYMSDZcWSEDjziy6KBSRT8UwVauhBkFkEnJCQ1YDKQyl4zQM4LvgGMYyXQRf4SVwMbkRUJxno
	VGFIt7uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFNY-000000049E8-0HEo;
	Wed, 25 Feb 2026 13:56:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFNV-000000049D8-2eoM
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 13:56:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvFNT-0008HT-Tc; Wed, 25 Feb 2026 14:56:35 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvFNS-002ZXh-1D;
	Wed, 25 Feb 2026 14:56:35 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvFNT-0000000A6GW-2kxG;
	Wed, 25 Feb 2026 14:56:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260225115713.2047529-1-a.fatoum@pengutronix.de>
References: <20260225115713.2047529-1-a.fatoum@pengutronix.de>
Message-Id: <177202779565.2407222.11221991979231401040.b4-ty@pengutronix.de>
Date: Wed, 25 Feb 2026 14:56:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_055637_678247_B8B25226 
X-CRM114-Status: UNSURE (   6.61  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] regulator: bcm2835: fix USB-breaking regression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 25 Feb 2026 12:57:12 +0100, Ahmad Fatoum wrote:
> For use in multi-platform configurations, regulator_bcm2835_init() was
> gated behind a lookup for "raspberrypi,bcm2835-firmware"-compatible nodes
> in the live barebox DT.
> 
> The lookup using of_get_compatible_child is erroneous though, because it
> only looks at immediate children and doesn't recurse down.
> 
> [...]

Applied, thanks!

[1/1] regulator: bcm2835: fix USB-breaking regression
      https://git.pengutronix.de/cgit/barebox/commit/?id=5d66ead54959 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



