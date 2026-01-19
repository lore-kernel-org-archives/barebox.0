Delivery-date: Mon, 19 Jan 2026 12:27:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnPf-0030qX-0N
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 12:27:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnPe-0002fd-4R
	for lore@pengutronix.de; Mon, 19 Jan 2026 12:27:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MHc+8dcAwc1xqrDGZeXQF62o7TmHuc7VYTt33S/lJYM=; b=3hrDNL1qAghHdW8Zr03DAl2yIS
	DpFGZ8159JbdPJCtqWGaRwcZhxPlA7x00STPGjBoRpybgKeo1VOT8PtEsWKDQxUp+QQ/vTRzBVe1m
	qgUKllvapQCsNJGeI9I+3r9iL53JvUN3g2eJ1Oc8vsWebILAQQxpiqJEDRjBodRTuryu1aln/GkuM
	Aez+MWEjSWEuan48M2hR8BgTGtdTl0qzcyALHrMYzSZcUuLVg0r7jcuabc9SGTd/rAP9dmKaU1+kh
	Os/XKIXDPpnQCqt0lFWaiMmfxjTrUYf/flTfiEdXnbBPA/2lEknEmlwAEqlQFebstqPvFaSLKYziI
	9tSM9TNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnP7-00000001tTK-45ZF;
	Mon, 19 Jan 2026 11:26:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnOw-00000001tR3-0mXp
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 11:26:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vhnOu-0002R6-5Q; Mon, 19 Jan 2026 12:26:28 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vhnOu-001P4n-22;
	Mon, 19 Jan 2026 12:26:27 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vhnOt-003NIf-2j;
	Mon, 19 Jan 2026 12:26:27 +0100
Date: Mon, 19 Jan 2026 12:26:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aW4U4_oW-TftHzGa@pengutronix.de>
References: <20260116101404.3954872-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116101404.3954872-1-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_032632_980128_29807BFC 
X-CRM114-Status: GOOD (  19.37  )
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
Subject: Re: [PATCH] test: py: add dry run check for FIT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jan 16, 2026 at 11:14:03AM +0100, Ahmad Fatoum wrote:
> A dry run should not alter system state in a way that would inhibit
> normal operation or repeated dry runs.
> 
> The FIT image boot in the test suite, however, reduces the VFS root's
> reference count beyond the initial value before the bootm.
> 
> This leads to a warning on boot that can be reproduced by repeating the
> dry run multiple times:
> 
>   FAILED test/py/test_fit.py::test_fit_dryrun -
> 	AssertionError: ['WARNING: at fs/fs.c:255/mntput()!',
> 			 'WARNING: refcount for mount "/" becomes negative']
> 
> Add a regression test for this issue.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
> @Sascha, given that you introduced the warning, maybe you are interested
> in looking into this? :-)
> I am not sure if it's 9PFS related. It's reproducible with:

No, it's not 9pfs related. It's the O_TMPFILE creation that bites us
here. I've sent a fix.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


