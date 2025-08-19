Delivery-date: Tue, 19 Aug 2025 08:08:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoFWO-0028y4-1Q
	for lore@lore.pengutronix.de;
	Tue, 19 Aug 2025 08:08:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoFWN-0006bZ-9s
	for lore@pengutronix.de; Tue, 19 Aug 2025 08:08:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OkPW+CmPjp7LGlpkEYvMqX6ckBfn1k42jaFduLI8egU=; b=Wc82SRUglSLiv3HbzUscHSQZKJ
	3xKdnPtIIXIyNWxt9/yTuX/PbQ3t9p7dfOS7lVDTpXl9EhI7VjTb73DT7ESPt7G8txg4SVrrO0SD7
	N58JvfA8gHdonI11RNA9ljZhH7s4PwEMgxobGNM39BISiZDsgi7m10j7i9vt/DUVSqUqZXSJifAjU
	2mWIUj/L8Wh4vXmmFaTBWo3gCxIsO/1jNmLPe5EHc6EWz2zQPQxlXJqh+435bqJ6p8exaNkgPbC4V
	fuwwozqe3vJnMXWVnBNK4Qzbww0dyil3TH9p8FXdwsoMl8XPK60f4NPSgjUR8YzEI+POV+wwWVYxB
	ZNVrgGGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoFVw-00000009Uck-3A7F;
	Tue, 19 Aug 2025 06:08:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoFVt-00000009Uby-3dfV
	for barebox@lists.infradead.org;
	Tue, 19 Aug 2025 06:08:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoFVs-0006V3-DY; Tue, 19 Aug 2025 08:08:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoFVs-0011Pk-0l;
	Tue, 19 Aug 2025 08:08:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoFVs-00CyBL-0Z;
	Tue, 19 Aug 2025 08:08:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250814202805.354827-1-a.fatoum@barebox.org>
References: <20250814202805.354827-1-a.fatoum@barebox.org>
Message-Id: <175558368417.3091162.10570637298684976720.b4-ty@pengutronix.de>
Date: Tue, 19 Aug 2025 08:08:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_230805_930449_BB556DA0 
X-CRM114-Status: UNSURE (   6.41  )
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
Subject: Re: [PATCH 1/8] common: fix outdated barebox_set_hostname comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 14 Aug 2025 22:27:58 +0200, Ahmad Fatoum wrote:
> We do not allow underscores either now, so bring the comment in line
> with what barebox_valid_ldh_char is enforcing.
> 
> 

Applied, thanks!

[1/8] common: fix outdated barebox_set_hostname comment
      https://git.pengutronix.de/cgit/barebox/commit/?id=1ca72a96a0e9 (link may not be stable)
[2/8] RISC-V: virt: riscvemu: set better hostname/model
      https://git.pengutronix.de/cgit/barebox/commit/?id=aeb0d3c36094 (link may not be stable)
[3/8] netconsole: bump down ip/port not set messages to info
      https://git.pengutronix.de/cgit/barebox/commit/?id=344d8ef3220d (link may not be stable)
[4/8] RISC-V: cpuinfo: enable structured I/O
      https://git.pengutronix.de/cgit/barebox/commit/?id=cd9107005583 (link may not be stable)
[5/8] commands: bfetch: add RISC-V cpu/firmware info
      https://git.pengutronix.de/cgit/barebox/commit/?id=dfe3780dc1f1 (link may not be stable)
[6/8] RISC-V: riscvemu: update configs for web demo
      https://git.pengutronix.de/cgit/barebox/commit/?id=c201a6891479 (link may not be stable)
[7/8] RISC-V: rv64i_defconfig: enable Virt I/O
      https://git.pengutronix.de/cgit/barebox/commit/?id=62dff504b02d (link may not be stable)
[8/8] poller: allow suppressing overtime warnings
      https://git.pengutronix.de/cgit/barebox/commit/?id=c86cd41b244b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



