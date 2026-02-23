Delivery-date: Mon, 23 Feb 2026 11:21:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuT4P-004nQA-00
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 11:21:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuT4P-00083J-Cp
	for lore@pengutronix.de; Mon, 23 Feb 2026 11:21:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VXK4vXkiHkXBCnGHgHX35WS5/W89t+SukaeWV1MNO4k=; b=3dIlO7+GYROXeVsIru8ri1L6Tj
	QHF9dFsgmm5WdScGEQNCvHf9TTruyzPKc79cZ/XsoKuPW6OLAmnlt/ctcISah6bTn5T2+jF1GDVh2
	06L5VFF/WBIw8OvvjB9tVsEEJ7X/cZHgkUb9II/V3J+xSKJYyZGgJ6fSPcMKm0JVKA2elFskWOz5F
	JE3Q28alaOdUokss1L5DDyZKzZsWn1pIGMdRg3Zcw85J0b/HyRt8sanUqYfL/CnvgJS/K0b4GZRZn
	pSRi3Mz5pmJXw/wGMWdEYU4hfJ8KFjbGTEuPCLD66S/jjHwvioNBR8ytMXtOMjqCTLgndj5MSYnxt
	pZ5lPQwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuT41-000000002eZ-3G68;
	Mon, 23 Feb 2026 10:21:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuT3z-000000002dA-0BAD
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 10:21:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuT3x-0007wI-AY; Mon, 23 Feb 2026 11:21:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuT3v-002DBT-2U;
	Mon, 23 Feb 2026 11:21:13 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuT3x-00000000ryd-0DfP;
	Mon, 23 Feb 2026 11:21:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
In-Reply-To: <20260215172423.2658304-1-a.fatoum@pengutronix.de>
References: <20260215172423.2658304-1-a.fatoum@pengutronix.de>
Message-Id: <177184207305.207360.11056984409624198767.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 11:21:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_022115_096238_A8E0750E 
X-CRM114-Status: UNSURE (   6.56  )
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
X-Spam-Status: No, score=-1.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] of: fdt: fix double free in fdt_ensure_space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 15 Feb 2026 18:24:19 +0100, Ahmad Fatoum wrote:
> fdt_ensure_space() frees the original buffer on memalign_realloc()
> failure, but on error, the buffer is already freed by
> memalign_realloc() unlike realloc().
> 
> Fix this by aligning memalign_realloc() behavior with normal realloc()
> and adapting callers accordingly.
> 
> [...]

Applied, thanks!

[1/1] of: fdt: fix double free in fdt_ensure_space
      https://git.pengutronix.de/cgit/barebox/commit/?id=3d6d2414d85e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



