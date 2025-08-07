Delivery-date: Thu, 07 Aug 2025 08:03:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujtj0-007tKO-2d
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 08:03:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujtj0-0000rb-AQ
	for lore@pengutronix.de; Thu, 07 Aug 2025 08:03:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9tfWfgUU16r4gJwVXC+i5YYN++45G6B94a1W/aSHaNs=; b=VmBkPNqlhxna6WaMppiOmV3i5y
	WIO/yphf+GU7Grx8C1b/HYH84XEZAm1Jw7WLfKrWLIYBWcuoU1Z8uFEgM55jC2ZDqoXeiYWhETJ/j
	ORyBpcSbABpWQJ4fClsK/QV2MqInxypv4apFJn7IBOAXtwx5lGmPcUPQ6PafzTnZk/3YAeCm7khL+
	gbBaDMlhZ7wU7cAaClv+H0acqPBpG48YYYpncPdar4NTFKHTaFWJ5JXfgukPStOicVsWExhP5KQCQ
	lh8sSPxWF3JsN53VIa6iymjNsDYjtNMHLm8QJ0O2szMj/pqEP+SdygoA7t3QpA8yeG4irfcAWcEsW
	+x0vT6rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujtiY-0000000HLSP-434z;
	Thu, 07 Aug 2025 06:03:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujtiN-0000000HLRj-18Ey
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 06:03:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujtiM-0000gl-1I; Thu, 07 Aug 2025 08:02:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujtiL-00CKF0-2l;
	Thu, 07 Aug 2025 08:02:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujtiL-006dmo-2Y;
	Thu, 07 Aug 2025 08:02:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250806124620.2800123-1-a.fatoum@barebox.org>
References: <20250806124620.2800123-1-a.fatoum@barebox.org>
Message-Id: <175454657778.1582845.11820518712546701814.b4-ty@pengutronix.de>
Date: Thu, 07 Aug 2025 08:02:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_230259_312632_E32E16E2 
X-CRM114-Status: UNSURE (   7.03  )
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
Subject: Re: [PATCH] ci: pytest: print labgrid console output inline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Aug 2025 14:46:20 +0200, Ahmad Fatoum wrote:
> Makes it easier to debug issues instead of having to download the
> console_main files:
> 
> - Print the console_main files inline on error
> - Collect all console_main files at the end
> 
> 
> [...]

Applied, thanks!

[1/1] ci: pytest: print labgrid console output inline
      https://git.pengutronix.de/cgit/barebox/commit/?id=bb2142e78295 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



