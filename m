Delivery-date: Wed, 03 Jan 2024 19:14:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL5lP-002Lvg-0O
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:14:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL5lN-0005IW-3r
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:14:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8LY77QQXhvcSnJYn/D8dHpQD3StVnvkIVc65U+UGx1s=; b=EstGsV3vLeQfhT7UAyncUUNwNl
	fkFkIH8VQL4R3W3X2fw+IjhFsfi+BO1U1fXljUXuvHSCPNf4+KydH5XN9bQyn1rWRrrM1Pr22Hh4s
	ygqGW8c8uSD54k5GZQEq0mJPcrk/z1j0+xzGm2BDhYamXrxT8eNS3+nCjot5mkwDqW7Y7/zfV6JcX
	iHmvmz3eV+XoYNRlx45Y0arog+25J6bZLc3TZzFVlUmvmtNLN14TsOWfo+zlhAJgpORY/WdZVmO6i
	0M4pSTTJ0Duz3Y2+wp0vhxwyzDPeQRdogWceMUn4A/uI29qm7MPgh3tL+Y+MFvZ94W92gzfSJQxnV
	Hb6qJNxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5kB-00Bdvt-1t;
	Wed, 03 Jan 2024 18:13:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5k8-00BdvA-32
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:13:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8LY77QQXhvcSnJYn/D8dHpQD3StVnvkIVc65U+UGx1s=; b=n2yOalt5dkuldzFdCCuMzeG3wA
	fofKpKFGKimaowo3rk9tGLJg0ZLsnk38AbBU2qFx2BQ2r4hlbs1ZYC5drfV2CsKhisr0AkkD2wWzU
	ugoh9HDQ1rMg2vlLes6bTBBg+cyQfSyD86tbaRLtyycFb6O2AImU8LUpLzILHhgwLIZqxX5m/0wIk
	+p+xI1JnmCBkw3RNWQApmOee4P8SPyCUEmjuGNBFbMq65qlw1avhLTFjm1Iqn/jNKoMCpnoJ8l9Wg
	F5FXYe2XUe17Lg1hLtgyDZG/2J2loMWbDycFnP7s9i2n/xydptJeGs33z+jCWgMUyys/uhNdpdDNk
	JHhtbzIw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5k3-005dTD-14
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:13:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-0004fO-N6; Wed, 03 Jan 2024 19:13:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-000Apv-AF; Wed, 03 Jan 2024 19:13:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-0k;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:26 +0100
Message-Id: <20240103181312.409668-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_181325_194173_5BE5BC2E 
X-CRM114-Status: GOOD (  10.20  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 006/112] boot: print error code when booting fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Depending on how boot_entry() is called, the actual error code may be
never printed anywhere for user inspection. Improve user experience by
always printing it along with the failure message.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/boot.c b/common/boot.c
index dd9e26afc769..28bb459883cf 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -152,7 +152,7 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 
 	ret = be->boot(be, verbose, dryrun);
 	if (ret && ret != -ENOMEDIUM)
-		pr_err("Booting entry '%s' failed\n", be->title);
+		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret));
 
 	return ret;
 }
-- 
2.39.2



