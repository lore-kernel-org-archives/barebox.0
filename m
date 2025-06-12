Delivery-date: Thu, 12 Jun 2025 10:10:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPd0p-006RQn-1l
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 10:10:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPd0o-0008GB-SK
	for lore@pengutronix.de; Thu, 12 Jun 2025 10:10:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CO57y8R2bhUCmtKGM3F8zGWqKWXQqR9ptyGNBxQw7sg=; b=zjsdk5wGWNht3Dv1LoZOvW7Td5
	tHKgKGLkZ+sbExgashvMUkDm4bWAny7+PXsqbbNhFlYpSwwxxWrGUtQDf8T2NXY75UpbDNhfYAmgk
	XPtr0wpLnWjgTghR5uEJ8ofSS2SE7DDipOnv2j//Z1E0ueniXqWEpz7C43zQ7fw6nX2dYdwW6mnWW
	VA8zVLP+iBPGrzLoFQ+4eR3NUsjbWpbgibH27Uua0u1foSdq2g5VUnsDl4N5diacMK5fGlO9pUDs5
	8lUmlGNv9Uz8pQTjfPoihgzp4/0oQ6LJLJu5R27swBZ1qeK+E0Yv6G5AsVaydhGHEeU23zalFaDe+
	utw4fpbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPd0I-0000000CYoL-3hIm;
	Thu, 12 Jun 2025 08:09:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPcWd-0000000CTOv-1qAL
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 07:39:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPcWc-0004bb-AY; Thu, 12 Jun 2025 09:39:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPcWc-0035H1-0S;
	Thu, 12 Jun 2025 09:39:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPcWc-000EXL-0G;
	Thu, 12 Jun 2025 09:39:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
In-Reply-To: <20250611201941.3615487-1-l.stach@pengutronix.de>
References: <20250611201941.3615487-1-l.stach@pengutronix.de>
Message-Id: <174971394207.55755.860700975220256621.b4-ty@pengutronix.de>
Date: Thu, 12 Jun 2025 09:39:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_003903_478040_2D39A7B9 
X-CRM114-Status: UNSURE (   8.45  )
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
Subject: Re: [PATCH] ARM: Cortex-A9: document core versions used in various
 SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Jun 2025 22:19:41 +0200, Lucas Stach wrote:
> The core revision is very helpful to know when checking if a specific
> erratum is present in the core. Looking this up in the various SoC
> specific documents is cumbersome, so leave a comment for the next time
> anyone has to do this.
> 
> 

Applied, thanks!

[1/1] ARM: Cortex-A9: document core versions used in various SoCs
      https://git.pengutronix.de/cgit/barebox/commit/?id=608bb935e1ee (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



