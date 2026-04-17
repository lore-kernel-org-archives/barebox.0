Delivery-date: Fri, 17 Apr 2026 12:40:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgd4-00DAB0-01
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:40:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgd3-0007iW-E7
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:40:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F0yzMlY5YiPUiRzpbe5yiHcq6RWtHWnieigTazGZvzQ=; b=WBoUdMd51YBZcpnsXpR8mSoMXQ
	J6DL0nyLf9XK7G5ZvzOP37mL6hGsIAJX0CkDSmIp1MkaU2j6UBkwVyJKgS1mmEjqm7a7Cy0a1WcKc
	pvd1xuVxdVXSEc+QaBg97n8P64HMIp669tKoymdcYDJKtYAut950UrhndmVa0WEq7VF6zH7NJh3F4
	y7/0njxf4bIAlhuT3SwW4OpeOtdaKaSFTbJ9FnkiunLutRlbz7lQxiapD/DVmZ999VWAa1jUnzpba
	2dMZa7JLsNMHjjjJfYqj/Mtms8B+KtHFpz9p2wAkio8kzlt9fkfN8uNt3NJHmUal8T1YvpA4uBT8F
	HSi1pZ+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgcd-00000003uzS-1Q0c;
	Fri, 17 Apr 2026 10:40:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgcY-00000003uy3-48YA
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:40:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDgcX-0007S8-Fu; Fri, 17 Apr 2026 12:40:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDgcX-005pls-0r;
	Fri, 17 Apr 2026 12:40:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDgcX-00000000euC-0nUX;
	Fri, 17 Apr 2026 12:40:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
In-Reply-To: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
References: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
Message-Id: <177642242118.157093.17397729672260000137.b4-ty@pengutronix.de>
Date: Fri, 17 Apr 2026 12:40:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_034023_038768_F3DEBA83 
X-CRM114-Status: UNSURE (   4.13  )
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
Subject: Re: [PATCH 0/4] tftp: fix buffer overflows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 02 Apr 2026 09:21:18 +0200, Sascha Hauer wrote:
> This adds more checks on incoming network data to prevent buffer
> overflows.
> 
> 

Applied, thanks!

[1/4] fs: tftp: prevent packet buffer overflow from long filenames
      https://git.pengutronix.de/cgit/barebox/commit/?id=85eacc30b21f (link may not be stable)
[2/4] fs: tftp: fix OACK option parsing bounds check
      https://git.pengutronix.de/cgit/barebox/commit/?id=a0ba8b517861 (link may not be stable)
[3/4] fs: tftp: reject OACK with blocksize of zero
      https://git.pengutronix.de/cgit/barebox/commit/?id=0e3e6e737f6f (link may not be stable)
[4/4] fs: tftp: use bounded format for TFTP error message debug print
      https://git.pengutronix.de/cgit/barebox/commit/?id=2fb15473263a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



