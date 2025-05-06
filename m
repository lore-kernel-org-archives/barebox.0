Delivery-date: Tue, 06 May 2025 09:22:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCCdl-002iqm-2x
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 09:22:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCCdl-0003Ko-DO
	for lore@pengutronix.de; Tue, 06 May 2025 09:22:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bxNnkkNIdg8r7KaSqaJ117KmldUAo17bllT68yV9ye0=; b=AHQubw0JHzn071pgahPrE/PjIz
	vlQ/BUtYoFfztEt4Vj1EG3beLzOISsPQHzxBPe5dJZL7rL4TAJ9Sl6+IlSahCkLXaYcgqhpqEkv11
	X1Nt54olzmRxfMOT2snvRWrvlWN3kwaJ7njmwoGwhQSEoFvBB/fiRca818xSK2oM4CA8+KBnE0wAs
	cyFQyam1/htILR9drdFmNoCqGVM43TzVyd53K50JGLPRO9FDUIdSaOlPyGFP8pKdV0/q8xD68jy7E
	lPuoDU5om1QZuEfcC2vCMGinC4l/D8ZSmRpv/1t4nKStVxMzPgMWxLvA3KuSW4f/3d9I7nvxXQLgl
	L6cL4VBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCCdK-0000000AuKM-38tW;
	Tue, 06 May 2025 07:22:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCCdI-0000000AuIv-1YyL
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 07:22:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCdH-0003BI-1F; Tue, 06 May 2025 09:22:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCdG-001MB4-2i;
	Tue, 06 May 2025 09:22:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCdG-00DNtE-2V;
	Tue, 06 May 2025 09:22:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250506062125.3090943-1-a.fatoum@pengutronix.de>
References: <20250506062125.3090943-1-a.fatoum@pengutronix.de>
Message-Id: <174651614676.3190075.3914889898861321329.b4-ty@pengutronix.de>
Date: Tue, 06 May 2025 09:22:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_002228_411698_6C9351E9 
X-CRM114-Status: UNSURE (   5.86  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: linux/printk: import Linux
 dev_err_ptr/case_probe helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 May 2025 08:21:25 +0200, Ahmad Fatoum wrote:
> For compatibility with Linux, add two helpers for dev_err_probe that
> return an error pointer and take either an error pointer or an error
> code.
> 
> 

Applied, thanks!

[1/1] include: linux/printk: import Linux dev_err_ptr/case_probe helpers
      https://git.pengutronix.de/cgit/barebox/commit/?id=669b4dfcae9f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



