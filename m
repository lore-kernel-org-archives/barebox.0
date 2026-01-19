Delivery-date: Mon, 19 Jan 2026 12:21:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnJw-0030ky-0V
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 12:21:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnJv-0001Te-6W
	for lore@pengutronix.de; Mon, 19 Jan 2026 12:21:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PWNL4pVYyczgmjeWO3aFrS9H96tMJwD0Rfn9QG+upN4=; b=DUed0daBbxv0TPkWb1SrjoWd1p
	XB19ZZExrJ6fl+a60NGvweh3NyubZNGtvD654MHgKc/TOYYw4UMewLMY7ZqMbQSlzFeOxAUvMjTgM
	FzX54EV7hqDXBNwgCVXzn2LkJ+dC4k2nEAkrUCfloyR2nXqw1SL7oEt9UDfzLk2ePxcwtDERQbqhC
	+n9wI5IoBysL49PlpasOz8kzileVDyxE4366nNmEbquFhZkBr8PbgwrTN+9Pb0nXgupiQMH6ablup
	0ytqHmP5Ar3AAhtDXNvPaNuGdJTpXCKCqcVv3pUWNHSdcdvedTJViW5/s/BaBp+BY4v5Sqm9qxMXj
	h03FiYTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnJE-00000001sQg-43Ev;
	Mon, 19 Jan 2026 11:20:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnJ0-00000001sPh-37Jx
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 11:20:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhnIy-0001H6-PK; Mon, 19 Jan 2026 12:20:20 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhnIz-001P4I-0q;
	Mon, 19 Jan 2026 12:20:20 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhnIy-00000003oRA-2GN4;
	Mon, 19 Jan 2026 12:20:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260119111058.3120441-1-a.fatoum@barebox.org>
References: <20260119111058.3120441-1-a.fatoum@barebox.org>
Message-Id: <176882162053.908837.3446108345105174567.b4-ty@pengutronix.de>
Date: Mon, 19 Jan 2026 12:20:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_032025_735174_0A601D9B 
X-CRM114-Status: UNSURE (   7.77  )
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
Subject: Re: [PATCH] gitignore: ignore Labgrid --lg-log's console_main
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 19 Jan 2026 12:10:57 +0100, Ahmad Fatoum wrote:
> Calling pytest with --lg-log generates a console_main with the log
> output, which leads often to false positives for me when searching
> strings with ripgrep.
> 
> Add the file to .gitignore to fix this.
> 
> 
> [...]

Applied, thanks!

[1/1] gitignore: ignore Labgrid --lg-log's console_main
      https://git.pengutronix.de/cgit/barebox/commit/?id=3b5b05469175 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



