Delivery-date: Mon, 10 Oct 2022 08:15:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm50-0033mJ-6d
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:15:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm4y-00025t-7N
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:15:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nVcfdyrUgNucUwhO7T40+5U+zFYY4s/6He3Wx3eXDIA=; b=eWO9K7h9wUUe9HMGVo3ImABQMx
	eGPp2ivhne7tfbfBGyoEr5PzigQsCNgEAFUQU2lz1dH4q+UlNfnqLQ8kXeWjIcK0fMcvnolquwSV1
	dnAmIWD2TfnVJWVh/bBDD6sEpzRs0l1OJN0ZFLSL8mndkSIOxg7Y3BNlcd0HSflamX7+X24X2zS+H
	Q0SkaEg7ArDV/dq60qf5UdPqnFH68RawxK1rF7DkZL5D0oPlBNpwMPlDTX66sCf7K6ecM5ySLwM+x
	8SZVu7TgEO/5FjUWRlXh3LI7We/B3OGkLyOVO2Fv+FdeuRkepuIQ8IvOGWHKPlYoX9oUGfbA2nhUU
	WK45dvEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm3p-00HCYw-Gw; Mon, 10 Oct 2022 06:14:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm3l-00HCXG-4U
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:14:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm3j-0001hw-P9; Mon, 10 Oct 2022 08:14:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm3j-000dZP-3m; Mon, 10 Oct 2022 08:14:39 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm3i-008kWb-8D; Mon, 10 Oct 2022 08:14:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:14:34 +0200
Message-Id: <20221010061437.2085412-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231441_204960_BD3F0A11 
X-CRM114-Status: UNSURE (   8.33  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] test: self: change CONFIG_CMD_SELFTEST default to y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If a user enables CONFIG_SELFTEST, there's a fair chance, they don't
mind having a selftest command to exercise the enabled test.
Thus enable this by default.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 680196a4fe29..5d984e30b226 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -10,6 +10,7 @@ if SELFTEST
 config CMD_SELFTEST
 	bool "selftest command"
 	depends on COMMAND_SUPPORT
+	default y
 	help
 	  Command to run enabled barebox self-tests.
 	  If run without arguments, all tests are run
-- 
2.30.2



