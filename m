Delivery-date: Tue, 25 Mar 2025 14:03:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx3wN-00416s-0h
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 14:03:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx3wL-0004l3-Va
	for lore@pengutronix.de; Tue, 25 Mar 2025 14:03:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SREmdScdHikMp2nFD8h2s5xihvzaneqzjSASUuCOdp0=; b=NzVa4GEd7ebMgO
	PQihFoLDqTb/dnT2Xh339xTNAC/UorlCkPCAltXmZdaoic1rhGjCL0A0U1DTGlgdTYfjFD2zOwkJN
	QVwsqHaqn4AmCvWo0WLo5DsIZk9c7LAqzr7qg2/dgu+KlAeZ3ih8VFrRY4D6AT70H5G/GbR1Y6jmf
	Wp294ZLCOYNTEJpTxiBltNOaaJ4OnJ6QJ1bfDl2flZ7cvIv3snxiJ7doIRg2NWI3e83YiUDND1TOr
	auK/5/EpEjHfxKk2/n3zEzoTLJzDxr65KExrCyM9ZPUM2u5uwbC/2DRZ6OekyIFxWL75hI2ZlVpNl
	WAklKpEFRvd0gVYCRArA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx3vz-00000005xZH-32C5;
	Tue, 25 Mar 2025 13:03:11 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx2q4-00000005hZo-3x9G
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 11:53:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1742903574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SREmdScdHikMp2nFD8h2s5xihvzaneqzjSASUuCOdp0=;
	b=Vl08vHDJQ4iASENYQLjGWRltYwXA5zxo5cwJA3T3ktKocqZvy55pAmTlMsS0kfsJadOymn
	G1QiVdAs7ySUScTJ999eQ16U/hrQrymEgZMrfa92R8uAElz1bNBai51K+JwjNsLj81pk4y
	DUGXci1+YeEHKNoHxFXlvXS++nU9upDAYfLMfO2Nf/wERzr4UjBf9wf/olPDbwHsAqWksM
	F2qM2Ky62S43Rv1sq/OR2aCyPe23niaZnCEAGHsOtPesEEusw6uigPRWVQ1ROI2kIhJjI6
	DBEcffHVETArljHxIaJie6e94pvIL7jvVUiKSJa+ImB9bhuYtU/zsGSQGUmnYQ==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cc87:df5e:1bf7:9f4c])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 8b615891 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 25 Mar 2025 12:52:54 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Date: Tue, 25 Mar 2025 12:52:26 +0100
Message-ID: <20250325115226.1692-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250314213344.12335-1-jmaselbas@zdiv.net>
References: <20250314213344.12335-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_045301_455694_7449E61D 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: Jules Maselbas <jmaselbas@zdiv.net>
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
Subject: [PATCH v2] commands: hwclock: rework argument handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rtc_name doesn't need to be an array, thus the argument doesn't
have to be copied, we can simply use a pointer on optarg.
Drop the array and the string copy.

Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
v2:
 - remove strcpy call and use a pointer instead (Sascha)

 commands/hwclock.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/hwclock.c b/commands/hwclock.c
index c594e070ac..b04b34cd7c 100644
--- a/commands/hwclock.c
+++ b/commands/hwclock.c
@@ -83,7 +83,7 @@ static int do_hwclock(int argc, char *argv[])
 	struct rtc_device *r;
 	struct rtc_time tm;
 	struct rtc_time stm;
-	char rtc_name[16] = "rtc0";
+	const char *rtc_name = "rtc0";
 	char *env_name = NULL;
 	int opt;
 	int set = 0;
@@ -95,7 +95,7 @@ static int do_hwclock(int argc, char *argv[])
 
 		switch (opt) {
 		case 'f':
-			strncpy(rtc_name, optarg, 16);
+			rtc_name = optarg;
 			break;
 		case 's':
 			memset(&stm, 0, sizeof(stm));
-- 
2.48.1



