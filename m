Delivery-date: Fri, 23 Aug 2024 10:06:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shPJe-00CW7U-1S
	for lore@lore.pengutronix.de;
	Fri, 23 Aug 2024 10:06:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shPJd-0000Ai-S4
	for lore@pengutronix.de; Fri, 23 Aug 2024 10:06:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6fXZDfXR12j5Dl9qv1JpQEjbu3Y4IuiCDxtWi3Xjy/U=; b=GlBCCbjJ2K0UX9000y7hGlF4eo
	yvu0kgk5D+hZQeRVWXg6fuK0RiPVhN9h/yQ3IR1PAN1+6UmKWMmKQTeP88c2x/YsqORqUSEuX9WRU
	L+c4UvXMIoAo2wdmr4QEEV0rOZF4on9X3MdxE1m7acj5BPTpm0dvRwf0cWJYMg8+nxT0uoKBndWc7
	ZP5t6L6Ukf3NsOuA6fQxMbLCy2/tT3jCDew5xPcsQFOs//EbL5F6YLvKqC/XyBaoA4/qtmrCQfHfl
	vMOmTXHEYph0sgya2Zui3bDCyYJhVdfnMiae1BkR0jM8p3cyyG6A/DfS1xPPXbLLXtlD0PIeNZY82
	/Gy2H4oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPJB-0000000FlMk-01ik;
	Fri, 23 Aug 2024 08:06:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPHM-0000000FkeX-08iW
	for barebox@lists.infradead.org;
	Fri, 23 Aug 2024 08:04:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1shPHK-0008C8-EX; Fri, 23 Aug 2024 10:04:14 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1shPHK-002RBK-1R; Fri, 23 Aug 2024 10:04:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1shPHJ-008tMp-3B;
	Fri, 23 Aug 2024 10:04:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240822115730.1184500-1-a.fatoum@pengutronix.de>
References: <20240822115730.1184500-1-a.fatoum@pengutronix.de>
Message-Id: <172440025398.2119439.1002536867973308224.b4-ty@pengutronix.de>
Date: Fri, 23 Aug 2024 10:04:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_010416_154474_B2D1A736 
X-CRM114-Status: UNSURE (   8.77  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/5] test: conftest.py: move top-level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 22 Aug 2024 13:57:26 +0200, Ahmad Fatoum wrote:
> We have a top level pytest.ini to support running pytest --lg-env=$some_env
> without extra arguments. This works for running tests nornally, but not if
> extra options like --qemu should be used, because the conftest.py won't
> be loaded early enough.
> 
> The easy fix is moving the conftest.py a level higher as described in:
> 
> [...]

Applied, thanks!

[1/5] test: conftest.py: move top-level
      https://git.pengutronix.de/cgit/barebox/commit/?id=884fd2ec8497 (link may not be stable)
[2/5] MAKEALL: return error code from do_build_target
      https://git.pengutronix.de/cgit/barebox/commit/?id=4a89f37d0c2b (link may not be stable)
[3/5] MAKEALL: don't build all configs wen defconfigs given
      https://git.pengutronix.de/cgit/barebox/commit/?id=3c0c3ebaa523 (link may not be stable)
[4/5] MAKEALL: add support for running pytest after build
      https://git.pengutronix.de/cgit/barebox/commit/?id=d0ef5a0c8e3a (link may not be stable)
[5/5] Documentation: board: emulated: rewrite to use MAKEALL/pytest directly
      https://git.pengutronix.de/cgit/barebox/commit/?id=af54b28a8c1d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



