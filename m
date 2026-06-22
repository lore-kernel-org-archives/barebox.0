Delivery-date: Mon, 22 Jun 2026 08:21:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wbY2D-008YkS-22
	for lore@lore.pengutronix.de;
	Mon, 22 Jun 2026 08:21:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wbY2D-0006XO-0u
	for lore@pengutronix.de; Mon, 22 Jun 2026 08:21:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XlE2CBXxH3MQXlFn5bwAclTeDfwRyxTPxQOiLpOFIiw=; b=EMriNjCJmgYif30zp9cSnAADqr
	5daK08Om6kM+PfGGNkJGeCodY6t+F50Qy+S9mrA8nzxaB+i24tihEInmgcmXeEYpegiWSpQAXxRXG
	n6ktkxendTdL0zfiot+nqdTdVxvr1i2HTh2ILDRN1T61piWQYE3SwcoJCdfDv2ummRSmZSobRJ0A+
	Qf5RUATxoQmLBZ2VGyjBndU5obUindKfDUSXKmJPZYdi07v+FHi/F16xX8OdKFLRBvot1B5c0dzuo
	K/QdXKbbHhBvIoHn+HWhIqh4jDK1YagG9Ls1WVzQv/4zcK1EyxiSmAgBA1HdZgk/UiCwf3z28woSC
	WbHi0BHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbY0s-00000004TKF-2Pce;
	Mon, 22 Jun 2026 06:20:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbY0o-00000004TJO-28dX
	for barebox@lists.infradead.org;
	Mon, 22 Jun 2026 06:20:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 88336200669;
	Mon, 22 Jun 2026 08:19:56 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wbY0i-0042aB-1S;
	Mon, 22 Jun 2026 08:19:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wbY0i-00000008pgF-1cU4;
	Mon, 22 Jun 2026 08:19:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260620050459.1444430-1-a.fatoum@barebox.org>
References: <20260620050459.1444430-1-a.fatoum@barebox.org>
Message-Id: <178210919637.2105264.570095720490216958.b4-ty@pengutronix.de>
Date: Mon, 22 Jun 2026 08:19:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260621_232002_712313_6772277B 
X-CRM114-Status: UNSURE (   5.36  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: mmu: skip cacheable page flushes for empty
 ranges
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 20 Jun 2026 07:04:56 +0200, Ahmad Fatoum wrote:
> If we end here with a size of zero, region_end will become -1 and
> is a sure way to lead into confusing issues.
> 
> __arch_remap_range() skips 0-sized regions, so do likewise here, so
> all of arch_remap_range() is 0-size-region safe.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: mmu: skip cacheable page flushes for empty ranges
      https://git.pengutronix.de/cgit/barebox/commit/?id=95ff4d5058ac (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



