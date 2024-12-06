Delivery-date: Fri, 06 Dec 2024 11:09:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJVGi-004hP8-0Z
	for lore@lore.pengutronix.de;
	Fri, 06 Dec 2024 11:09:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJVGi-0000I3-57
	for lore@pengutronix.de; Fri, 06 Dec 2024 11:09:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=601A2itHDn8yxbJQP/IbytF/HK6r9dHWKXACKhhd16o=; b=jCTixykZe8aODLpmEC++wtSu+O
	llobB0QsNZ08/98HVED7pzEGBM0I9pWhphyRewkumONkL1h4pMdRbKNYtfWJ9O81TT9rW93oysrVX
	rYzcXCRcNlQ61HB2OY4zKCJfj0RNHhpvpoT+tHNv4VQ3MjzpyH/0PF4xWmv8ErUQH6qP8PYd85/nt
	Dq7xfbALtNs90o7OfPT61DngjAdl4ncB+ancB4N9K4yfHZ2jD45OZUKkV4qO0upGXjcgWb91uMpJA
	bM4DgVEOTOSnO6o/wdJmvmkdpB304LvWwNgZ/BrEGMlXVyXJfEs328Y64xumcsJ4E73Mcm62+M4HO
	WMDTFaPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVGM-00000001CVQ-1B9g;
	Fri, 06 Dec 2024 10:08:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVGJ-00000001CUy-1cu9
	for barebox@lists.infradead.org;
	Fri, 06 Dec 2024 10:08:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJVGI-0000Bh-16; Fri, 06 Dec 2024 11:08:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJVGH-001yex-0E;
	Fri, 06 Dec 2024 11:08:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJVGH-000ZY6-2U;
	Fri, 06 Dec 2024 11:08:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241203104225.3851406-1-a.fatoum@pengutronix.de>
References: <20241203104225.3851406-1-a.fatoum@pengutronix.de>
Message-Id: <173347971776.136603.13984362424999062851.b4-ty@pengutronix.de>
Date: Fri, 06 Dec 2024 11:08:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_020839_429896_9C18CD21 
X-CRM114-Status: UNSURE (   6.82  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] kbuild: split off compiler helpers into separate
 Makefile.compiler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 03 Dec 2024 11:42:24 +0100, Ahmad Fatoum wrote:
> Linux has split the compile-specific helpers into a separate file, so
> let's do the same for barebox to make it easier to sync
> scripts/Kbuild.include in the follow-up commit.
> 
> 

Applied, thanks!

[1/2] kbuild: split off compiler helpers into separate Makefile.compiler
      https://git.pengutronix.de/cgit/barebox/commit/?id=0e0a2ad162a1 (link may not be stable)
[2/2] kbuild: sync scripts/Kbuild.include with Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=7b319be7cab6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



