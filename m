Delivery-date: Tue, 18 Mar 2025 12:15:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUvA-0010xn-0q
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 12:15:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUv9-0004c1-1r
	for lore@pengutronix.de; Tue, 18 Mar 2025 12:15:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=outL+ujH5vj/DPud6J378jVf71PZaVVTBrk089ky3Vg=; b=qyOxnbxDaPvf/rJNsbosyBaExz
	GntdueprLjvtsJB1VBFRmkKvLPxY6BAQcxbPxMqi8uOFHeu+00pRjdUGbsMDCXHJj9ulA4LG6iY2Y
	Hz8uez1pED+HDl04ZjqhwVfKfpNX7l5Mh47ZeGVqUzE8EuXJOyt53vnl2+wpgW0eZStGBY2E5+duV
	tHe0/qQmcNTkJ+/EEPt2/P/h1gPGikb2ScpcXkTQMD5t7ThGWdFXN0LKdlt44WxjUz0ndbI+ywJFc
	4v72lkyE6J4cdSUbXSbeny5UHjZzQS5L/4Yt2brNCui+CHX3PyHQJYFiBB8if1UPRtQ1v7pQaEx13
	+VrBbBYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUuj-00000005fpB-18BU;
	Tue, 18 Mar 2025 11:15:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUnM-00000005eEq-2Pz7
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 11:07:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuUnL-0003Ip-9N; Tue, 18 Mar 2025 12:07:39 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuUnK-000PrO-2C;
	Tue, 18 Mar 2025 12:07:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuUnL-00G95l-06;
	Tue, 18 Mar 2025 12:07:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
In-Reply-To: <20250318082507.419785-1-a.fatoum@pengutronix.de>
References: <20250318082507.419785-1-a.fatoum@pengutronix.de>
Message-Id: <174229605902.3848130.2566513281542426179.b4-ty@pengutronix.de>
Date: Tue, 18 Mar 2025 12:07:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_040740_618863_05201103 
X-CRM114-Status: UNSURE (   8.55  )
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
Subject: Re: [PATCH 1/4] scripts/make_fit: factor dtb file name into
 configuration name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 18 Mar 2025 09:25:04 +0100, Ahmad Fatoum wrote:
> Bootloaders often support booting a specific FIT configuration by name.
> This is useful when the automatic boot fails, because the bootloader's
> DT compatible differs from the upstream one included with the Linux
> device trees.
> 
> Currently, configuration are numbered sequentially requiring the user to
> dump the FIT image to determine what number the configuration has.
> 
> [...]

Applied, thanks!

[1/4] scripts/make_fit: factor dtb file name into configuration name
      https://git.pengutronix.de/cgit/barebox/commit/?id=852e75a48dc7 (link may not be stable)
[2/4] amba: drop unused hepers for creating AMBA devices outside OF
      https://git.pengutronix.de/cgit/barebox/commit/?id=b12430033d05 (link may not be stable)
[3/4] amba: support masking data abort during identification
      https://git.pengutronix.de/cgit/barebox/commit/?id=c1395964b07f (link may not be stable)
[4/4] ARM: qemu: mask data aborts during AMBA identification
      https://git.pengutronix.de/cgit/barebox/commit/?id=2db7c84a8d0b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



