Delivery-date: Mon, 17 May 2021 20:56:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPX-0005US-33
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:56:15 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPW-000499-0Z
	for lore@pengutronix.de; Mon, 17 May 2021 20:56:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7x7v3a+ZkZRmrMk/9HBFN6uAKMKhzdf/Dk3op5bJB1I=; b=cbMfyoR5bOH3lJXmfWb4rY0tV
	9t87TWwMiETtkcudlvA2aTG/xgEkM6G/i1gxWxKdGJ7BMczbZsgpwhE3yO146mjfvcyKN4MOl3No3
	hvodUVGQ54Pr1Ivk4c6CNAsdwLhzUEr7cOqpLCvpjzzHXNMRMwp0oxl+pz+MkyehcOpLU2dfE58jI
	P1Aave4Vki8f/YrlIp/LP1FuesmK/FZRpcQnALe64n1q/h4hM60fRJQBomH/63yrtvriIoGCIkRqw
	sD2j7Dlgq6XtK36tCbLKNT1slOTjdE2lu1Se5sfaEdYidHWl4DnmmE8jKBykOFemVLCthXs+ntgyt
	CBGBq85Rg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiOi-00Ftis-CI; Mon, 17 May 2021 18:55:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNz-00FtVT-5v
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=cVNfkBQ1yBH/BwdLh+sjobgzb2kCdRHsL4cmXK8jV44=; b=laPGFfSBqA5t7fn0t1Ri6UfA0V
 BiXXEBwtu5z1Hsk1HOLVrNe/bh681iYCW3n2ZMMy9oWEMt6TGQhL887WVGME4iE2CT1U7nOn0g0Kr
 YWfChs74A1NLmkyFz9gP+qRer2uXHccjakNqgtD+YuDRjEhAI7NtRkNgGM0EqFaI4JIBCGEvozNRh
 yZ9p9Qy349qH8OFEngigMDBrqv2IMqbc7JLY17LEKsE+ZNFDN7hlTXwu/EG6ptWAEV5Zc4CV5iwXx
 a+2um9HaX7fSM39XMat671wD1oD16JifO2lj9xLCpi0pHe3CVBM+HTphRrervncz599EWWWqw/vPi
 ep2mw26A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNw-00E4Va-OO
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:37 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003PA-CQ; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002xS-BR; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:13 +0200
Message-Id: <20210517185424.32145-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115436_814079_E7E1AB6C 
X-CRM114-Status: GOOD (  12.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 04/15] clk: tegra: Fix -Wtype-limits compiler warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

divider_ux1 is checked for being smaller than 0 which can never happen
for an unsigned variable. Fix the check in a way it's currently done in
Linux

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/tegra/clk-divider.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/tegra/clk-divider.c b/drivers/clk/tegra/clk-divider.c
index cc8b85520c..8ac8c98e9f 100644
--- a/drivers/clk/tegra/clk-divider.c
+++ b/drivers/clk/tegra/clk-divider.c
@@ -46,11 +46,11 @@ static int get_div(struct tegra_clk_frac_div *divider, unsigned long rate,
 	if (flags & TEGRA_DIVIDER_INT)
 		divider_ux1 *= mul;
 
-	divider_ux1 -= mul;
-
-	if (divider_ux1 < 0)
+	if (divider_ux1 < mul)
 		return 0;
 
+	divider_ux1 -= mul;
+
 	if (divider_ux1 > get_max_div(divider))
 		return -EINVAL;
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

