Delivery-date: Mon, 26 Jan 2026 09:48:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkIGp-005U7A-0Q
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 09:48:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkIGo-0004ug-2E
	for lore@pengutronix.de; Mon, 26 Jan 2026 09:48:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wVGDPCYfaDccYA1tHGkphqVJxuEAqMB9lvZNf6mWru0=; b=Fh32LlWa6h/5/0PMLKsap3gV5Q
	cIw1QFpFWSpnK164wndn0QKFpdhNrOdfNz1BzLB8eSpjNGWbYfsXFKadzg1ePPnG7B3CuW7KkPKuE
	v+9+PZkQU2g4onjmAoCpulkDRjE7B+1YuJVyGGDMwP2lBIow7f/c3r9UwgBBtOQIcxZg2FAZjA2wL
	ZemFFpTIsZhAgZSHSg3sHoN9T0T1Qa7FdO07ezo84MP0lWBAX2ex0yPUHIJc8VFkpSWB86HJhv+Mo
	XUAy3RPU+SvAFiDEpuYqkyyzZEDi52jnVYB+rfuITxE27Ra1Hf89fJxYd+hViO1wmq7mOSk7aUDFg
	Hspxv9yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkIGE-0000000C7dw-0P4T;
	Mon, 26 Jan 2026 08:47:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkIGB-0000000C7dd-2cOg
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 08:47:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkIG9-0004qe-Rp; Mon, 26 Jan 2026 09:47:45 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkIGA-002YFX-17;
	Mon, 26 Jan 2026 09:47:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkIGA-000000065IF-0NPM;
	Mon, 26 Jan 2026 09:47:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260123215814.572040-1-a.fatoum@pengutronix.de>
References: <20260123215814.572040-1-a.fatoum@pengutronix.de>
Message-Id: <176941726562.1450114.7650734960151532666.b4-ty@pengutronix.de>
Date: Mon, 26 Jan 2026 09:47:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_004747_689779_B3F31BB0 
X-CRM114-Status: UNSURE (   8.19  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! libfile: copy_fd: add size argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 23 Jan 2026 22:58:13 +0100, Ahmad Fatoum wrote:
> libfile: copy_fd: fix use of zero to mean all content
> 
> The function documents that a size of zero means that all data is
> copied, but this is currently broken: On first iteration both size and
> copied will be zero, so now is set to zero leading to an early exit
> without any data copied at all.
> 
> [...]

Applied, thanks!

[1/1] fixup! libfile: copy_fd: add size argument
      https://git.pengutronix.de/cgit/barebox/commit/?id=8342363fe8e9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



