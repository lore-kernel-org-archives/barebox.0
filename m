Delivery-date: Wed, 02 Jul 2025 09:51:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWsFe-00DEOK-36
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 09:51:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWsFe-00012p-Dv
	for lore@pengutronix.de; Wed, 02 Jul 2025 09:51:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zRzkG0PuoT48Y0dI9OobAZRuGq7M7Ei6zXlsDLhCdp4=; b=fCjURDcIq/dj7u+HMrQASyJqiG
	OXVhcrkKeRKc6dmS9telkSqfwz2qn4J3XZUJ/tUTZZjMcT2gIbURfEcQ+QQCIvs2fibG5u9uFJAb5
	XonZWUMT528V/cvCoIO4AJoPRuR9aKtS4X83Nj0t1EuVJ8TielZhIUygwLCqZys+EdUcjJFw+cutH
	vjJOWKQWTbMVLuP1OPdDTRPK4Y6zgEWVaQeZPRtJrtKEhpVuNFF2PdrxAVqa+d5bjGUOOz9GGUfvU
	2h2UV33DRMFwQAZHJsEyVWoADrrXCTM9Hd/qBuMKo6zXNjtxPju7LARn1JkQI5Nkef2D4W2M4No3z
	0T8wWMig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWsFR-00000007Y0k-2Sob;
	Wed, 02 Jul 2025 07:51:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWr4L-00000007Pex-2y9c
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 06:35:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWr4K-0003Nw-8y; Wed, 02 Jul 2025 08:35:44 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWr4K-006OQ6-0H;
	Wed, 02 Jul 2025 08:35:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWr4K-00GK8I-03;
	Wed, 02 Jul 2025 08:35:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250701131802.465283-1-a.fatoum@pengutronix.de>
References: <20250701131802.465283-1-a.fatoum@pengutronix.de>
Message-Id: <175143814401.3890522.833739317448888933.b4-ty@pengutronix.de>
Date: Wed, 02 Jul 2025 08:35:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_233545_758109_08B84287 
X-CRM114-Status: UNSURE (   7.15  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] clock: make SECOND/MSECOND/USECOND constants a
 constant expression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Jul 2025 15:18:01 +0200, Ahmad Fatoum wrote:
> This makes the constants potentially usable in more places than before.
> 
> While at it, move the definitions to the start of the header to make them
> usable within.
> 
> 

Applied, thanks!

[1/2] clock: make SECOND/MSECOND/USECOND constants a constant expression
      https://git.pengutronix.de/cgit/barebox/commit/?id=c5263b57ae3b (link may not be stable)
[2/2] console: fix loose coupling between getchar and is_timeout delays
      https://git.pengutronix.de/cgit/barebox/commit/?id=25eb5d04442a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



