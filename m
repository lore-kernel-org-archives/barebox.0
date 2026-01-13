Delivery-date: Tue, 13 Jan 2026 12:09:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcHW-000rLk-2j
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 12:09:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcHV-0003bc-T2
	for lore@pengutronix.de; Tue, 13 Jan 2026 12:09:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KNLCIWt1txnLkeBqP2Nw3POc5SmBeF3J0eTa01Na28Y=; b=rvecKpXxcCqATktbNDG+m2UYfR
	kAyY1FBkoSTHXPMtXClR4vnjhIkGL9f+NLKWDCqnPY/rseA+ZZseY7/11Vb3mfKL3HDpfxnZYSbT5
	UDp77B+umFZNZrINr7qeB4Qvkps6rJ5ChKLhOyCLCeXpuvLVTWMNC+M5qbFzV7zFC0nbgFcik4Fsp
	55fuZjH3AlzEqie+xQtrdzZmnljWviXQX6WU32fBGkiI89K5S7rXujCzYOr62GYmibM3nc+v0Xckl
	AICGzJiXBciRtCfMWEAdq+mzR3qvVCHjTIghPSimXI1f9O0nB5IhAogU4s6AWsrmiH4WmefJ/eSzp
	md3IX7gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcH6-00000006zhB-2zfJ;
	Tue, 13 Jan 2026 11:09:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcH4-00000006zfx-0WsW
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 11:09:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcGu-0003PA-No; Tue, 13 Jan 2026 12:09:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcGv-000PeZ-0g;
	Tue, 13 Jan 2026 12:09:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcGu-00000006PAF-20V9;
	Tue, 13 Jan 2026 12:09:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260109132910.769130-1-s.hauer@pengutronix.de>
References: <20260109132910.769130-1-s.hauer@pengutronix.de>
Message-Id: <176830255247.1526662.8784725428241313782.b4-ty@pengutronix.de>
Date: Tue, 13 Jan 2026 12:09:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_030922_171301_B9D58C71 
X-CRM114-Status: UNSURE (   7.71  )
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
Subject: Re: [PATCH] ARM: k3: am62l: Detect DRAM from controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 09 Jan 2026 14:29:10 +0100, Sascha Hauer wrote:
> am62x_register_dram() works for the am62l as well, so use it to detect
> the amount of DRAM. With this we can remove the memory node from am62l3-evm.dts
> as it will be automatically populated.
> 
> 

Applied, thanks!

[1/1] ARM: k3: am62l: Detect DRAM from controller
      https://git.pengutronix.de/cgit/barebox/commit/?id=d59f32438dac (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



