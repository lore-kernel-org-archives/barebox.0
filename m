Delivery-date: Mon, 07 Apr 2025 10:02:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hR2-009Sue-1g
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 10:02:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hR1-0005LP-VH
	for lore@pengutronix.de; Mon, 07 Apr 2025 10:02:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eEQYJCS2Sel6s0Bu39zGNbx5VUBE28Txedo0FqHlJXw=; b=DMT+eR6DVORHJbdf8jDERMj4Ee
	EkwSDHxYd/aNbignclyptvFUk83vD1juJ67P36HtDdpcGXEs+Yt6+Zi488JAgLGUhVwl8ocShURKM
	ciJdGop66zrurgbKBrlmZjtQ2i4WQHy1Fpk9mqMtWM+JjfKA4eMIsFepxYkVc5Q7PjPSWZyYNyo/L
	b7Ey0gPRLMWou7DLYJWdkj1CfIxELEiF+rmE8Nm7/eOlnmISdjFg5fZ4wFPwjHV90KknFkmn66ktI
	1SMUubKKEZWJ3UG8QQyhIDuegP7ascmCvAoNfDzJIfwy80rGQHgJyeD176zAtzhmN1d3dzALWvzhF
	jk+nT3OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1hQN-0000000Gufn-1t7K;
	Mon, 07 Apr 2025 08:01:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1hHr-0000000Gs0z-0Gat
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 07:52:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1hHp-0002km-4a; Mon, 07 Apr 2025 09:52:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1hHo-003isI-34;
	Mon, 07 Apr 2025 09:52:52 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1hHo-004oHM-2q;
	Mon, 07 Apr 2025 09:52:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: bst@pengutronix.de
In-Reply-To: <20250404182345.2999795-1-a.fatoum@pengutronix.de>
References: <20250404182345.2999795-1-a.fatoum@pengutronix.de>
Message-Id: <174401237287.1146547.10177156398576512536.b4-ty@pengutronix.de>
Date: Mon, 07 Apr 2025 09:52:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_005255_118332_C866CA29 
X-CRM114-Status: UNSURE (   9.57  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/3] commands: devlookup: add option to print kernel
 root option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 04 Apr 2025 20:23:42 +0200, Ahmad Fatoum wrote:
> There exists currently no way to view the kernel root option that
> barebox would generate when instructed to via global.bootm.root_dev,
> but without actually mounting the file system.
> 
> Add a new devlookup -k option that can print this. This can be useful in
> scripts that want to fixup the root line, so it's interpreted by the rdinit,
> but not by the kernel.
> 
> [...]

Applied, thanks!

[1/3] commands: devlookup: factor out cmd_export_val
      https://git.pengutronix.de/cgit/barebox/commit/?id=61a33875bc21 (link may not be stable)
[2/3] commands: findmnt: add support for exporting target as variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=f041cefa94f9 (link may not be stable)
[3/3] commands: devlookup: add option to print kernel root option
      https://git.pengutronix.de/cgit/barebox/commit/?id=069bc37e0d23 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



