Delivery-date: Fri, 16 Jan 2026 08:12:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vge0u-001sTS-0v
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 08:12:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vge0t-0005zL-9w
	for lore@pengutronix.de; Fri, 16 Jan 2026 08:12:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yF31KlYWmj6DVoS4xkGOuyvUpG6lduITY6HlqWzA+rs=; b=f2W//lIKN+leC+LIOU2GbuNjEx
	y6u85C2GGcUDoNdyHo15r/1m/yIrGzteo2GqfD8gJRyJzmQHpBv1sdBF8mXH1Ak34XypmYoLtC42l
	yxDEGKn3P21iX00q4IR5JnvBS8dHlLXyKzpfIhDxNY0QjnxEzxWEPG7xWVDWZ5rv6ABxw5jVEb6Dv
	8CRK7vgEFKltDSIItPd4jqKaF8OjoYOSVZ/0ZXpphiKahQK8rHi0+W+8cWcboufbZaEK1buoEEmxn
	uUGfeJEhJesUbQq6BvS8FE6p0/G7JtL4AOqVi5/Llv32avCaOiB9jPAUe9/x9zCvJhQ2ER51FfT1C
	F8XwZDBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vge0F-0000000DgT9-2NTf;
	Fri, 16 Jan 2026 07:12:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vge0B-0000000DgSq-43xB
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 07:12:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vge08-0005tK-Hb; Fri, 16 Jan 2026 08:12:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vge09-000seP-04;
	Fri, 16 Jan 2026 08:12:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vge08-00000005OOR-1Fm7;
	Fri, 16 Jan 2026 08:12:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 =?utf-8?q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
In-Reply-To: <20260115142410.3422704-1-ejo@pengutronix.de>
References: <20260115142410.3422704-1-ejo@pengutronix.de>
Message-Id: <176854752829.1285388.16282232398181542926.b4-ty@pengutronix.de>
Date: Fri, 16 Jan 2026 08:12:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_231212_009708_02303BC0 
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] block: don't error while flushing when write support
 is disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 15 Jan 2026 15:24:01 +0100, Enrico Jörns wrote:
> If write support for the underlying device is disabled (e.g. by
> disabling CONFIG_MCI_WRITE), blk->ops->write will be NULL.
> Unconditionally dereferencing/calling blk->ops->write() results in a
> NULL pointer dereference.
> 
> Fix this by making chunk_flush() a noop for missing write support.
> Don't return an error since there should be nothing to flush if write
> support is disabled, anyway.
> 
> [...]

Applied, thanks!

[1/1] block: don't error while flushing when write support is disabled
      https://git.pengutronix.de/cgit/barebox/commit/?id=ddeff3d01e3d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



