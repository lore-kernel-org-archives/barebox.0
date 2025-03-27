Delivery-date: Thu, 27 Mar 2025 08:47:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txhxk-004mPN-0f
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 08:47:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txhxj-0000zT-M7
	for lore@pengutronix.de; Thu, 27 Mar 2025 08:47:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uy6FZlv0YQUN5tw8ia9PLoo7/lpFgj1eL8/Sro/hOwc=; b=ocHaP9bRDaOzJHLTE/8F7LW8HS
	frNHP/oAWELAQKNIoTJjI/sVJgr9kxxEFl8WRHOQ4Hr6Vpc7U7eQQ+yeV9Cx0XipDD/qCNbrk2+f2
	BUi4JAxKRfmHAAPawCMgYIpUhcNLpRFdz87WwO2dn7jLlB9Ra9QvF0BjtB1K/0sl9ju5RdKB3seDU
	iBKvqVZCneJSabpy6qd48+NtazidWf/gj7gb9yK61EpgK2Fkaeby0xgE9rAD+tDJf+WBi/y3tPoM8
	e82jWVuu+Cmv/PM0HxxKgJ6VqtgVGUv8Gc3Vcsl/0jw8evEjBnk0td3y4s5hZpccRr5CFsue2Sd0O
	q8IiQK4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txhxH-0000000AMyu-0hC9;
	Thu, 27 Mar 2025 07:47:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txhu6-0000000AMQv-3E3D
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 07:43:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txhu5-0008Um-L4; Thu, 27 Mar 2025 08:43:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txhu5-001t7h-1T;
	Thu, 27 Mar 2025 08:43:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txhu5-003Lwr-1H;
	Thu, 27 Mar 2025 08:43:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20250325155614.32678-1-jmaselbas@zdiv.net>
References: <20250325155614.32678-1-jmaselbas@zdiv.net>
Message-Id: <174306143339.799296.3688953420820075475.b4-ty@pengutronix.de>
Date: Thu, 27 Mar 2025 08:43:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_004354_809719_053A356E 
X-CRM114-Status: UNSURE (   5.59  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] lib: add explicit break in kstrtox/strtox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 25 Mar 2025 16:56:14 +0100, Jules Maselbas wrote:
> 


Applied, thanks!

[1/1] lib: add explicit break in kstrtox/strtox
      https://git.pengutronix.de/cgit/barebox/commit/?id=9dff02309045 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



