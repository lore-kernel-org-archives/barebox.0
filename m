Delivery-date: Mon, 03 Feb 2025 10:23:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tesff-007vIE-2e
	for lore@lore.pengutronix.de;
	Mon, 03 Feb 2025 10:23:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tesff-0002C8-US
	for lore@pengutronix.de; Mon, 03 Feb 2025 10:23:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qpplXwFweeCzNw+j+rCpGSzK62YDT4oWdP/LbpxXufI=; b=qHuhi3i4H8ZODoEpjtU0YR93Ku
	7fMbp+FuX9dbJPf+yMyrBHMGCSgFapweFkevivHdhRbQXTsGG/GUb1QVxedDWXqGk0Ixo4RKkHKk2
	ezn89dCBny9peT0zgtlsIfCZclNHPZq+aVDb2kFjnPN8exVC1vJMQVY7cUqpvQy4jzRDNsyyxPvGU
	cSoEs7M+vjL3RuAC3mGvGdd0G8XUQlwnOl3RCwTtATrXmRS5zdxhUF7FlpUTtRcEaxPCAqZbbgYkz
	wQ91uoA4Ypiw5O37nGm6/DntpcxxdFhbDOuU3L/FkbQD6b2MCRNmXh0xhjhl9hiX0qrxtqSNQKzzu
	0Vge6TTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tesfG-0000000EyrJ-1hv9;
	Mon, 03 Feb 2025 09:22:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tesaw-0000000Ey1i-31VZ
	for barebox@lists.infradead.org;
	Mon, 03 Feb 2025 09:18:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tesav-0001Wd-It; Mon, 03 Feb 2025 10:18:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tesav-003GhH-0v;
	Mon, 03 Feb 2025 10:18:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tesav-00EmHL-0g;
	Mon, 03 Feb 2025 10:18:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 David Dgien <dgienda125@gmail.com>
In-Reply-To: <20250131-hostname-fix-v1-1-8d7ae619fcf4@gmail.com>
References: <20250131-hostname-fix-v1-1-8d7ae619fcf4@gmail.com>
Message-Id: <173857429720.3522156.14761012076799558840.b4-ty@pengutronix.de>
Date: Mon, 03 Feb 2025 10:18:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_011818_763949_53EA690F 
X-CRM114-Status: GOOD (  11.83  )
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
Subject: Re: [PATCH] kbuild: Use uname for BAREBOX_COMPILE_HOST
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 31 Jan 2025 22:59:08 -0500, David Dgien wrote:
> Adoption of Linux Commit:
> 
> | commit 1e66d50ad3a1dbf0169b14d502be59a4b1213149
> | Author: Chris Down <chris@chrisdown.name>
> | Date:   Tue Oct 20 10:34:59 2020 +0100
> |
> |     kbuild: Use uname for LINUX_COMPILE_HOST detection
> |
> |     `hostname` may not be present on some systems as it's not mandated by
> |     POSIX/SUSv4. This isn't just a theoretical problem: on Arch Linux,
> |     `hostname` is provided by `inetutils`, which isn't part of the base
> |     distribution.
> |
> |         ./scripts/mkcompile_h: line 38: hostname: command not found
> |
> |     Use `uname -n` instead, which is more likely to be available (and
> |     mandated by standards).
> |
> |     Signed-off-by: Chris Down <chris@chrisdown.name>
> |     Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> 
> [...]

Applied, thanks!

[1/1] kbuild: Use uname for BAREBOX_COMPILE_HOST
      https://git.pengutronix.de/cgit/barebox/commit/?id=b001dfee2bd0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



