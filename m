Delivery-date: Fri, 13 Mar 2026 15:49:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13p1-000F6a-2s
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 15:49:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13p1-0000LC-DG
	for lore@pengutronix.de; Fri, 13 Mar 2026 15:49:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vvXfs1xyVnZaiDyPRctdUTxYt9J4oWadJIqtcB7Snag=; b=ZY4utx+hY1rvFRBh13t8fZK2Zl
	V44iMj3BPOAUu/md3UhY/APfPUr10XE0hZGBSo/5aZ1xm8pE2/uVbWA8O9BDmf33U1/dR0mYrxOkU
	x9jHe8v4vFQz9jNxXbj0mSam5T7MPy6n3d++BDSuw1+m1I0QZRf/cx/50tLYxJO6eC0RAUaf6Y4GG
	wRtIcLYh94XtRBfpuDvwNTYsyyk9C3MjLv2o3p5iHtzAM1XGYsVUuD2nBzpFGUB0TVk5CSv+p+8HC
	uxggqVbaSm560LDehJBzZJx5ugXt+kXrVIVrSEHI/rEjbaS3GBDGw+5T/vbgfrYNghkP8CizVnZ/7
	dgwARQLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13oc-00000000S6B-05Ys;
	Fri, 13 Mar 2026 14:48:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13oZ-00000000S1C-1Pw3
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 14:48:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13oX-0000Az-Hm; Fri, 13 Mar 2026 15:48:33 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13oX-00062m-1A;
	Fri, 13 Mar 2026 15:48:33 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13oX-0000000114g-1GcB;
	Fri, 13 Mar 2026 15:48:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260312101139.4129705-1-s.hauer@pengutronix.de>
References: <20260312101139.4129705-1-s.hauer@pengutronix.de>
Message-Id: <177341331329.242445.10247814432244134739.b4-ty@pengutronix.de>
Date: Fri, 13 Mar 2026 15:48:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_074835_467304_DFB97BC0 
X-CRM114-Status: UNSURE (   4.78  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bareboxtlv-generator: make compatible to python < 3.12
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Mar 2026 11:11:39 +0100, Sascha Hauer wrote:
> Older python versions < 3.12 do not allow nested " in f-strings. Use '
> instead.
> 
> 

Applied, thanks!

[1/1] bareboxtlv-generator: make compatible to python < 3.12
      https://git.pengutronix.de/cgit/barebox/commit/?id=2855f1dcf230 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



