Delivery-date: Fri, 08 Nov 2024 10:52:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9Lfa-006H5V-2y
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 10:52:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9Lfb-0000mq-I2
	for lore@pengutronix.de; Fri, 08 Nov 2024 10:52:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dBPwxbFcGNC9l8iH9U3ASjZqAVISvbwRt/MezAl514s=; b=U8RLx4WqOk4q/OdJC87FQBhiF4
	T4AmlXmvRLawTE7OevCVUKFJu4Kr1ofPbtbV+Rjz6gbljvHa+pLl4+SAxnkvz+BoRS+wUBJi2HtKK
	6i51Ngj/kBjiMAYmyV0/0wb+AS9BRUWfnbIy6w8waJmc8+9v5icrOqjU5G/dh35H5dOglCZ0Klr/3
	Q66H6I3pN7XQd3W3TQYTHq4WRtsiM5xbOOdWUT9lZOeKxDtlOzdb+gkUIbIbwqW0FSNmAvhT+cFYv
	/nrIUj+M9sNIb/R1lR7nULMsM/wGy3cnbz6M/jc7bYL7xoU86SPEYRTBFtTCQbeRjt63CWdKGx04a
	FcwoSlZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Lf5-0000000A11S-45JF;
	Fri, 08 Nov 2024 09:52:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Lf2-0000000A10s-3Oly
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 09:52:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9Lf1-0000fD-GG; Fri, 08 Nov 2024 10:52:11 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9Lf1-002bC9-10;
	Fri, 08 Nov 2024 10:52:11 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9Lf1-009d43-0p;
	Fri, 08 Nov 2024 10:52:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20241107-fix-sha256-assembly-v2-0-5fdb418f7f54@pengutronix.de>
References: <20241107-fix-sha256-assembly-v2-0-5fdb418f7f54@pengutronix.de>
Message-Id: <173105953125.2295088.17383889318504713504.b4-ty@pengutronix.de>
Date: Fri, 08 Nov 2024 10:52:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_015212_885049_E7FFD419 
X-CRM114-Status: GOOD (  11.54  )
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
Subject: Re: [PATCH v2 0/7] arm: crypto: sha256: fix generation of thumb2
 assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 07 Nov 2024 15:02:18 +0100, Stefan Kerkmann wrote:
> The checked in `sha256-core.S_shipped` assembly file has a thumb2
> specific workaround applied[1]. This fix wasn't backported to the perl
> script `sha256-armv4.pl` used to generate the assembly, thus when the
> script is run it would regenerate the buggy code.
> 
> Under rare circumstances the modification timestamp of `sha256-armv4.pl`
> differs enough from `sha256-core.S_shipped` that make triggers a
> regeneration - leading to a broken sha256 digest on ARMv7 compiled in
> Thumb2 mode. In my case it was a Yocto build of barebox from an external
> source tree. Either the git checkout/clone process produced different
> timestamps, as these are non-deterministic, or I accidentally touched
> the file in another way. The bug expressed itself not in crashes but
> wrong sha256 sums.
> 
> [...]

Applied, thanks!

[1/7] arm: crypto: sha256: fix generation of thumb2 assembly
      https://git.pengutronix.de/cgit/barebox/commit/?id=636a00bd9a32 (link may not be stable)
[2/7] arm: configs: multi_v5_v6_defconfig: move rpi1 armv6 targets
      https://git.pengutronix.de/cgit/barebox/commit/?id=506dc2607820 (link may not be stable)
[3/7] arm: configs: multi_v5_v6_defconfig: enable arm optimized sha1/sha256 digest
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea88325d8c6e (link may not be stable)
[4/7] arm: configs: multi_v7_defconfig: compile for thumb2
      https://git.pengutronix.de/cgit/barebox/commit/?id=c48cade5d459 (link may not be stable)
[5/7] arm: configs: multi_v7_defconfig: enable arm optimized sha256 digest
      https://git.pengutronix.de/cgit/barebox/commit/?id=e66a5d6f1d9b (link may not be stable)
[6/7] arm: configs: multi_v8_defconfig: enable arm optimized sha1/sha256 digest
      https://git.pengutronix.de/cgit/barebox/commit/?id=8475ef42aa87 (link may not be stable)
[7/7] test: arm: rpi: run tests against multi_v5_v6_defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=8768361f59aa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



