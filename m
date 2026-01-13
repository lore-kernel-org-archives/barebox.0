Delivery-date: Tue, 13 Jan 2026 12:31:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfccm-000rdU-2i
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 12:31:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfccl-0008Qe-Rz
	for lore@pengutronix.de; Tue, 13 Jan 2026 12:31:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GL9aDLnn3rqpOvDFfcDWv5k54KHXT9AbHpH/gwEwH1Y=; b=xlF3o/+k5hf1MUM+KYUg9+HGz9
	ar/i2FohbAF8yGRHFqnt8Ae2Mm8aoWGH6mLjpUE8wAXHyQQHo9fgfmqfpy7FSjTxQKxWBtoOaWflv
	KvF9AS9dXLn3GjixKSXMxYw4cQQjMr5FdbBqSIeohYJXH/bofhFb+dqzV2gOqcF8IeL5tJSqC56xo
	jjYCurFkGnBnxtIci+zr/9Ba/61JVCYxeKBbv3NAi0TfoAcsvT2jupPD8cveOAPs997VLocQRNPCb
	5bAEHRnzTn6dHgp0II6ohD8MIg41ba+VaqJaihdvaZSzjpLiNH+WGEsIMDRynvvaLkCQYgH8VQh+Q
	NQ2w8WpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfccH-000000071ZF-1t4O;
	Tue, 13 Jan 2026 11:31:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfccE-000000071Yj-2uMe
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 11:31:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfccC-0008DX-Qn; Tue, 13 Jan 2026 12:31:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfccD-000Piu-0z;
	Tue, 13 Jan 2026 12:31:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfccC-00000009E8c-2OWJ;
	Tue, 13 Jan 2026 12:31:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260109170007.805177-1-a.fatoum@barebox.org>
References: <20260109170007.805177-1-a.fatoum@barebox.org>
Message-Id: <176830387256.2199045.16529930086643571863.b4-ty@pengutronix.de>
Date: Tue, 13 Jan 2026 12:31:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_033114_743905_9C838B2E 
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] test: arm: boot test Debian image in CI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 09 Jan 2026 17:57:26 +0100, Ahmad Fatoum wrote:
> So far, we had no automated tests that actually booted a kernel
> on every push (or PR). This series addresses this by
> a Debian ARM64 image and trying to boot it three times:
> 
>   - via GRUB
>   - directly via kernel EFI stub
>   - directly without EFI
> 
> [...]

Applied, thanks!

[1/5] test: arm: multi_v8_efiloader_defconfig: use qcow2 image
      https://git.pengutronix.de/cgit/barebox/commit/?id=c96a742e35d2 (link may not be stable)
[2/5] test: py: strategy: add helpers for booting kernel and bootm
      https://git.pengutronix.de/cgit/barebox/commit/?id=bb2ecd1a8428 (link may not be stable)
[3/5] test: py: efiloader: prepare get_dmesg for more general usage
      https://git.pengutronix.de/cgit/barebox/commit/?id=0fa715d6156c (link may not be stable)
[4/5] test: py: add more kernel boot tests
      https://git.pengutronix.de/cgit/barebox/commit/?id=d419b47a05cf (link may not be stable)
[5/5] ci: add Debian ARM64 EFI loader boot test
      https://git.pengutronix.de/cgit/barebox/commit/?id=96906f252c3f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



