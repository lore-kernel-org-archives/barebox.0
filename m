Delivery-date: Mon, 08 Dec 2025 08:45:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSVwB-0098t9-08
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 08:45:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSVw9-0003bK-La
	for lore@pengutronix.de; Mon, 08 Dec 2025 08:45:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MJ3IBzHganyBI8ajBCzub7tUIdHili4qYt+ZssJ3+eY=; b=b9isUunWrb6g6+SnDz1Ud7E9YJ
	tBC+cStS2rMvPJmlSLuvF2nzE/zVRB6HWTW060Le5Kyc3wcEFIvyJ7BwWzNNe3nJK/37tG0HP+9x5
	NfahjcmrFgG53Xtmdq1n/wtWl7ydsN0HYI+tpgtdugaD06MlOCtHxiLlLekrK2eHp1whS8zoqpmdq
	nnX02vjalG4ydDwVVOCbKqzu8VEY2ZClRoCNNXHB8K/uNNht4gceB60bCb6DRo+TlcjkX+2e1myX3
	mxoPIgVfWxSHxycNrsUEfCvQ+7ApgAmcmjWwzCzae5Zx1n9zwGelqHABv2qKXroavViCjQC/HuXXP
	8Q4akh0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSVvn-0000000CmaB-23zN;
	Mon, 08 Dec 2025 07:45:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSVvl-0000000CmZp-0zTQ
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 07:45:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVvj-0003Xw-Qf; Mon, 08 Dec 2025 08:45:11 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVvj-004Zdy-24;
	Mon, 08 Dec 2025 08:45:11 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVvj-00000001Jex-2ROy;
	Mon, 08 Dec 2025 08:45:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251202-base64-bounds-v2-0-34d3716c3f55@pengutronix.de>
References: <20251202-base64-bounds-v2-0-34d3716c3f55@pengutronix.de>
Message-Id: <176517991157.313818.1891601115824987069.b4-ty@pengutronix.de>
Date: Mon, 08 Dec 2025 08:45:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251207_234513_284759_4FC5ECB7 
X-CRM114-Status: UNSURE (   7.76  )
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
Subject: Re: [PATCH v2 0/2] Fix out-of-bounds potential in decode_base64
 and add regression tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Dec 2025 10:22:43 +0100, Jonas Rebmann wrote:
> I took a closer look at decode_base64 while reviewing coverity report
> 584740 (Out-of-bounds access). 1/2 resolves the issue (although coverity
> seems to suspect an out-of-bounds access for the wrong reason and might
> keep doing so), 2/2 adds a selftest I used to debug the issue.
> 
> 

Applied, thanks!

[1/2] lib: base64: Fix out-of-bounds potential by respecting dst_len
      https://git.pengutronix.de/cgit/barebox/commit/?id=fd1a97622105 (link may not be stable)
[2/2] test: self: add base64 selftests
      https://git.pengutronix.de/cgit/barebox/commit/?id=c5190aac91f2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



