Delivery-date: Fri, 15 May 2026 11:29:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNore-001x7T-2Y
	for lore@lore.pengutronix.de;
	Fri, 15 May 2026 11:29:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNore-00040J-7I
	for lore@pengutronix.de; Fri, 15 May 2026 11:29:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bHXSLLzpkEP5wTzTyvqfVijB4wzEuMdGtCDDbvuPLbE=; b=lODLAWXFHkopbmcs6kFW/Njhmd
	CoV+4VJkJMcUbldU6vAGoGual9/1ugViwmTt+uHih2z0N3zVEPDTSh4QbhqY58IbNOzLjdzw8v4aZ
	wlmIMEFDFOV3JbQfOW5FdRycBnrkk996ts+sRuTdMoPNX9ibXHZ4/5keG3tJPI2CLgGuaVTyh+sGC
	mJz1NSo7C2v1uBmkqxOCDpeylQxJ6iv11rePvMd0h9V9xZcrN94aCj5ny53BnU9leG5nLX9kOtc4p
	hct5ZJ7pMYDpPcwxW49gVB7y/GYuTxn9q2UgqOpvF8mG4XnYr6Px3dIUytzMvN1jNYalI5UZyN9cc
	RT7EE8cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNoqK-00000007tCq-1l27;
	Fri, 15 May 2026 09:28:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNoqF-00000007t9n-1ot2
	for barebox@lists.infradead.org;
	Fri, 15 May 2026 09:28:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNoqD-0003Ol-6C; Fri, 15 May 2026 11:28:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNoqD-000u1t-0P;
	Fri, 15 May 2026 11:28:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNoqD-0000000AVz2-0Jp9;
	Fri, 15 May 2026 11:28:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260513-pbl-elf-fixes-v1-0-440cc04c634f@pengutronix.de>
References: <20260513-pbl-elf-fixes-v1-0-440cc04c634f@pengutronix.de>
Message-Id: <177883730107.2505901.16674845871884933118.b4-ty@pengutronix.de>
Date: Fri, 15 May 2026 11:28:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_022823_486652_48DB2E45 
X-CRM114-Status: UNSURE (   5.88  )
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
Subject: Re: [PATCH 0/2] Fix ELF image linking into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 May 2026 15:57:57 +0200, Sascha Hauer wrote:
> On ARM and RiscV we now link an ELF image into the PBL. With this PBL
> and barebox proper might disagree where the barebox image has been
> placed resulting in the malloc area overlapping the barebox image.
> 
> 

Applied, thanks!

[1/2] ARM: fix wrong calculation of barebox base
      https://git.pengutronix.de/cgit/barebox/commit/?id=3ef8ba6540ef (link may not be stable)
[2/2] riscv: fix wrong calculation of barebox base
      https://git.pengutronix.de/cgit/barebox/commit/?id=122f440c6b2f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



