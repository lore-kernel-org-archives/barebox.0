Delivery-date: Tue, 27 Sep 2022 19:24:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odEJp-00Gi6k-1J
	for lore@lore.pengutronix.de; Tue, 27 Sep 2022 19:24:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odEJo-0001d3-6I
	for lore@pengutronix.de; Tue, 27 Sep 2022 19:24:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=N4vfm18aJ2XoW/4NooA3XrZp7OA9aI/kz5Xk+lf3HPc=; b=kRRBHuOkbq8eRPTW8SF/z9dBWn
	RniLLoV+VvzXMovYtc5z8oSuBSJl0++Ml96KW/7xmwZeChGT2NXwjFgzwBTqgP+9rzNo1VToiEyPk
	bgz0XnNo7H6Kw8j6u9WLzpS+00dTgU/TMHCBe8DzxsKjeOrEyROdsSD7gWzJk5N76zs1hATNwI171
	WXdKuYpxPOkOtTHlMQfobn6vRTiNRl33tWPoC8m9WREOgJw5ynBJl53sGL/LW89XNV9X0hLS9zzzs
	c1kblt37xTIWvNYY8dnvyxoP8bET5epMJ4VC/SrifiWMBGax/+HRnZo/vf4b9suFiH0dVMNizArnR
	8cIw8T9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEI0-00BxAx-Ay; Tue, 27 Sep 2022 17:22:36 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEHv-00Bx9e-8K
	for barebox@lists.infradead.org; Tue, 27 Sep 2022 17:22:32 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28RHMTTZ1085032
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 27 Sep 2022 19:22:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1664299349;
	bh=N4vfm18aJ2XoW/4NooA3XrZp7OA9aI/kz5Xk+lf3HPc=; l=657;
	h=From:To:Cc:Subject:Date;
	b=r6JUTo1X6NJVzMz02LL8stvmTTvFKkDf04jABpK6ubm/fEc/hPpuWWP/hmyQatT/i
	 WvxDqdRiYPTG2rBEUAmNLesTh0wO0+nXw30a5alWs/2kCxn4FhMwJfjlcMggMivoZo
	 3rbeFb0ZSdBYrsybI53bdmRTdQMU7lifM4iyweU3l1CiDTxl5x+y4fG7yXRjawnqdG
	 pm2EloeY9QRPCKdDFn7PvEIavqQH+gXsSZnuz6ZEqkvo785+2l1GE0jAXLK4m4zfXI
	 GYf1FL7gy307Y6LUiz8QfwtvJM4ZusAUkFo63aofWRZeYdw81LE8bZny/beJ4GiSXi
	 AnsLVBIlFsP5A==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 28RHMQlI1345170
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 27 Sep 2022 19:22:26 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ([192.168.12.73])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id Z8PK0I0D30; Tue, 27 Sep 2022 19:22:25 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 28RHMPVK1215079
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 27 Sep 2022 19:22:25 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.96)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1odEHp-002mIp-1C;
	Tue, 27 Sep 2022 19:22:25 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 27 Sep 2022 19:22:17 +0200
Message-Id: <20220927172217.662321-1-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-REDDOXX-Id: 63333151934b9d3e053585dd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_102231_460355_1F883C5D 
X-CRM114-Status: UNSURE (   9.56  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] zstd: fix assert() logic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It should warn when condition does **not** hold

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 lib/zstd/common/zstd_deps.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/zstd/common/zstd_deps.h b/lib/zstd/common/zstd_deps.h
index 7a5bf44839c9..f06df065dec0 100644
--- a/lib/zstd/common/zstd_deps.h
+++ b/lib/zstd/common/zstd_deps.h
@@ -84,7 +84,7 @@ static uint64_t ZSTD_div64(uint64_t dividend, uint32_t divisor) {
 
 #include <linux/kernel.h>
 
-#define assert(x) WARN_ON((x))
+#define assert(x) WARN_ON(!(x))
 
 #endif /* ZSTD_DEPS_ASSERT */
 #endif /* ZSTD_DEPS_NEED_ASSERT */
-- 
2.37.3



