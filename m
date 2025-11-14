Delivery-date: Fri, 14 Nov 2025 14:01:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJtQf-000ua3-2Q
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 14:01:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJtQf-0008Hk-7F
	for lore@pengutronix.de; Fri, 14 Nov 2025 14:01:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C/pvrjAQFyu5c5n01blWvCttgnJruoY4ePMUr7Q9vHI=; b=bywC4eYvpEKtQb9pEMLFZr4PA7
	ol5lR7viVzTDfi6yE86w/HKsdzuQ9hM/3EqV3zza1UmfnjDYe9nWfIv3h70rA7Jxrmcj5mXd9eRBr
	f0KwH6uA/lbXsDX1Y8QeXidZ05D+jnTyEjk/6evsuSbpvh4pXL0QT+dWW/2lM8eSniqdaeyCHOoJQ
	Jr1Ri82OcppZS/czl/fnZqgTA1fL1cHdRjhbid1bh9q8Zk9wVduYxNpM9Bj9BJaNvyS79sBntUBV5
	HQWhFX96IDrPty6eUfDAjxYWmNo49vvRhN8tzZzWzQKjaLm2jUsrcb+VQEH0xw78JiERV7PwtIl7w
	vX4yscrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtQE-0000000CDsP-1aU0;
	Fri, 14 Nov 2025 13:01:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtQB-0000000CDrQ-2xEI
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 13:01:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtQ9-000824-KL; Fri, 14 Nov 2025 14:00:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtQ9-000QQc-1P;
	Fri, 14 Nov 2025 14:00:57 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtQ9-0000000H17c-3OUI;
	Fri, 14 Nov 2025 14:00:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251112151058.540654-1-a.fatoum@pengutronix.de>
References: <20251112151058.540654-1-a.fatoum@pengutronix.de>
Message-Id: <176312525736.4055406.1271781534787006033.b4-ty@pengutronix.de>
Date: Fri, 14 Nov 2025 14:00:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_050059_747835_A10B15C1 
X-CRM114-Status: UNSURE (   8.47  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] poller: activate POLLER_WARN_OVERTIME only on third
 strike
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 12 Nov 2025 16:10:58 +0100, Ahmad Fatoum wrote:
> This warning was meant to address the case that a poller repeatedly
> takes too long that interactive usage is impacted.
> 
> I frequently see this warning during initial USB gadget set up and that
> is not really useful to show every user and developers can use the
> poller command, so let's wait until we are on our third (2nd when
> counting from 0) overtime to print the one time warning.
> 
> [...]

Applied, thanks!

[1/1] poller: activate POLLER_WARN_OVERTIME only on third strike
      https://git.pengutronix.de/cgit/barebox/commit/?id=3c54bb21e0f0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



