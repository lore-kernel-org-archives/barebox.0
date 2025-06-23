Delivery-date: Mon, 23 Jun 2025 10:57:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTczB-00AD4T-09
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 10:57:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTczA-0003IM-HA
	for lore@pengutronix.de; Mon, 23 Jun 2025 10:57:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nq1CKEfaC/F4xkMo8FHNpLDLrqoF76EnF+WJq63kOmM=; b=eCY4Ftq6cdw7OtKaeCMvteJpa4
	aXEpvWpSgyg2KfkHyjoVSC2V6KPWJNu29LCc6fz1XmYCBBLVYkZ5GKTd/yoJoMSayi/4hH3nrg0go
	VFgfirr5BYz+QbvMpXBhLclrT6Iv0rkcdqYGIS8DayH5EIx/iYOvgDosIq8uAqrsC2ShHwzaqvKYZ
	iu83+vv7Au0rWW8NO6PNQkWp4OmvfCmLfLIkMicx0enEHf5yL9soYyZf7i9sN8uDujOL8TaOKIWRN
	Ao4WYiAUKRwYgZrHMHRg/cIw4NmKUoyHLQJSSvfV7NPF8kOFvOGtW/CpgYeAu9hlrQZHTZyBN83L6
	TKbMg+yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTcym-00000002569-2CnI;
	Mon, 23 Jun 2025 08:56:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTcfj-000000021Mq-0nkj
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 08:37:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTcfh-0008GB-SX; Mon, 23 Jun 2025 10:36:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTcfh-004uvg-2D;
	Mon, 23 Jun 2025 10:36:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTcfh-00F7nz-1w;
	Mon, 23 Jun 2025 10:36:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250623062032.3527006-1-a.fatoum@barebox.org>
References: <20250623062032.3527006-1-a.fatoum@barebox.org>
Message-Id: <175066781759.3604753.627511809714129880.b4-ty@pengutronix.de>
Date: Mon, 23 Jun 2025 10:36:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_013659_233716_55B8D7D0 
X-CRM114-Status: UNSURE (   6.31  )
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
Subject: Re: [PATCH master 1/4] commands: stat: fix leaking file
 descriptors on early exit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 23 Jun 2025 08:20:29 +0200, Ahmad Fatoum wrote:
> We currently leak the dirfd if we encounter an error during option
> parsing. Fix this by only recording the path at first and opening the
> dirfd once all options have been parsed.
> 
> 

Applied, thanks!

[1/4] commands: stat: fix leaking file descriptors on early exit
      https://git.pengutronix.de/cgit/barebox/commit/?id=c7179f4d267a (link may not be stable)
[2/4] lib: idr: make idr_for_each_entry removal safe
      https://git.pengutronix.de/cgit/barebox/commit/?id=4cee126abc0d (link may not be stable)
[3/4] startup: track system state with regards to initcall/exitcalls
      https://git.pengutronix.de/cgit/barebox/commit/?id=18993a87a236 (link may not be stable)
[4/4] fs: do not skip fs_remove when calling umount ramfs
      https://git.pengutronix.de/cgit/barebox/commit/?id=8dbe672c662b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



