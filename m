Delivery-date: Mon, 13 Apr 2026 10:01:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCEy-00Be4m-0N
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 10:01:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCEx-0001EE-IY
	for lore@pengutronix.de; Mon, 13 Apr 2026 10:01:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NU6RQmmzpBU4E84PrPYbjycEVAIMaQByANePq+w8FMM=; b=aWOmRCkqrGOWFn7DnQ2/nxxwWS
	zQ3rQ40YoTvRP4ShyvQk9mRs6jGS7ZSYgV8sxTAqyPLDaC1GYuSjRB1PzO/OV2YOgwcMge4SbVBVo
	7MyKA0XoKUrnp22sfaNyeSXoyTz1OPvOllf0Of5v+a+vbubUsNAiLD17qx9GJD7uzCZnGhdIDnMGd
	XfVFcIFc+jLsfPRJqmMBGdbsEtdEOD+9fcf50a7XnvsYsMjnWkjtcORl+8yzJFmKzginMo9t2r0Cz
	fxtQvP7DRYL1gihdCl7EYs8x55H0qhnP3hLKW6Zu+ThJgLl53lMNYGc2x471fM8Zguo6lMxtseeLr
	T2+h2ung==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCEe-0000000FCtq-1dsk;
	Mon, 13 Apr 2026 08:01:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCEb-0000000FCtV-3dhC
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 08:01:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCEa-00011F-8x; Mon, 13 Apr 2026 10:01:28 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCEZ-0058Mh-2o;
	Mon, 13 Apr 2026 10:01:27 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCEZ-0000000EhTH-3P41;
	Mon, 13 Apr 2026 10:01:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
In-Reply-To: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
References: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
Message-Id: <177606728780.3503674.3158873297209454083.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 10:01:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_010129_934224_C2F5577D 
X-CRM114-Status: UNSURE (   5.34  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] fs: ext4: protection against corrupted filesystems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 02 Apr 2026 12:12:28 +0200, Sascha Hauer wrote:
> This series contains fixes against corrupted filesystems leading to
> buffer overflows or division-by-zero. All patches have been tested to be
> effective with manipulated fs images.
> 
> 

Applied, thanks!

[1/5] fs: ext4: validate log2_block_size from superblock at mount
      https://git.pengutronix.de/cgit/barebox/commit/?id=51336e4bb94d (link may not be stable)
[2/5] fs: ext4: reject superblocks with zero inodesz, gdsize or inodes_per_group
      https://git.pengutronix.de/cgit/barebox/commit/?id=7e5e1a8beb10 (link may not be stable)
[3/5] fs: ext4: fix OOB read and infinite loop in ext_iterate()
      https://git.pengutronix.de/cgit/barebox/commit/?id=c8db92662d3f (link may not be stable)
[4/5] fs: ext4: reject dirents with too-small direntlen to prevent infinite loops
      https://git.pengutronix.de/cgit/barebox/commit/?id=fcc049a6dd97 (link may not be stable)
[5/5] fs: ext4: validate extent eh_entries against buffer capacity
      https://git.pengutronix.de/cgit/barebox/commit/?id=0e8658a76cff (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



