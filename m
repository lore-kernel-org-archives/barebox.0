Delivery-date: Tue, 20 Feb 2024 12:09:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNzh-00FwnP-2X
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 12:09:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNzh-0004yk-6w
	for lore@pengutronix.de; Tue, 20 Feb 2024 12:09:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=APxsKVFsUr7tiA/M9NW1Z5U8loMH/UgiJxLKD0uacl0=; b=MGmDgWljdvy3RqC+PXPTPUbMrU
	fRP2pdHAa3EkXzsewf3Ti4oR6o1sKmpGq/QanrGgrVo1OyW4dq/XHLwS2clH7LtlaU7mm27J5Ewb1
	2dzjXnYDLklZCw92ZAoSQCBd7RN9OIPHOs4HFilQ0fZx+KnTnL5fn99xLuHo4TUv+hzzDJKygX4LT
	tOgWcYxRkpzs6kKeb45SG87KMWx1Y6JKfTrvZr5mCmOEmtJsx1FYqyqLYNRFza+WaD+yYVkbofpWe
	kxN7Rkpu0rGeg0KOkKr6gZdspX72/ig7+rxNeKwt83JSDdPEt2F+r56zsWctEG8vnlecWb8Co5NLJ
	94FQ8ajQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNzJ-0000000ENwk-0UTT;
	Tue, 20 Feb 2024 11:08:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNzG-0000000ENw1-2XYX
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 11:08:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcNzF-0004si-Dn; Tue, 20 Feb 2024 12:08:33 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcNzF-001pOF-1B; Tue, 20 Feb 2024 12:08:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcNzE-00CM1O-39;
	Tue, 20 Feb 2024 12:08:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de
In-Reply-To: <20240219172925.3798024-1-a.fatoum@pengutronix.de>
References: <20240219172925.3798024-1-a.fatoum@pengutronix.de>
Message-Id: <170842731297.2943921.7634914007838859374.b4-ty@pengutronix.de>
Date: Tue, 20 Feb 2024 12:08:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_030834_682151_BF32C46F 
X-CRM114-Status: UNSURE (   8.99  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/5] driver: refactor probe return value handling
 into switch statement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 19 Feb 2024 18:29:21 +0100, Ahmad Fatoum wrote:
> The return values of the bus probe function called inside device_probe()
> are classified into 4 categories and they are checked by if statement
> distributed across device_probe().
> 
> For clarity and easier changes, collect all of them into a switch
> statement and while at it, use helpers to make use of %pe, list_move and
> list_del_init instead of opencoding them.
> 
> [...]

Applied, thanks!

[1/5] driver: refactor probe return value handling into switch statement
      https://git.pengutronix.de/cgit/barebox/commit/?id=6e08b4ab5bec (link may not be stable)
[2/5] deep-probe: treat any probe deferral as permanent
      https://git.pengutronix.de/cgit/barebox/commit/?id=8a42a6bf42b0 (link may not be stable)
[3/5] deep-probe: use IS_ERR_OR_NULL() instead of opencoding
      https://git.pengutronix.de/cgit/barebox/commit/?id=05785e25af00 (link may not be stable)
[4/5] deep-probe: return -EPROBE_DEFER when ensuring probe fails
      https://git.pengutronix.de/cgit/barebox/commit/?id=1905fa7cb425 (link may not be stable)
[5/5] phy: freescale: imx8mq-usb: make i.MX8MP support more explicit
      https://git.pengutronix.de/cgit/barebox/commit/?id=e87ca6e235e4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



