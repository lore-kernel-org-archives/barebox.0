Delivery-date: Tue, 30 Sep 2025 11:55:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3X4k-002jil-2B
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 11:55:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3X4k-00021i-5E
	for lore@pengutronix.de; Tue, 30 Sep 2025 11:55:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0e4LDtWswfHHZjqNlmwYq+5T3YdNKNsKMYaG7v12Ihg=; b=h0blKQrS0LmKuDQOHFuUIMbH6u
	sFRJmrhm6eSwXZBw2AwGgi2BVMoZ4fodfaxAyYzHLJhKC2Ke4Fi0i6LFU6A3LXM/skB55QU5EyaId
	KTn6rm+WvilY02OemuSxFO+IV/GRWpnQl0tGWb0mDpT2cDeVxuErfXRrttoM+sVyB1BKSGYDjPwJq
	QlJ6v8t56zm0QBXRgBW9MZLsDc8aEwRdYMS2ENdAZ77kvMpoPGFK7mp4eHs9regCoBo0F8b8M8fOS
	rJA40j51op/m+sXjcCzN9BbKmW1eUX+evk/eCZFS0j9NsuvQC5q3/O6IG2aDw5/BWQjL7VuIr/n19
	F+vZT/eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3X4F-00000004vi3-13Zh;
	Tue, 30 Sep 2025 09:54:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3X4B-00000004vgc-2Unn
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 09:54:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3X49-0001sn-VH; Tue, 30 Sep 2025 11:54:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3X49-001Dzn-2V;
	Tue, 30 Sep 2025 11:54:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3X49-0000000F61w-2zRx;
	Tue, 30 Sep 2025 11:54:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: sha@pengutronix.de
In-Reply-To: <20250930085401.2133061-1-a.fatoum@pengutronix.de>
References: <20250930085401.2133061-1-a.fatoum@pengutronix.de>
Message-Id: <175922607770.3597987.4657271232186011387.b4-ty@pengutronix.de>
Date: Tue, 30 Sep 2025 11:54:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_025439_636010_CDE28156 
X-CRM114-Status: GOOD (  10.48  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] MAKEALL: query CONFIG_64BIT before make instead of
 CONFIG_ARM64 after
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 30 Sep 2025 10:53:58 +0200, Ahmad Fatoum wrote:
> The current logic inside MAKEALL is flawed: We source an ARM64 config
> with CROSS_COMPILE=${CROSS_COMPILE_arm} and hope that CONFIG_ARM64
> results, so we can grep for it in the .config despite it missing in the
> defconfig.
> 
> Replace this by looking for CONFIG_64BIT instead in the defconfig
> directly. This symbol seems to be there for all ARM64 configs we have
> and if this ceases, CI will let us know.
> 
> [...]

Applied, thanks!

[1/1] MAKEALL: query CONFIG_64BIT before make instead of CONFIG_ARM64 after
      https://git.pengutronix.de/cgit/barebox/commit/?id=181e6c5d638f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



