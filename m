Delivery-date: Tue, 05 Aug 2025 11:07:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDdh-007F6K-1u
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:07:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDdh-0008Hy-1b
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:07:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3n1lZCV5mVkLecP3ce6Uri0RRzoJSkbTu0LBTRGISxU=; b=Q3Pv6UZIXAnglh0dL9O6TrtDfI
	27ipbyW4EPrUPSSEWKXhc3h7N6PVCe63J0a58qOYjAkDFL7ngUszKWnVElAF9Ewbxcv06O4QtTYrc
	03VLZzgGyK3KHSLKU5qngSSYJQ7YoyX9Ycbnip0gWwWlxOVYW0lg7nVAQ9AuaAtevVEQ9NgXjpDwE
	MgRqT0qeeP7JOHmcB2evx8LSfP6P7D5bml/x5ZHcTJNBEjawXjjHhH19nV0+1724/r/GjxkgUvZ/2
	Px69WjsEHRirvVkfmWuNCMYHg2Ydw0bgQdIBVMDorwcIszzBKBNGQ57wIWPuq9q2t+AKpjgv3S6G7
	lv8QrfRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDdG-0000000CJ0l-0DOc;
	Tue, 05 Aug 2025 09:06:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujD9q-0000000CCOI-27vU
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 08:36:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD9p-0004iN-43; Tue, 05 Aug 2025 10:36:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD9o-00C0nK-31;
	Tue, 05 Aug 2025 10:36:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD9o-00EgLB-2p;
	Tue, 05 Aug 2025 10:36:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250707085636.4019256-1-a.fatoum@pengutronix.de>
References: <20250707085636.4019256-1-a.fatoum@pengutronix.de>
Message-Id: <175438298887.3499324.12664733873346182028.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 10:36:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_013630_548608_9A857F9F 
X-CRM114-Status: UNSURE (   8.22  )
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
Subject: Re: [PATCH] Documentation: boards: k3: fix typo in build
 instructions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 07 Jul 2025 10:56:36 +0200, Ahmad Fatoum wrote:
> The file starts with defining and exporting CROSS_COMPILE_32 and
> CROSS_COMPILE_64 environment variables, which are used for building the
> individual components of the boot chain.
> 
> CROSS_COMPILE should be set to the $variable, so it expands correctly.
> 
> 
> [...]

Applied, thanks!

[1/1] Documentation: boards: k3: fix typo in build instructions
      https://git.pengutronix.de/cgit/barebox/commit/?id=a170a6f8692b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



