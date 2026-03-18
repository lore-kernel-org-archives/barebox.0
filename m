Delivery-date: Wed, 18 Mar 2026 10:57:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2nep-0028jI-1x
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 10:57:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2nep-0002CB-3F
	for lore@pengutronix.de; Wed, 18 Mar 2026 10:57:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mzAHnFfaPngaHQx9QmzW75iIpeACwIiwPklJUAwHMzM=; b=m9DWRCkOr9b60a6mpR4WymFjq8
	XaIxanPNHebyKqpzX/Zy1CHJsH34AIAYEd85Kgri0hxANiXsNX/VsoivFjjDaIKOXiYux3aO0QzkH
	LOSg7mikKZlZ8dhFrSC2BqtbX+qPCPFcGl5Fugc7V4XxJk8Lkk9C5OBljuR/oH9whbuppgQTUJhEv
	6x3dpNABZGsiVXXnNV1AmTUPrpGLPcbNf7pzIxdttSpKrNjwQzY+WVEnIrEqbIfJUHj1wddlgz9ol
	bIEkig1mk4UncfWQqPjyZ+bUDf5vPCKnoy8ef/ImR7MHL2QIjNBq5OITkF826ZbbH5T9QxPIyi94z
	dqmpyBmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2neM-00000008AlZ-1S2T;
	Wed, 18 Mar 2026 09:57:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2neK-00000008AlG-0Lv6
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 09:57:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2neI-00023Z-Jj; Wed, 18 Mar 2026 10:57:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2neI-000t1A-1N;
	Wed, 18 Mar 2026 10:57:10 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2neI-0000000CNQa-1QVH;
	Wed, 18 Mar 2026 10:57:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
References: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
Message-Id: <177382783033.2948380.7981698552782103802.b4-ty@pengutronix.de>
Date: Wed, 18 Mar 2026 10:57:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_025712_131870_53C06AAC 
X-CRM114-Status: UNSURE (   6.86  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 0/5] Add helper for security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 18 Mar 2026 10:21:58 +0100, Fabian Pflug wrote:
> This series adds helper functions to the security policy framework to
> do additional work based on the selected policy.
> Like adding the policy name to the commandline and configuring pinmux
> based on the selected policy.
> 
> 

Applied, thanks!

[1/5] of: add of_property_write_string_array()
      https://git.pengutronix.de/cgit/barebox/commit/?id=a8ecb979939e (link may not be stable)
[2/5] common: bootm: add policy to commandline
      https://git.pengutronix.de/cgit/barebox/commit/?id=d89e470bf141 (link may not be stable)
[3/5] security: policy: set active policy on boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=6723f82f4041 (link may not be stable)
[4/5] security: configure pinctrl based on policy name
      https://git.pengutronix.de/cgit/barebox/commit/?id=821e5618a05b (link may not be stable)
[5/5] security: kernel_pinctrl: fixup pinctrl in kernel dts
      https://git.pengutronix.de/cgit/barebox/commit/?id=c5ad4d3f6fcf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



