Delivery-date: Wed, 28 Feb 2024 18:52:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfO6A-00Dn94-1x
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 18:52:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfO6A-0003jM-1B
	for lore@pengutronix.de; Wed, 28 Feb 2024 18:52:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zgDwHrax6nI7c/QWBSPxJqVAjp/qWGUgQeZkHFpZWYg=; b=R9OAWGnO7Tk2/7VCPIojg03yY9
	LBvDVEBqtkD16d8hSNylrbRhM9Csqn5V0/grk+BspRIn38PDqKW5XymihTNyeITs+To34CYq/uN/i
	1MUYjojERVd7fnkI6YaniH/eDVcevWLAdBzSJCqlfDDZEcJNb2Ge+ivg3K2NkRAtTIM2deLCf04eo
	eWgE9DJ2atHhMAmbh3yfnL49J73+ejMHJSC4N6Lpdlcty+tFPsUh9a7LXR5fMHAQsmD1rzzF2RIP3
	lzBDnzSnTS8jqf02fm8JuzbIZZ7f6ij7bCxS7lnDKEsRmZONOOKzZp7VLDBY8VfvdtuPhaz4bn0+x
	x/B+aMpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfO5e-0000000AMJP-08gG;
	Wed, 28 Feb 2024 17:51:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfO5b-0000000AMIG-1P7r
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 17:51:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfO5a-0003Ua-0X; Wed, 28 Feb 2024 18:51:30 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfO5Z-003RFh-KH; Wed, 28 Feb 2024 18:51:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfO5Z-00BTJK-05;
	Wed, 28 Feb 2024 18:51:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 Feb 2024 18:51:27 +0100
Message-Id: <20240228175128.2734265-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_095131_399530_AE903C62 
X-CRM114-Status: UNSURE (   8.82  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX8M: drop function prototype for removed imx8m_uid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX8M UID and some other SoC-related info is now available over
soc0.soc_uid and imx8m_uid's function definition was removed.

Therefore remove the prototype as well.

Fixes: d392a0aea330 ("ARM: i.MX8M: convert the machine init to the soc driver")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mach/imx/imx8mq.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/mach/imx/imx8mq.h b/include/mach/imx/imx8mq.h
index df28b2a22caa..aafc4accd30e 100644
--- a/include/mach/imx/imx8mq.h
+++ b/include/mach/imx/imx8mq.h
@@ -87,6 +87,4 @@ static inline int imx8mq_cpu_revision(void)
 	return revision;
 }
 
-u64 imx8m_uid(void);
-
 #endif /* __MACH_IMX8_H */
-- 
2.39.2



