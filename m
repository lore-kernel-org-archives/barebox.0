Delivery-date: Mon, 02 Jun 2025 14:35:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM4Nd-002xc1-1a
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 14:35:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM4Nc-0005XT-Vo
	for lore@pengutronix.de; Mon, 02 Jun 2025 14:35:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=irprOwwGx9PHZvZO3XadPG8GZyIQhyFJZoQTsr2m67U=; b=LcQddpndPrSNjJfQ9o0nltgaYO
	yOSjjY9E6/gNgdz5YdWOkLI8YHRMELt28TCuOuLn+vzYyv7coUl820flqS9fX80UWC0Qjo1JZnbpP
	p6lQjrRJza2PIYBydm69Xy+ifZfixwq6aVSkOGPEsfSZWHhTiMBdSnpd2KdAcuFjcij7UFOxeNd9i
	C36EUL4YHJVoDhDY3tvwZVI3xuzqn1S/vQ4uLQLzkhL027ysB3FOFGCg9gxRcK0c8UAP4BeJD10ga
	vX4fwj/RHaAYdmJHFQRP5kT8d4notSbi0NaaXHnhDWqK8jXYch6Ndk6CQv8w06wBGWl99nQ9vbEq2
	SGDnerIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM4NF-00000007NGZ-3Saq;
	Mon, 02 Jun 2025 12:34:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM4I5-00000007Mnl-0PZR
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 12:29:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4I3-0003Ol-VH; Mon, 02 Jun 2025 14:29:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4I3-001S9n-2X;
	Mon, 02 Jun 2025 14:29:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4I3-004BiC-2J;
	Mon, 02 Jun 2025 14:29:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 =?utf-8?q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
In-Reply-To: <20250527075205.2915063-1-ejo@pengutronix.de>
References: <20250527075205.2915063-1-ejo@pengutronix.de>
Message-Id: <174886735971.998258.6435902715279285796.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 14:29:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_052921_138884_1C505461 
X-CRM114-Status: UNSURE (   6.96  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] docs: conf.py: tweak SearchEnglish to be hyphen- and
 dot-friendly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 27 May 2025 09:52:05 +0200, Enrico Jörns wrote:
> This modifies the default indexer split() and js splitQuery()
> methods to support searching for words with 'inner' hyphens or dots.
> 
> While this might not be an ideal, rock solid, and fully future-proof
> solution, since it relies on some upstream sphinx-docs methods to exist,
> it allows to search for strings including hyphens and dots, such as
> 'OP-TEE', 'nv.bootchooser.last_chosen', or 'barebox-state'.
> 
> [...]

Applied, thanks!

[1/1] docs: conf.py: tweak SearchEnglish to be hyphen- and dot-friendly
      https://git.pengutronix.de/cgit/barebox/commit/?id=508059d41381 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



