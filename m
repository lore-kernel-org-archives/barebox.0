Delivery-date: Fri, 08 Nov 2024 14:35:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9P8m-006L8B-39
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 14:35:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9P8n-0007Od-KG
	for lore@pengutronix.de; Fri, 08 Nov 2024 14:35:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k9jaFd7B5qmf0/fqR1o2tpFQAGGn01bCaj9o0TG/8Pw=; b=myGstxliE5yWWJ5/3JGvoLleHj
	McKb2tAX1mziMqw3BsetUA0o50Cw+kzow9jXqw7/FiUUibiBq7qKLW4oXuQiL+jHVg/oV/WXT+zLJ
	mAoANRX/GCVEnOeanKB4N7F9qXBMkkcDC2WUCvF7YGLdxkMUWWXzfBShRxemzFQP19g3tlSQ9mXnC
	uJSy3tm3HQLiL1B/E43SBEYpUrDZYHFNFI/13SgOnXS9jf//jb1aHUDqSL3YLPh3d0g/Fra3tUIZZ
	MxgqQkFZ3zzL0L+scHEJYuqCGWOEti+x61fGPUcqDsomar55pXPBuFr++8wVvhUsApPcso1CT8heA
	cPsEA3lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9P8H-0000000AhcB-0YZs;
	Fri, 08 Nov 2024 13:34:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9P0S-0000000Afjb-3XnF
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 13:26:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9P0R-0005pc-Cn; Fri, 08 Nov 2024 14:26:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9P0R-002czf-0f;
	Fri, 08 Nov 2024 14:26:31 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9P0R-00ASON-0W;
	Fri, 08 Nov 2024 14:26:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241107-fs-tftp-v1-0-39d7e1cff418@pengutronix.de>
References: <20241107-fs-tftp-v1-0-39d7e1cff418@pengutronix.de>
Message-Id: <173107239116.2492384.12081340674517493686.b4-ty@pengutronix.de>
Date: Fri, 08 Nov 2024 14:26:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_052632_972548_F59C6D66 
X-CRM114-Status: UNSURE (   7.04  )
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
Subject: Re: [PATCH 0/4] some fs/tftp updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 07 Nov 2024 08:23:29 +0100, Sascha Hauer wrote:
> This series has some updates for the FS and TFTP code
> 
> 

Applied, thanks!

[1/4] fs: open loopback device before using it
      https://git.pengutronix.de/cgit/barebox/commit/?id=89ecaaf3bb39 (link may not be stable)
[2/4] fs: tftp: cache dentries for some time
      https://git.pengutronix.de/cgit/barebox/commit/?id=2ac80263b1f1 (link may not be stable)
[3/4] fs: kill invalid dentries
      https://git.pengutronix.de/cgit/barebox/commit/?id=840818621fba (link may not be stable)
[4/4] fs: tftp: Set default window size to 1
      https://git.pengutronix.de/cgit/barebox/commit/?id=5d943ab80e83 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



