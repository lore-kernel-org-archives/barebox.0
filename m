Delivery-date: Mon, 14 Apr 2025 11:10:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Fpj-000Zwp-3B
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 11:10:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Fpj-0000mT-F2
	for lore@pengutronix.de; Mon, 14 Apr 2025 11:10:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hFHgzbr5qMYoy8KitZxTqzZUaBtf4yaFsieitGJ5KHo=; b=IfgpKu7EV5YdOEKQx7ZZKKps4H
	zr7GMmGWH8K0ps/oA8hY1mh11EF7zx3oQ7VaPe5YKMI7IfnZ15YZeaQqysD9VPQ+W5L3s7elXBO6/
	CsQyT0cVbzaj2lexj6BJp335kMhXApcv+fNMUardQjpNI1+cZut9O8AH+w67TcFKRO7n+MYVBmgi2
	fOnQO4No0Lz7Ym0ZAS27pqzcthzX75dqyrMcFowcrd5pNmq49xOPshE6AZP/rkvymp0rO1cr5kM0e
	Gwta33SrlKNMkjopnJ+ENg7UHAUyjK3r1Fp0xORYiy18urJw6lDb+9yK/ov0jeOt1ZmdodBV0z1Zl
	7LlbeA/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Fob-00000001E8m-2d5D;
	Mon, 14 Apr 2025 09:09:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Fcs-00000001BnA-0knL
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 08:57:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Fcp-0004FK-FW; Mon, 14 Apr 2025 10:57:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Fcp-000Dmh-0v;
	Mon, 14 Apr 2025 10:57:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Fcp-00FbOZ-0h;
	Mon, 14 Apr 2025 10:57:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250414062252.2720968-1-a.fatoum@pengutronix.de>
References: <20250414062252.2720968-1-a.fatoum@pengutronix.de>
Message-Id: <174462102721.3718608.2554251052262591299.b4-ty@pengutronix.de>
Date: Mon, 14 Apr 2025 10:57:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_015710_230543_4B320073 
X-CRM114-Status: UNSURE (   7.18  )
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
Subject: Re: [PATCH] fixup! blspec: factor out generic parts into bootscan
 helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Apr 2025 08:22:52 +0200, Ahmad Fatoum wrote:
> blspec: fix detection of XBOOTLDR partitions
> 
> XBOOTLDR partitions are identified by a specific partition type or type
> UUID, but this got broken during the rework to use bootscan, because we
> are now iterating over partitions (partcdev) instead of all cdevs
> beneath a device (cdev).
> 
> [...]

Applied, thanks!

[1/1] fixup! blspec: factor out generic parts into bootscan helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=9cd79ac9bca7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



