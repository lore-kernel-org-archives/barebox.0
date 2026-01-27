Delivery-date: Tue, 27 Jan 2026 08:57:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdwd-005pEl-1N
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 08:57:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdwc-0004RG-FH
	for lore@pengutronix.de; Tue, 27 Jan 2026 08:57:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qCPKYX02in5nhe3bV64FAVOjREs6gbwtYtKuGnHQHkc=; b=QJL7+g1yyMLoHKYTTqRnk00SnE
	QU57uirBTzceLCCu42u+ZWzUmiEo+KwdmiyGT02pJ2gS/ksBrlB0fH4KGmFJix9G5Rt/wutpEQ1xG
	7o6wlXcDA5/o+t8vUOmuXYPlD0DMKE7/+JtSik3VxSCC50jbsM2lsmtFtW2gxytqoFFxn7f/DsScl
	Gi4DEXvyexrraVu8y5QZwRZZwsjdb1lhMAzyK0YT0GK7prIf5h8cA7ChbQlR9lORi9evXKoArFZnN
	oZyTFMSnf+ggkqKmFxaf0Wyf4aonBXnMTdtkcbwKNxPF2EZMYEINrmjeHRJkETz+s/jfO1MQxIJ4k
	A8ISJJGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdw9-0000000Do3X-3cJ2;
	Tue, 27 Jan 2026 07:56:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdw7-0000000Do3C-3OwJ
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 07:56:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdw6-0004MH-3g; Tue, 27 Jan 2026 08:56:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdw6-002iGt-1h;
	Tue, 27 Jan 2026 08:56:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdw6-00000008ZAi-18GB;
	Tue, 27 Jan 2026 08:56:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de, "Claude Sonnet 4.5" <noreply@anthropic.com>
In-Reply-To: <20260126104433.765071-1-a.fatoum@pengutronix.de>
References: <20260126104433.765071-1-a.fatoum@pengutronix.de>
Message-Id: <176950058980.2041401.4272961523712285686.b4-ty@pengutronix.de>
Date: Tue, 27 Jan 2026 08:56:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_235631_858360_25996ED4 
X-CRM114-Status: UNSURE (   7.67  )
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
X-Spam-Status: No, score=-1.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/2] FIT: fix double free issue with >1
 reference count
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 Jan 2026 11:44:29 +0100, Ahmad Fatoum wrote:
> fit_open() was recently changed to be reference counted. When the FIT is
> already open, a handle will be returned with the canonical filename
> being the only allocation incurred.
> 
> fit_close() however unconditionally frees the handle without regards to
> the reference count.
> 
> [...]

Applied, thanks!

[1/2] FIT: fix double free issue with >1 reference count
      https://git.pengutronix.de/cgit/barebox/commit/?id=ba345a71e85e (link may not be stable)
[2/2] FIT: fuzz: fix reference count underflow
      https://git.pengutronix.de/cgit/barebox/commit/?id=e400bf88dea6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



