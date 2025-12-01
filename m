Delivery-date: Mon, 01 Dec 2025 10:57:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0ei-006mDW-29
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 10:57:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0ei-0002wB-4m
	for lore@pengutronix.de; Mon, 01 Dec 2025 10:57:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UjQOgDzT+DRY8ItG8pjvM0ehMAOc3KdIUyNHOvs+coo=; b=yIwC2NjzUHjcgPzGod+rnoD1pv
	M51bMYLO2mpfiNJofgqs0sfwsL9tOV48sLvyYbSK+vO6hEKj9YDjbOiTYVpHjLoXaR9gERe+DVBch
	YofjYB+JcT0U4fXxdcfLpI622sTR+SZ1FtySq2Bg3EUleSGiEVBtKM+vOLd6v2VRiK5ST+2gd6Gtg
	eKVbtkjvELf2k8/kdDD0vL/F+nqcMwX9+q6vKRiEpXw7gG1uNCbKHtGQ8GtCjwgPH1vj2u6VlXoyp
	sOtCrvEIsY5xUYAH7zWo6TjMW5ex8vI9juWGs1Rw7YzomJDlhjNm5TvT6LsrSwVbFj9Nss6yHmL65
	GaZHxEwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0eK-00000003FqM-45d0;
	Mon, 01 Dec 2025 09:56:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0eH-00000003Fp5-43m6
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 09:56:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0eG-0002kY-Bm; Mon, 01 Dec 2025 10:56:48 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0eG-003QDQ-0R;
	Mon, 01 Dec 2025 10:56:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0eG-00000000dBI-0L1q;
	Mon, 01 Dec 2025 10:56:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251128104143.1578832-1-a.fatoum@pengutronix.de>
References: <20251128104143.1578832-1-a.fatoum@pengutronix.de>
Message-Id: <176458300807.150585.5765352248312637695.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 10:56:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_015650_006488_22AF5679 
X-CRM114-Status: UNSURE (   8.53  )
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
Subject: Re: [PATCH 1/3] kbuild: drop non-existent targets from CLEAN_FILES
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 11:41:26 +0100, Ahmad Fatoum wrote:
> A number of these targets are a no longer generated and if support for
> them were to be added, it would be PBL-prefixed and handled in images/,
> so these left-overs can safely be dropped.
> 
> Nothing needs to be removed in .gitignore, as a /barebox* rule is
> matching all of the removed files and more.
> 
> [...]

Applied, thanks!

[1/3] kbuild: drop non-existent targets from CLEAN_FILES
      https://git.pengutronix.de/cgit/barebox/commit/?id=3209a7307e65 (link may not be stable)
[2/3] sandbox: fix race with .old_version removal
      https://git.pengutronix.de/cgit/barebox/commit/?id=d0c80df5b537 (link may not be stable)
[3/3] ARM: lib64: rename pbl.o to delay.o
      https://git.pengutronix.de/cgit/barebox/commit/?id=a60bfac3c670 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



