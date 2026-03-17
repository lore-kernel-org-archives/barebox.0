Delivery-date: Tue, 17 Mar 2026 09:33:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2PrN-001k76-17
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 09:33:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2PrM-0007VQ-Qr
	for lore@pengutronix.de; Tue, 17 Mar 2026 09:33:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C+GdPNFwnbfkWmAvR72vtm522auGn6YvHoVu2gc7v3Y=; b=vkw6i7932PNRMHQgiBefIt6UxB
	tjQiUnD3BIcb0dbc5o32bLB4dNIp9dUIDiC++onL5VVNOytAj3WK+qRmyghTyX5O3y0ozdLjMvYVj
	mqCo40PCvcv9FZQq0lJk1AsvG+ni5C5Q4oxP07CCw0YouncNQRfyV9FBif9NPWAMrUVweLxlRn7sa
	wbh8b+wOPP12cYPRING0f/tzkse4VNQgAKj0MhkutD24YRKY5zNBasWgsITiSETp5CWqLn78dF3Bk
	q3Y6OgvBDsexOpwB3OcIIM1J4oLCpsxFliwmmFxucdi5sRctxFkMn3ihuLyLfRzllGdSeZiUv/3gH
	hO33jr8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Pqi-00000005jbp-0vpG;
	Tue, 17 Mar 2026 08:32:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Pqe-00000005jb8-2tHA
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 08:32:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Pqc-0007LS-3x; Tue, 17 Mar 2026 09:32:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Pqb-000hxB-31;
	Tue, 17 Mar 2026 09:32:17 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Pqb-0000000Cqs7-3gVD;
	Tue, 17 Mar 2026 09:32:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260316194604.944486-1-a.fatoum@pengutronix.de>
References: <20260316194604.944486-1-a.fatoum@pengutronix.de>
Message-Id: <177373633787.3063078.11971740637515148973.b4-ty@pengutronix.de>
Date: Tue, 17 Mar 2026 09:32:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_013220_730526_8B283140 
X-CRM114-Status: UNSURE (   8.69  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] FIT: handle hashed-nodes property not being in
 hashed nodes order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Mar 2026 20:29:42 +0100, Ahmad Fatoum wrote:
> Despite hashed-nodes no longer being used to determine which nodes to
> hash, we still refer to it to improve the error message on hashed-nodes
> mismatch.
> 
> mkimage(1) hashes properties in the order they appear in the node, which
> is the order of the properties in the ITS device tree source.
> 
> [...]

Applied, thanks!

[1/1] FIT: handle hashed-nodes property not being in hashed nodes order
      https://git.pengutronix.de/cgit/barebox/commit/?id=2370a81beaf1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



