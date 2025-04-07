Delivery-date: Mon, 07 Apr 2025 17:27:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1oOD-009bRD-0H
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 17:27:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1oOC-0004wd-GJ
	for lore@pengutronix.de; Mon, 07 Apr 2025 17:27:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EgnVD28zh8PmngLeQWfQ0zThKJmy7VwdorRVDaQLgBg=; b=AbVP4M1gg4j53rM9mkCuf1n1EY
	jcuM9ENyexfVxhEl5CXBydCxJ8D9XhMHuW3OrK93HSsVn7cz9BXDVFjuzYskwdnE8jImvR2SC0UyA
	Fqm9iIL+EIhiv3rq3HNprVN+3yGDJ3du9QEW28nz4sM+UReuTNIcrZGlXkkEne51n3pMKxnIoifdK
	A5dQH3rOKvQK54+qAT0/bMN3DYbQB1UANgJLQPPjtTAuW+lSo7XpAc8vBJMNkNnpV9dUGM+QC3HHL
	dA/dvKsGE5xtlFZ13SdYrpnu5QDrUkGLxAgJe4W08JGAGMsC5gid1y+3cXWSriSA/U/JgEN85fh70
	8xKmSm8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1oNr-00000000xUO-2Tg3;
	Mon, 07 Apr 2025 15:27:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1m6T-00000000OUj-03hM
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 13:01:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1m6R-0000WK-3q; Mon, 07 Apr 2025 15:01:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1m6Q-003lPY-2i;
	Mon, 07 Apr 2025 15:01:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1m6Q-00BdTA-2R;
	Mon, 07 Apr 2025 15:01:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
Message-Id: <174403088674.2773129.8135703397389569593.b4-ty@pengutronix.de>
Date: Mon, 07 Apr 2025 15:01:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_060129_055330_1C041E06 
X-CRM114-Status: UNSURE (   9.45  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/16] boot: implement generic bootsource target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Apr 2025 12:47:50 +0200, Ahmad Fatoum wrote:
> The default net boot target is suboptimal in that it usually fails for
> a new board. A better default would be to try booting from the same boot
> medium, barebox itself was booted from, which so far was only possible
> via scripts.
> 
> This series adds a new way to achieve this through a bootsource alias.
> 
> [...]

Applied, thanks!

[01/16] boot: change bootentry_register_provider to take struct argument
        (no commit info)
[02/16] boot: move nfs:// parsing out of bootloader spec code
        (no commit info)
[03/16] blspec: remove unused blspec_scan_devices
        (no commit info)
[04/16] blspec: don't export blspec functions
        (no commit info)
[05/16] blspec: factor out generic parts into bootscan helper
        (no commit info)
[06/16] common: bootscan: add scan_disk callback
        (no commit info)
[07/16] blspec: support boot /dev/virtioblkX
        (no commit info)
[08/16] bootm: associate bootm overrides with struct bootentry
        https://git.pengutronix.de/cgit/barebox/commit/?id=95b7413668a7 (link may not be stable)
[09/16] boot: split off bootarg API into new bootargs.h header
        (no commit info)
[10/16] block: add get_rootarg block op into block_device_ops
        (no commit info)
[11/16] block: fixup rootwait argument when needed by default
        (no commit info)
[12/16] of: implement stub for of_cdev_find
        (no commit info)
[13/16] bootsource: implement bootsource_of_cdev_find
        (no commit info)
[14/16] common: bootdef: add new boot entry provider
        (no commit info)
[15/16] kconfig: implement IF_ENABLED helper
        (no commit info)
[16/16] boot: make bootsource the default boot target if enabled
        (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



