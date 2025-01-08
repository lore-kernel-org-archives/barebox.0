Delivery-date: Wed, 08 Jan 2025 15:03:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWeX-000lNX-32
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 15:03:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWeX-0002DD-Sa
	for lore@pengutronix.de; Wed, 08 Jan 2025 15:03:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xAfOzCfL+U4ML1Eya3wOPCnrXTbzKgQjg3prDHTEW8s=; b=bapYXy181ExL5Sj6C8ynvqiPto
	tfeJCddMFNwhS4mrMV6op1ScgH9Uz/eHrEE7E13AnCCupB6pZMbLfnamTlzYgD2V/q9Hq6KzvT7CF
	RmCDcsuJVH2EiZ9yNxAoDt0GxlnuEl7TY35gG/n7mMoAuGqbyVaewuGnoUUBlkDQWa1CxfDqIn/pk
	6QInWwcD4OGQu+kBZzZK3+Ho5qyAdeQFBLNl9Iey0aTexSvkkQA/UJRqIEFOrKLuFqFfeNEK7qQS3
	BHa8/J3xGfcU7Ji6ocVQb927ZBXyEJvI1Z7VXOED0L52l5f9hIyPwWyVlH8EqjC6jwYXq8OTALo4h
	bOrJaksQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWe4-00000008jAt-27GN;
	Wed, 08 Jan 2025 14:02:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWe0-00000008jAY-3Lok
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 14:02:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWdz-000253-9T; Wed, 08 Jan 2025 15:02:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWdy-007X1b-14;
	Wed, 08 Jan 2025 15:02:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWdz-00HMVM-07;
	Wed, 08 Jan 2025 15:02:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
References: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
Message-Id: <173634496703.4137566.11660824469184410657.b4-ty@pengutronix.de>
Date: Wed, 08 Jan 2025 15:02:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_060248_841591_FE1A6447 
X-CRM114-Status: UNSURE (   8.39  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/8] fs: merge struct filep (FILE) and struct file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 07 Jan 2025 08:59:31 +0100, Ahmad Fatoum wrote:
> Since dcache support was added, we had two structs representing files:
> struct file and type struct filep FILE. The former was used only for
> listing files in ->iterate and the latter everywhere else for
> representing an open file (descriptor).
> 
> This series aligns the members of both struct sufficiently and then
> merges them to simplify porting kernel code.
> 
> [...]

Applied, thanks!

[1/8] fs: derive file descriptor number by pointer arithmetic
      https://git.pengutronix.de/cgit/barebox/commit/?id=6f8129f8667a (link may not be stable)
[2/8] fs: drop ifdefs in linux/fs.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=79bc7900d921 (link may not be stable)
[3/8] fs: retire FILE.in_use member
      https://git.pengutronix.de/cgit/barebox/commit/?id=6e6d6c9a7193 (link may not be stable)
[4/8] fs: align FILE struct member names with upstream struct file
      https://git.pengutronix.de/cgit/barebox/commit/?id=69de990ac09d (link may not be stable)
[5/8] fs: fat: rename f_size to f_len
      https://git.pengutronix.de/cgit/barebox/commit/?id=18a8c7fa6a93 (link may not be stable)
[6/8] fs: replace FILE.size by f_inode.i_size
      https://git.pengutronix.de/cgit/barebox/commit/?id=2497d528a133 (link may not be stable)
[7/8] fs: merge struct file and struct filep
      https://git.pengutronix.de/cgit/barebox/commit/?id=b3a39aed8208 (link may not be stable)
[8/8] fs: retire FILE typdef
      https://git.pengutronix.de/cgit/barebox/commit/?id=7a861f96a311 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



