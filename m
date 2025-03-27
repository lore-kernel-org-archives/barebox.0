Delivery-date: Thu, 27 Mar 2025 10:23:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txjSP-004om0-0c
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 10:23:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txjSO-0004Ap-Kn
	for lore@pengutronix.de; Thu, 27 Mar 2025 10:23:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lLemLylvmws54fkf0VEiaasf8yn9P02RN2D/6WibgDA=; b=tDYQL4MeMMjDc3ST3TfTpx9/kG
	PVPqLsAV5Q8j11ilgBAICz86TUqK4uwOVy8AU5vDBADLW0S2DAvvBzDYn9/yyIk8k9+v3RasUaNtl
	AhcAFi8SLgPkCpob+3JBGStV/c8IMzh22iHLZTcElzI3njD9CbQ5UAdlB9Ch7RTKfIjw1byKVKI4b
	y0m1y8yHQp2bjZjuVJNykITqAjoCWITDIRzGKj4ZKVFJAM1TG9IJV4Fwxm3yCaGWDE1iiu9LD3+Qz
	NBKr/02DBITXCI8JowTmBMK2fUJRDSIVf6zASPBP6sklXLTyA61CTmwduhiWHm4yiKpNkFUlhvTx9
	NYPppqcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txjRk-0000000AYln-40Bv;
	Thu, 27 Mar 2025 09:22:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txjQC-0000000AYgd-0WWI
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 09:21:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txjQA-0003ca-RQ; Thu, 27 Mar 2025 10:21:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txjQA-001u8D-28;
	Thu, 27 Mar 2025 10:21:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txjQA-004AOM-1u;
	Thu, 27 Mar 2025 10:21:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250326123619.282897-1-a.fatoum@pengutronix.de>
References: <20250326123619.282897-1-a.fatoum@pengutronix.de>
Message-Id: <174306726658.993088.2542948432002146522.b4-ty@pengutronix.de>
Date: Thu, 27 Mar 2025 10:21:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_022108_173325_2415448F 
X-CRM114-Status: UNSURE (   8.68  )
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
Subject: Re: [PATCH 0/7] ci: container: include musl and LLVM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 26 Mar 2025 13:36:12 +0100, Ahmad Fatoum wrote:
> We have been using clang out-of-tree for libfuzzer and clang-analyzer.
> As preparation for upstream these as well as CI jobs that make use of
> them, add them LLVM to the container image.
> 
> While at it, add musl-tools as well, so we can start catching musl
> breakage in CI before Yocto CI runs into it.
> 
> [...]

Applied, thanks!

[1/7] Revert "ci: container: downgrade OpenRISC toolchain from 14.2.0 to 13.1.0"
      https://git.pengutronix.de/cgit/barebox/commit/?id=fc304e4f07c8 (link may not be stable)
[2/7] ci: container: download and delete kvx.tgz in the same layer
      https://git.pengutronix.de/cgit/barebox/commit/?id=69a3750c7b3c (link may not be stable)
[3/7] ci: container: don't leave labgrid checkout in /tmp
      https://git.pengutronix.de/cgit/barebox/commit/?id=864116e7642f (link may not be stable)
[4/7] ci: container: don't install recommended packages
      https://git.pengutronix.de/cgit/barebox/commit/?id=c037cd73fe99 (link may not be stable)
[5/7] ci: container: run apt-get clean after installation
      https://git.pengutronix.de/cgit/barebox/commit/?id=b99360e1c2e2 (link may not be stable)
[6/7] ci: container: add musl-tools
      https://git.pengutronix.de/cgit/barebox/commit/?id=d4122875856f (link may not be stable)
[7/7] ci: container: install LLVM/clang
      https://git.pengutronix.de/cgit/barebox/commit/?id=256014d2c998 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



