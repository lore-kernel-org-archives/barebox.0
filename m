Delivery-date: Mon, 26 May 2025 15:49:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYD4-000XMw-0M
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 15:49:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYD3-0007sA-HN
	for lore@pengutronix.de; Mon, 26 May 2025 15:49:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l9dLYIQgPhmXMFQnwoJ/9nnwaCb54qDmK9YNK0qa/b8=; b=sDr2uNbESzjff7IQNwo87Jidi5
	2kTwxp+bwFWHFJ4o98h9sl2xTlM2zF/xc7r6WYw/vHP8RweT+RSxfOovZhE7gqVl51v40Ate1QqZP
	zPb9JnZ35G7qimtWBcOyfuNp2LznKl/rFNdNqIwGpFc4n/K6kHTavNZOL8EXBNX/yABRKBh9vK6nB
	/AdqoswRi09K3rWkfjPLnBsci7q9cxsi6+dTXHnxzj1JW/qdb0Db2DZwdu/mIlNhZd0G9RL+ipW/d
	pI/gZ3E+rbZWLe3JqbSBXPeI0dxNmYnq1FoQD6QQp6q+WVp+CSJlIY23q/4AglATTAe4qObiTvAcC
	6QTubwFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYCf-00000008vkb-0csD;
	Mon, 26 May 2025 13:49:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYBn-00000008vho-2I5b
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 13:48:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYBm-0007ON-FF; Mon, 26 May 2025 15:48:26 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYBm-000G8i-0w;
	Mon, 26 May 2025 15:48:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYBm-0030PD-0j;
	Mon, 26 May 2025 15:48:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250522-uncompress-fixes-v1-0-18e796fa5e45@pengutronix.de>
References: <20250522-uncompress-fixes-v1-0-18e796fa5e45@pengutronix.de>
Message-Id: <174826730622.716498.3670201528037926206.b4-ty@pengutronix.de>
Date: Mon, 26 May 2025 15:48:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_064827_589097_A1F0072A 
X-CRM114-Status: UNSURE (   9.48  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] uncompress: lz4 fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 22 May 2025 20:59:03 +0200, Sascha Hauer wrote:
> This fixes two bugs in LZ4 decompression. The first is a bug we derived
> from Linux and was fixed there back in 2014. The second is a general bug
> in uncompress_fd_to_fd() but seems to hit only in the LZ4 case. Both
> bugs are relevant only for the uncompress command, but not when LZ4 is
> used for compiled in binaries.
> 
> 
> [...]

Applied, thanks!

[1/2] initrd: fix lz4 decompress with initrd
      https://git.pengutronix.de/cgit/barebox/commit/?id=29830209ee3e (link may not be stable)
[2/2] uncompress: fix prebuffering
      https://git.pengutronix.de/cgit/barebox/commit/?id=766be5ec3b0a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



