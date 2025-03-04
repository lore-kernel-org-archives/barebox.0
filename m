Delivery-date: Tue, 04 Mar 2025 10:16:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpOOO-009iUQ-28
	for lore@lore.pengutronix.de;
	Tue, 04 Mar 2025 10:16:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpOON-0005O3-Ex
	for lore@pengutronix.de; Tue, 04 Mar 2025 10:16:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E0EmZyZQicfi3qDglcJKkETY6Dbt14dioMD6Ypa0SWg=; b=kG8FDpskgaD/JqP1D+c1Yq71bs
	EGzDCpV7+YcfRokHyaGVxhiK3k0cr2g9mWIDWG90Rq/fAvsd6e2QwuS6fn8anPg1YSBs3de3LxOZB
	psLst5635usHTihiZV93sInzuVcEGI5AJrq+OLzxeAah1Xxc+QpA3pvu0bJmvC1s9SiEi+so4mLd+
	FiAkkBhf4mBpX+QFaAr4AZdvx5FcBU80Q+lrQcvQDOz8T4zbDUECUypCm9U7Gfc0BbxZUx8dW8KXi
	WjRGfbK9DJ+hMHieSD7InequPEUuWIfzntTO3elNygo7Pi8hO5qG8SHSTT5dsfOl8BQxqSnJMBe+/
	tlPwv3uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpONa-00000003q7z-0qD3;
	Tue, 04 Mar 2025 09:15:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpONZ-00000003q7V-0fGW
	for barebox@bombadil.infradead.org;
	Tue, 04 Mar 2025 09:15:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=E0EmZyZQicfi3qDglcJKkETY6Dbt14dioMD6Ypa0SWg=; b=WJdAxNAYV5xzgpEZ7+UhBgqL9R
	cYRGTfjlJiu6zoGj40Ls01D+TVhXdYFS5HSSPe5fPEloVBeae2eIsRuaX6ZMx+z6CbvqPEv6K4IpA
	p23K8YXX3PxZxz0d9SYe5HEahLlP5K0POi1+nw4fveNXjjPyyIS8Rc6E54WQhvuflP1Rv5j+dufOR
	S2oMBPQ58nJokqI9wb6izIlgxrQUtm2BUJU4qrXwj4VXO55S35iEbsXi+PIgDmlAlFB01GqVhlAEx
	9y8FlUDVQoCbuc7vZhgpSUDNgAlU0ELNJI5Tul0o3wnkM2FqqwFWzTY+qBeIihWCvev0tL/TaXlTU
	yzDoxxag==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpONW-00000000W6W-08wK
	for barebox@lists.infradead.org;
	Tue, 04 Mar 2025 09:15:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpONV-0005Fi-8B; Tue, 04 Mar 2025 10:15:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpONV-003wmh-0C;
	Tue, 04 Mar 2025 10:15:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpONU-003QEA-3D;
	Tue, 04 Mar 2025 10:15:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
In-Reply-To: <cover.1740846737.git.uwe@kleine-koenig.org>
References: <cover.1740846737.git.uwe@kleine-koenig.org>
Message-Id: <174107975299.815779.7341360670504446778.b4-ty@pengutronix.de>
Date: Tue, 04 Mar 2025 10:15:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_091554_186436_C93DA38B 
X-CRM114-Status: UNSURE (   8.00  )
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
Subject: Re: (subset) [PATCH 0/4] Add support for QNAP's ts-433 4bay NAS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 01 Mar 2025 17:36:17 +0100, Uwe Kleine-König wrote:
> this is the result of my quick effort to make barebox run on QNAP's
> ts-433 4bay NAS. The first 3 patches are IMHO fine to go in. The last
> one adds the new machine. As writting in the commit log the NAS boots
> with the resulting image, but neither network nor eMMC work.
> 
> I also tried adding
> 
> [...]

Applied, thanks!

[1/4] Documentation: rockchip: Update versions of DDR init blobs
      https://git.pengutronix.de/cgit/barebox/commit/?id=4c0953db0f2d (link may not be stable)
[2/4] arm64: rockchip: Refresh rockchip_v8_defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=7a94e43d0862 (link may not be stable)
[3/4] arm64: rockchip: Enable rk-usb-loader in rockchip_v8_defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=12ba84b2a475 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



