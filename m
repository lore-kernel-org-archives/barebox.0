Delivery-date: Mon, 15 Dec 2025 11:18:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV5fE-00Bhxy-0g
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 11:18:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV5fD-0005tc-LL
	for lore@pengutronix.de; Mon, 15 Dec 2025 11:18:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bqyE7hnP54IrJ19vaPfjTju4E+T+U2fceOM4kb59JeI=; b=mx4mdAhIoyNnD4Pou1hO/tPSn3
	DcaKHSYwTPlQqTFi4XLti/xas2APlZBuk1ONsgwWtpdYRjGLwciT7KnET21SHiKTSUsZ7rMGWfTsv
	XS3OD43YrJEjr/GICLaRSAACdXY+vNzYVOkfSNV/PDu6IHYe5eZSA7u88Qr6ehUOjHfHxqyx+OYgm
	/zl/XdtXvYQIOPYkcYmQ8j79jKdgr8bjofrdjHwiTlqthgrM6ESYmrqJcIlePf2ksBXjzIFGQGrng
	A59S9LD3/Q0BwmNHdSGAovqAVrmfAbVxDXacyctZejj8a0gZAXvNeZCDbT4g+Efzpl4KWCv6xG6P+
	bx1/+t6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV5eY-00000003REF-3ycy;
	Mon, 15 Dec 2025 10:18:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV5eV-00000003RDX-3fMw
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 10:18:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV5eT-0005mt-DL; Mon, 15 Dec 2025 11:18:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV5eT-005lQl-0j;
	Mon, 15 Dec 2025 11:18:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV5eT-00000001RZK-0gyD;
	Mon, 15 Dec 2025 11:18:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251211151820.3726093-1-a.fatoum@pengutronix.de>
References: <20251211151820.3726093-1-a.fatoum@pengutronix.de>
Message-Id: <176579388116.344278.15524411006300971008.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 11:18:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_021803_921307_3758E6C6 
X-CRM114-Status: UNSURE (   8.37  )
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
Subject: Re: [PATCH 1/3] bbu: detect devices when devicefile has no /dev/
 prefix as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 16:18:14 +0100, Ahmad Fatoum wrote:
> Functions like imx6_bbu_internal_mmcboot_register_handler() are called
> with devicefile either being the cdev name or with a full path.
> 
> There is no harm in trying to detect the devicefile in the former case
> as well, so do it unconditionally and simplify the function as a result.
> 
> 
> [...]

Applied, thanks!

[1/3] bbu: detect devices when devicefile has no /dev/ prefix as well
      https://git.pengutronix.de/cgit/barebox/commit/?id=56811a330c77 (link may not be stable)
[2/3] treewide: replace open-coded variants of devpath_to_name
      https://git.pengutronix.de/cgit/barebox/commit/?id=e9304ba3e0f1 (link may not be stable)
[3/3] fs: implement new resolve_fsdevice_path helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=feb5291006ec (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



