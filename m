Delivery-date: Tue, 17 Mar 2026 11:21:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2RYO-001ltX-1n
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 11:21:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2RYO-00011d-0N
	for lore@pengutronix.de; Tue, 17 Mar 2026 11:21:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7KqUDgNEu5HU50GexGo6k6qlHvDPIah+RWAwti/8qEA=; b=NZTIj0crrpnmHrEyO+RfcwRlRU
	/4M6We0VztUi1IOl7u7TAXaISSTHzZfcBCUJ0jlq06Ap8xjnnMwsopPoc4x9GHksj5Sh26hyTF3hk
	YNOEmGkz1dgKl8xlFLwD/n6EhSbw7YQIsA7y+9XGt5mcOZCbP+D5urcO49FXrB/0R3o1h6Z8/IG2U
	DfdHi260921bxuPl7PnxAeXLNhIFg7qYiRtz9uHG4kKDkcL+bEd0N2PDtbVISI71tmaL5BvlJIHpF
	iT/nZAbymatwkpss7UecMII3VSphYzi/IfTMdV6/PFFRX76gijDtiW7xGF9vnFslP6hvtuF1UuWOw
	DRpp+1ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2RXx-00000005ydy-1IEu;
	Tue, 17 Mar 2026 10:21:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2RXu-00000005yct-20RM
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 10:21:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2RXs-0000s6-P6; Tue, 17 Mar 2026 11:21:04 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2RXs-000iun-1q;
	Tue, 17 Mar 2026 11:21:04 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2RXs-0000000DClm-28NC;
	Tue, 17 Mar 2026 11:21:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260312144428.2158727-1-a.fatoum@pengutronix.de>
References: <20260312144428.2158727-1-a.fatoum@pengutronix.de>
Message-Id: <177374286450.3147253.14033423693792541848.b4-ty@pengutronix.de>
Date: Tue, 17 Mar 2026 11:21:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_032106_520973_685935CF 
X-CRM114-Status: UNSURE (   8.31  )
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
Subject: Re: [PATCH 1/5] tftp: skip memory allocation when seeking to
 current position
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Mar 2026 15:44:21 +0100, Ahmad Fatoum wrote:
> We currently allocate 1K of memory, only to discard it when seeking to
> the same offset, we are currently at.
> 
> Restructure tftp_lseek() to use early returns for the unsupported
> backward-seek and early-exit also for the no-op case of new pos being
> the same as the old pos.
> 
> [...]

Applied, thanks!

[1/5] tftp: skip memory allocation when seeking to current position
      https://git.pengutronix.de/cgit/barebox/commit/?id=4eb2b9845bd4 (link may not be stable)
[2/5] tftp: warn when seek-heavy access wastes network bandwidth
      https://git.pengutronix.de/cgit/barebox/commit/?id=076a94b6e083 (link may not be stable)
[3/5] tftp: emulate backwards seek by reopening the file
      https://git.pengutronix.de/cgit/barebox/commit/?id=ac2ff2fe4306 (link may not be stable)
[4/5] libfile: drop TFTP-specific hack in open_fdt()
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea481907e334 (link may not be stable)
[5/5] fs: fix relative path resolution when CWD is on a TFTP mount
      https://git.pengutronix.de/cgit/barebox/commit/?id=0528a6a5585a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



