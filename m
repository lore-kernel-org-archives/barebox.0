Delivery-date: Mon, 01 Dec 2025 12:04:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1hZ-006nGp-1Z
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 12:04:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1hY-0003Uk-VO
	for lore@pengutronix.de; Mon, 01 Dec 2025 12:04:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BWdjxzFabIglgF8L6L+YnS+W2kzhgFvj0nENTMWITYU=; b=YVSPEalODEi7Wea7JQHXKivOOB
	bp0W94cglXDUroluI9NW8/uFgNoubeL8/H/ik8NmFAja8j7q1tTJ/HxXHwZm9eGr31Um/73ZMhyzr
	hIyFXhKa3Oj1f2mzwMbSC+Va4qFudumqohP+Ae3uKdbI3ihyameK1DnkxNl0fDqOVBu4AZzdzqQBC
	jW28IT8S/tEpJEP7Bx11cso/3VZLodcQXanGB61zleMqChvtHX0cIdWP8ce4iZG5lSv9ZXzAOI7OS
	td6qmH82XGbkx4ajKT1vNbNXZkUsnYAIdvR6icxGqqFrK5I1hXAKVOJy8cJJA/CQY3M0TNI1gKXry
	Z3Aq+ZiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1h2-00000003OLF-2Eaq;
	Mon, 01 Dec 2025 11:03:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1h0-00000003OKO-0FcL
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 11:03:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1gy-0003P4-H7; Mon, 01 Dec 2025 12:03:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1gy-003Qh8-0P;
	Mon, 01 Dec 2025 12:03:40 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1gy-00000000iBG-0HT2;
	Mon, 01 Dec 2025 12:03:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
In-Reply-To: <20251201-imx_usb-v2-0-95ec2a0e8694@gocontroll.com>
References: <20251201-imx_usb-v2-0-95ec2a0e8694@gocontroll.com>
Message-Id: <176458702006.169805.9551722889365510101.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 12:03:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_030342_130556_26563AF3 
X-CRM114-Status: UNSURE (   5.68  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/3] scripts: imx: imx-usb-loader: fix mingw
 compilation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Dec 2025 11:26:15 +0100, Maud Spierings via B4 Relay wrote:
> Compiling imx-usb-loader for windows targets had become broken, fix it.
> 
> 

Applied, thanks!

[1/3] scripts: imx: Makefile.mingw64: add _GNU_SOURCE
      https://git.pengutronix.de/cgit/barebox/commit/?id=ef66b9e0f1c7 (link may not be stable)
[2/3] scripts: imx: add pread implementation for mingw target
      https://git.pengutronix.de/cgit/barebox/commit/?id=969c9b94b58d (link may not be stable)
[3/3] gitignore: ignore *.exe
      https://git.pengutronix.de/cgit/barebox/commit/?id=8661354d7ef7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



