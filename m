Delivery-date: Tue, 10 Jun 2025 10:48:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOuei-005jqc-1o
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 10:48:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOueh-0008I5-TY
	for lore@pengutronix.de; Tue, 10 Jun 2025 10:48:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tHhRWYeq0TWSCFS/GLc2c26jrSBnS3qF8y3dOOAQXE4=; b=tmlZWebxmbrGTa1Kbgn32n3zv8
	mUIsSZ56buGrdPZWOfdAJd1pK2PjKBmBtRcvdHsq/dLtDEAHwDbbXokxm2t7jIKU7J8K2ivk0MzpM
	YJizjvzWcb5n79sez98csGWodcTplvl8WjE0jVSCdUyYxWDQCFL1eQhtEOja2HPAxVCuQcNpYGqrm
	etG4EpAukJB+Z/KDo25RjtP7p9DwKrDQLMr0iTbUs/K0oeNXl8WA3PvoURtyrNlIJSPjrkIG0NTWX
	rsKDA6+0wpwALgBwwldMLCo7lAkHeilwGKhEw1fp5EyKX39TzHyDKe8HGA6KyChce+6JLBt68ZtKm
	leYImPWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOueH-00000006ECu-3Qym;
	Tue, 10 Jun 2025 08:48:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOudB-00000006E7k-3YnP
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 08:46:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOudA-0007Ug-Co; Tue, 10 Jun 2025 10:46:52 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOudA-002k7N-0e;
	Tue, 10 Jun 2025 10:46:52 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOudA-001O9t-0R;
	Tue, 10 Jun 2025 10:46:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
Message-Id: <174954521212.330896.4880517797866988058.b4-ty@pengutronix.de>
Date: Tue, 10 Jun 2025 10:46:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_014653_894409_A1A46E7D 
X-CRM114-Status: UNSURE (   7.97  )
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
Subject: Re: [PATCH 00/21] sandbox: add libfuzzer-based fuzzing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Jun 2025 13:35:09 +0200, Ahmad Fatoum wrote:
> We have a number of security-sensitive parsers in barebox that process
> untrusted input, even in secure boot systems, e.g. the FIT parser, but
> also the partition parser.
> 
> This series adds fuzzing tests for a number of these parsers based on
> libfuzzer.
> 
> [...]

Applied, thanks!

[01/21] pbl: add provision for architectures without piggy loader
        https://git.pengutronix.de/cgit/barebox/commit/?id=f188bd7651d7 (link may not be stable)
[02/21] firmware: make Layerscape FMan firmware proper-only
        https://git.pengutronix.de/cgit/barebox/commit/?id=095a7670a274 (link may not be stable)
[03/21] mci: sdhci: support compiling common SDHCI code for sandbox PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=de9d003b5347 (link may not be stable)
[04/21] kbuild: define and use more generic symlink command
        https://git.pengutronix.de/cgit/barebox/commit/?id=125b9f671a99 (link may not be stable)
[05/21] kbuild: collect compatibility symlink creation in symlink-y
        https://git.pengutronix.de/cgit/barebox/commit/?id=a1f893cc16e6 (link may not be stable)
[06/21] kbuild: allow customizing barebox proper binary
        https://git.pengutronix.de/cgit/barebox/commit/?id=fb2b03c00323 (link may not be stable)
[07/21] sandbox: make available all CONFIG_ symbols to OS glue code
        https://git.pengutronix.de/cgit/barebox/commit/?id=30047fe2da73 (link may not be stable)
[08/21] sandbox: switch to using PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=2aba0017c95a (link may not be stable)
[09/21] kbuild: populate non-host CXX variables
        https://git.pengutronix.de/cgit/barebox/commit/?id=f478c579a65b (link may not be stable)
[10/21] string: add fortify source support
        https://git.pengutronix.de/cgit/barebox/commit/?id=4aaaed53fec4 (link may not be stable)
[11/21] sandbox: populate UNAME_M variable
        https://git.pengutronix.de/cgit/barebox/commit/?id=aeed44d3d083 (link may not be stable)
[12/21] Add fuzzing infrastructure
        https://git.pengutronix.de/cgit/barebox/commit/?id=3e0963489879 (link may not be stable)
[13/21] filetype: add fuzz target
        https://git.pengutronix.de/cgit/barebox/commit/?id=08b8143838ea (link may not be stable)
[14/21] block: mark underlying cdev with DEVFS_IS_BLOCK_DEV
        https://git.pengutronix.de/cgit/barebox/commit/?id=a6410cfa9aff (link may not be stable)
[15/21] block: add lightweight ramdisk support
        https://git.pengutronix.de/cgit/barebox/commit/?id=cf4b60803b61 (link may not be stable)
[16/21] fuzz: add support for passing fuzz data as r/o ramdisk
        https://git.pengutronix.de/cgit/barebox/commit/?id=323b4062fca3 (link may not be stable)
[17/21] partitions: add partition table parser fuzz target
        https://git.pengutronix.de/cgit/barebox/commit/?id=532358a9f4f5 (link may not be stable)
[18/21] fdt: add fuzz test
        https://git.pengutronix.de/cgit/barebox/commit/?id=68d5c01480d2 (link may not be stable)
[19/21] fit: add fuzz test
        https://git.pengutronix.de/cgit/barebox/commit/?id=30c0d7117909 (link may not be stable)
[20/21] Documentation: add LLVM libfuzzer documentation
        https://git.pengutronix.de/cgit/barebox/commit/?id=46a839f7c848 (link may not be stable)
[21/21] sandbox: add support for coverage info generation
        https://git.pengutronix.de/cgit/barebox/commit/?id=4db442561229 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



