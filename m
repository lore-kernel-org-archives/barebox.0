Delivery-date: Fri, 17 Apr 2026 10:26:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDeWh-00D7Zd-19
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 10:26:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDeWg-0006u4-P9
	for lore@pengutronix.de; Fri, 17 Apr 2026 10:26:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OrF/e2L6Pi0HBSPlyrEDns2joC7xzJKgyhZJDyBSUSg=; b=GYuFb23axbyQmKW1VR7jzNaKNX
	yqHTqMyWG1JDqTdelog6jFpt7MOBh0zJip+PC90o3xX8He/+Q19xcyDm6Adt4/BtbF6XyAMnzXTxd
	bfIqMTVGzsfSTD7AFQ3ixH84fI6Wqy/AWNDfdOm/O+STpJyJ6l0Ou6K/L+FeUwb9yuQ/OeKhHVVzR
	EuyWZRyBQytoGsVR7i7n0ICqmUUJ9s0sX0G8JolTF//efFcBOWCjc+WfSp3wFQ6athdfajdttqCnZ
	gni14EyfVfMqFiIFBZ3OrwPw6uUpico43K6p6TvlmvbTB+a7qfVTWl7zrMnr+i6JllU0CT3obcRNz
	FU5FL7YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeWE-00000003fjc-0Bi1;
	Fri, 17 Apr 2026 08:25:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeWB-00000003fjK-3GlN
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 08:25:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeWA-0006jX-58; Fri, 17 Apr 2026 10:25:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeW9-005olq-37;
	Fri, 17 Apr 2026 10:25:37 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeW9-00000000YnS-3nBJ;
	Fri, 17 Apr 2026 10:25:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
References: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
Message-Id: <177641433789.133703.9329690482278940815.b4-ty@pengutronix.de>
Date: Fri, 17 Apr 2026 10:25:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_012539_844957_BB2C305D 
X-CRM114-Status: UNSURE (   9.83  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/9] arm: socfpga: agilex5: rework low level code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 16 Apr 2026 11:48:04 +0200, Michael Tretter wrote:
> The available SDRAM on an Agilex 5 system isn't fixed, but may change
> based on the system configuration. If inline ECC is enabled, 1/8 of the
> SDRAM is used for checksums. The memory reserved for the TF-A is also
> not usable by barebox. Thus, using hard-coded memory limits is not
> sufficient even on a board level.
> 
> Rework the Agilex 5 low level code to respect the memory configuration
> by reading the available memory from the firewall configuration. The
> rework also allows moving the entry code from board-specific code to SoC
> specific code.
> 
> [...]

Applied, thanks!

[1/9] arm: socfpga: agilex5: cleanup TF-A loading
      https://git.pengutronix.de/cgit/barebox/commit/?id=0c29366bb423 (link may not be stable)
[2/9] arm: socfgpa: agilex5: remove unused memsize
      https://git.pengutronix.de/cgit/barebox/commit/?id=0585325d22e1 (link may not be stable)
[3/9] arm: socfpga: agilex5: configure firewall with base and size
      https://git.pengutronix.de/cgit/barebox/commit/?id=3c77c7702144 (link may not be stable)
[4/9] arm: socfpga: agilex5: fix read of memory limit
      https://git.pengutronix.de/cgit/barebox/commit/?id=6c793c193a3c (link may not be stable)
[5/9] arm: socfpga: agilex5: fix SDRAM size calculation
      https://git.pengutronix.de/cgit/barebox/commit/?id=f32b6ba416d6 (link may not be stable)
[6/9] arm: socfpga: agilex5: remove unused declarations
      https://git.pengutronix.de/cgit/barebox/commit/?id=65a993521e70 (link may not be stable)
[7/9] arm: socfpga: agilex5: read SDRAM limits from firewall
      https://git.pengutronix.de/cgit/barebox/commit/?id=db3c90dc335b (link may not be stable)
[8/9] arm: socfpga: agilex5: add agilex5_barebox_entry
      https://git.pengutronix.de/cgit/barebox/commit/?id=a14292c6b54c (link may not be stable)
[9/9] arm: socfpga: agilex5: add explicit unreachable after TF-A load
      https://git.pengutronix.de/cgit/barebox/commit/?id=57419d18bd2f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



