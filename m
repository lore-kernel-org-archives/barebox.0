Delivery-date: Mon, 31 Mar 2025 08:38:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz8nL-006SVX-2C
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 08:38:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz8nL-0007ei-0D
	for lore@pengutronix.de; Mon, 31 Mar 2025 08:38:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TjgrTfUtfWyA2k//i2HF5sbzcijN3KOYQ1kfzSc1v4U=; b=rpCNovISEK8E9UM0FGsTpgxNow
	no7PfdyGqzHAarwPcYQ1Zt/UQxSdgnt34wRrRDukNXEH3g0agfwpY4mPkCFrHLR8l/Kghf7cQF/Be
	Ni8r5BkYAhkZkXyswX4Ijro1mqcchHC9qN0cvDfz3V66jOiKugz2XsUuX3z2GA3qqs7mK5fb4mrWo
	yTXY8laIp06p9lLVhDC4r7ndqL41mLG/Bw1GdizU+H/R2BB4OELo0Z5/rVMzbyXoydzfyAcR1UOWq
	B24/vu/mYOsxzu4oR1K8GS3ST3O754Vrc/N4DXsMDUkUxad8EPRy3XwKvjQqVp8qrGk16NkLL1bZ6
	XZkSnzig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz8mW-0000000H6lw-0fyF;
	Mon, 31 Mar 2025 06:38:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz8mS-0000000H6lW-3NI7
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 06:37:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz8mP-0007Yd-43; Mon, 31 Mar 2025 08:37:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz8mO-002Y5q-31;
	Mon, 31 Mar 2025 08:37:52 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz8mO-0013M5-2l;
	Mon, 31 Mar 2025 08:37:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20250328171617.1945875-1-bst@pengutronix.de>
References: <20250328171617.1945875-1-bst@pengutronix.de>
Message-Id: <174340307285.251180.7455257774654455628.b4-ty@pengutronix.de>
Date: Mon, 31 Mar 2025 08:37:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250330_233756_888625_50DB6D4F 
X-CRM114-Status: UNSURE (   6.24  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bootchooser: fix state_prefix nv variable in error
 message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Mar 2025 18:16:17 +0100, Bastian Krause wrote:
> The correct variable for the state prefix is
> `nv.bootchooser.state_prefix`, not `nv.state_prefix`.
> 
> 

Applied, thanks!

[1/1] bootchooser: fix state_prefix nv variable in error message
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb39329acd57 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



