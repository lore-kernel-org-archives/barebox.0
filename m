Delivery-date: Mon, 10 Nov 2025 09:12:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIN14-00HJOl-2I
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 09:12:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIN14-0004U1-4l
	for lore@pengutronix.de; Mon, 10 Nov 2025 09:12:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VvbJ3mV6N1jVXAFjuBQCwVinbCgZpYoiegQc67GkQLM=; b=FwubSGvbITmuASNiAHW3ExrD7K
	vEfrUwmcXrgRJSIKLXl8L/2ZzW4f5eer8AjgG/80kAVfFPpXY/+piErhnKqZyHnCXiakXd8nfzni4
	3bQ/9R62LPasOf9tVD2VoP2NqwEtB2/P79Rwbu9ln2yP79/gxY1KQv5Rgtxrjc20KJAEtGfcfEIZO
	kfUGfdhlbeHckUDpLdM9ucwisV26b+iTDqNZD5PNlHGpuFgp86s0UQ3lX+qfIzRJf2dCiC9NHByhM
	IPBMt+3kAYYzD4KdB4BXwzElYlAcIVVUYuEJtd1Vs7pI4PyS8eKPY59gAp9TN8ZWS2vggfdN97JHb
	BahEwSZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIN0V-00000004x7G-3b8B;
	Mon, 10 Nov 2025 08:12:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIN0S-00000004x6S-2aWZ
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 08:12:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN0P-0004HU-CN; Mon, 10 Nov 2025 09:12:05 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN0P-007zCp-0S;
	Mon, 10 Nov 2025 09:12:05 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN0P-000000048GS-2D3A;
	Mon, 10 Nov 2025 09:12:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251107-talloc-v2-0-e47bfd0e5667@pengutronix.de>
References: <20251107-talloc-v2-0-e47bfd0e5667@pengutronix.de>
Message-Id: <176276232507.985046.6328397791765524563.b4-ty@pengutronix.de>
Date: Mon, 10 Nov 2025 09:12:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_001208_664182_BCBC2CCF 
X-CRM114-Status: UNSURE (   9.75  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/4] talloc and memory leak debugging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Nov 2025 15:41:08 +0100, Sascha Hauer wrote:
> This picks up the talloc series previously sent by Ahmad. I also added
> the memory leak debugging patch tooling for sandbox.
> 
> This series includes my review comments to v1.
> 
> Changes since v1:
> - pass originally allocated pointer to malloc_usable_size()
> - align talloc allocations to 8 bytes
> - Use __lsan_do_recoverable_leak_check() instead of
>   __lsan_do_leak_check() to keep barebox running after memory leaks have
>   been detected
> 
> [...]

Applied, thanks!

[1/4] lib: add talloc for overlaying a tree onto allocations
      https://git.pengutronix.de/cgit/barebox/commit/?id=9c35b3c2ac7e (link may not be stable)
[2/4] test: self: add talloc selftest
      https://git.pengutronix.de/cgit/barebox/commit/?id=2e65ba56f3ee (link may not be stable)
[3/4] hush: fix memory leaks
      https://git.pengutronix.de/cgit/barebox/commit/?id=f86d68979fa6 (link may not be stable)
[4/4] sandbox: add memory leak debugging tooling around LeakSanitizer
      https://git.pengutronix.de/cgit/barebox/commit/?id=bfa34bbddb8a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



