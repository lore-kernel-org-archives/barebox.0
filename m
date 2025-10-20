Delivery-date: Mon, 20 Oct 2025 14:58:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTU-009tle-1u
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:58:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTL-0000aC-U0
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:58:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yRXG9H0pPfBMrVeScVXrUBn+N/pW0d5iKbDr/gbtmD4=; b=HOdV6yKwGGaCwRjZLVGvCH82JV
	edibJmdfx1dbHZ1jpEagIshS5vIoI047/0lYHI7hw48YtqZakyCjMojYkK7H1YX8nYuvfUZKgUrgJ
	fBL+s+FZ41OlWBpFN88jvIeC01DwTCLLe+fbaWaoyIcZqb4W2mvy1oSa5h+Rpb/SJmtRYUf41MlqR
	zY5oZhyh9eV5v9cNEZ8AOJNPYQv60uFKw70jRzFBS+MmjgZC4PU9TqX2Hl6/kyS3/O2QJ2trVfJFv
	WVlBBaOKgiUsG/2+rjB6NPZnTsIe7PJoaEofKO8K0ch7luBe6P6N5hfXUnleaTmBYqwRoG3YuIKHl
	Tx5ty97g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSk-0000000DfEn-16kA;
	Mon, 20 Oct 2025 12:58:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSe-0000000Df6M-3N1x
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSd-0008DQ-DE
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnh5-004XEO-2I;
	Mon, 20 Oct 2025 13:04:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnh5-0000000A4VE-2gsk;
	Mon, 20 Oct 2025 13:04:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251015082640.4093689-1-a.fatoum@barebox.org>
References: <20251015082640.4093689-1-a.fatoum@barebox.org>
Message-Id: <176095829163.2400561.12455385829585675167.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 13:04:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_055804_864542_5DC30ADD 
X-CRM114-Status: UNSURE (   6.55  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! tlsf: support on-demand requesting memory from
 external store
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Oct 2025 10:26:39 +0200, Ahmad Fatoum wrote:
> tlsf: fix misaccounting in request_store feature
> 
> A TLSF pool itself has overhead in the form of tlsf_pool_overhead()
> that's distinct from the struct pool_entry. Adding a helper that returns
> this total overhead allows us also to use roundup_pow_of_two(), which
> previously issues a warning on clang about sizeof(sizeof(...)) looking
> strange.
> 
> [...]

Applied, thanks!

[1/1] fixup! tlsf: support on-demand requesting memory from external store
      https://git.pengutronix.de/cgit/barebox/commit/?id=78cd84652672 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



