Delivery-date: Wed, 03 Apr 2024 13:30:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrypK-005zwB-1Z
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 13:30:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrypJ-0004gN-QO
	for lore@pengutronix.de; Wed, 03 Apr 2024 13:30:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QIHTsj5nXZ6dHROg5vvCWCKQOKrZ6zSG9YToSs0x1FY=; b=FXLZ7U9seD69isYImOMkzKBtXQ
	tqMmQkLQJNaCJruhJ+BwdNcufAnUnG++T3EPRAQVNgCEHezicibO81iJiSPZ5rQ5DHsOARYf0mnoh
	cOm944uNC2o6I5ZkpFE/fK5VWjITD4dX0c9ZxFxioOXgdqThuQiyeaaW6hjnSOoItVrhAvTIOa+uq
	yvA4X447b8t941m+2bthYDO4LDfuoLAvOd6Yn8q/uSpHy4Ne65h93DFg13oFBUhbZjAspmjRvyIJu
	P8i89D+8YY/DvrdWDhiU1JLitIKFx8VouXnyvyXBRzRqBb+dlJVxc5utc9NKyB4PWDAqm39I/WfFU
	VG9t3dAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryou-0000000FmUq-2Q9v;
	Wed, 03 Apr 2024 11:30:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryor-0000000FmUM-2oYH
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 11:30:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rryoq-0004KS-H6; Wed, 03 Apr 2024 13:30:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rryoq-00AALV-4h; Wed, 03 Apr 2024 13:30:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rryoq-006Ens-0G;
	Wed, 03 Apr 2024 13:30:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240402100006.2484309-1-a.fatoum@pengutronix.de>
References: <20240402100006.2484309-1-a.fatoum@pengutronix.de>
Message-Id: <171214381607.1486839.5233390741337582446.b4-ty@pengutronix.de>
Date: Wed, 03 Apr 2024 13:30:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_043017_753648_060EF85F 
X-CRM114-Status: UNSURE (   6.65  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fastboot: explain use of struct
 fastboot::cmd_exec/flash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Apr 2024 12:00:06 +0200, Ahmad Fatoum wrote:
> Commit ed1dded0898f ("usb: gadget: fastboot: Add external command
> execution support") added hooks that allow board code to register its
> own OEM extensions for Fastboot. There are no users of these hooks
> upstream and without digging into the Git history, it's not evident, why
> these hooks are there, especially as the files have been renamed since.
> 
> Add a comment to explain what these never-set callbacks are for.
> 
> [...]

Applied, thanks!

[1/1] fastboot: explain use of struct fastboot::cmd_exec/flash
      https://git.pengutronix.de/cgit/barebox/commit/?id=1eff547a06ed (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



