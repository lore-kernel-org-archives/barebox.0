Delivery-date: Fri, 14 Mar 2025 17:17:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7in-00E4cr-0f
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 17:17:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7im-000606-0p
	for lore@pengutronix.de; Fri, 14 Mar 2025 17:17:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FUmXgkiRNnSl9MdpT98QSsbV5ujd0kAIaFoSH6H1StM=; b=R6Ms2fZHYyG6HuX2Zc5l9VBBqG
	98uDiee3ycU0fI1eu7Ew8Ez7WR6D8zvzhIuFgePCk1tIdFfAVZ32tD2FmCEG0+Bub1l637drSuVgm
	MvHRJ7+l0piNlcTKea/H1UfEiOHkF2hyPDGzwKkwJqrmBlZiB2cOlEtctDq4IBzagtBfUOnFi/pWF
	w0Y3ieA97K7y7CPUz4QmN/HympOAgCJ458vSAoYbJRYnap8s3Ouq+K3NobvY5NsLeIlMmCL5m6Fj/
	2lyg3raWf+Far19GDJcmgQBgx1KmaaTzYEDoV7fQJlPJIswOHnzTaArTcKNL1wnRJSn1Dj7X/YQVE
	TyyFty9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7iN-0000000EilK-1evI;
	Fri, 14 Mar 2025 16:16:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7dH-0000000EhG8-45Wu
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 16:11:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7dF-0004q4-Tm; Fri, 14 Mar 2025 17:11:33 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7dF-005jFQ-2M;
	Fri, 14 Mar 2025 17:11:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7dF-00HHsM-28;
	Fri, 14 Mar 2025 17:11:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250313085658.13255-1-a.fatoum@pengutronix.de>
References: <20250313085658.13255-1-a.fatoum@pengutronix.de>
Message-Id: <174196869365.4120263.12791985060424280026.b4-ty@pengutronix.de>
Date: Fri, 14 Mar 2025 17:11:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_091136_014070_3FE04B4F 
X-CRM114-Status: UNSURE (   6.91  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] malloc: return ZERO_SIZE_PTR for 0-byte allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Mar 2025 09:56:58 +0100, Ahmad Fatoum wrote:
> Linux kmalloc doesn't return NULL on 0-byte allocations, but returns a
> fixed ZERO_PSIZE_PTR constant, which triggers a NULL page exception when
> dereferenced.
> 
> However, in barebox, allocator behavior differs:
> 
>  - glibc returns an unique pointer, but the standard also allows
>    libc implementations to return NULL
>  - tlsf returns NULL
>  - dlmalloc returns a unique pointer
>  - dummy malloc returns a unique pointer
> 
> [...]

Applied, thanks!

[1/1] malloc: return ZERO_SIZE_PTR for 0-byte allocations
      https://git.pengutronix.de/cgit/barebox/commit/?id=3f5b270289be (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



