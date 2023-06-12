Delivery-date: Mon, 12 Jun 2023 14:54:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h4D-003qAb-LO
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:54:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h4B-0006UZ-8U
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:54:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wykdAMllxoSG++MQAfKPY3N7n5mPwXZwKG3xvmCinjc=; b=Dmdm33b5y4S0YSqqv20D9mpRpx
	m2swX9kP6CLLZHRZDCXoej8gwIB54s8gmq7GSCLQoxOXivzwT8heWnP58+5BdmeOw2MPt+IOSo4ew
	bNYyqYPcoJXch96jIxRExrPBIu5ROIlPqz/f2jUp7S9KwQmHkNBdmiyuqG2s8lvENP6W/hW6grLW2
	nEajYrAuL7MjnklOFWwGK+EKfbCwe2yw9uiHWiYhoAw4Jg974Dc0SM3hPWztGTb9I50RGV+Pi1F8W
	/tD+wYh5j9xy2g2dcw0qq6Izi1dZZvhKDvAjNenBCquWsica3hToPEGQiSkoDrQTPj9qnWnhIxJvP
	ZefbCJgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h3D-0045Kq-1H;
	Mon, 12 Jun 2023 12:53:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h39-0045HA-0f
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:53:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h37-0006BA-Hy; Mon, 12 Jun 2023 14:53:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h36-006tTV-Rl; Mon, 12 Jun 2023 14:53:32 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h36-004YHi-7Q; Mon, 12 Jun 2023 14:53:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:53:30 +0200
Message-Id: <20230612125331.1085059-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612125331.1085059-1-a.fatoum@pengutronix.de>
References: <20230612125331.1085059-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055335_263884_170E309A 
X-CRM114-Status: GOOD (  10.82  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 5/6] memory_display: don't skip va_end in error case
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's a va_start at the start of __pr_memory_display, but va_end was
only called in the successful case. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/memory_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/memory_display.c b/common/memory_display.c
index 77868be26ace..c0ca469703d3 100644
--- a/common/memory_display.c
+++ b/common/memory_display.c
@@ -123,9 +123,9 @@ int __pr_memory_display(int level, const void *addr, loff_t offs, unsigned nbyte
 
 	} while (nbytes > 0);
 
-	va_end(args);
 	ret = 0;
 out:
+	va_end(args);
 
 	return ret;
 }
-- 
2.39.2



