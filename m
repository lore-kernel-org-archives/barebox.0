Delivery-date: Mon, 15 Aug 2022 10:52:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVpT-006Efu-Cz
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:52:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVpS-00028L-Ir
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:52:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eEr6Fe5eMAyJy+EBr2VZk9gJtdDntjEFQrsqIfN0wIM=; b=Zw41ZuvRcVE8hpfyH6NusTP5DA
	RQWevhW9jdxOTUmSPaHlnn/PdMAs4sm+Z+uSEfXTXNauD4Af779zij0MwbIFwmSjR7wDel4/41uEs
	ctV43+dS75KbVSY3ljhi0CsY0JlqBsJ8K2F4TgNNiSz5ILg7ZvtmEcfzj6NYA9rYiZDcn5c/bxtf+
	t+c4521CQoDAjI9gIHJYJ4VKyaJef5lBtHFXTFsmyLiFdp4SIneUTvfM0x9Nk8rAPvI3TepKjb38U
	eBAMJCq1dEh7FakUgj8pY/OxWTQCoSfxEQtD3FpVuF3ouRAVVBF0hwFhCWf5LM+waluV3L6tQc/3+
	KgmGTriw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVnD-00DNsb-Mb; Mon, 15 Aug 2022 08:49:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVhF-00DKDw-G5
	for barebox@bombadil.infradead.org; Mon, 15 Aug 2022 08:43:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=eEr6Fe5eMAyJy+EBr2VZk9gJtdDntjEFQrsqIfN0wIM=; b=A5RJknonOxg3kBwRr6yr66MMxj
	EHMqdOpiS+gKZMFn04RrMHrW6ShGzr6XvRDpC7vCD4Hxs3zdqVcSSuiEYozE7Q3Cq+N90sMfnhBWb
	1iV2v8WkxsufmauKKL6YZJP0F7u7ynvMyuFSGse0YSxWBt4eiZ7gagCxW3sjACXcBLiDgLTF42Hax
	gAqRB+LnsQZ+zgRAf87oB9gPfrw9ubnyJxQg3bGuBrx7MDzqFHz633ycLizXsORzM9eb0fBjreCE0
	OnjZwg2D8pmVvP/38XIhKyq7oqWMSgqV1iaGXwMgM4Fi7OpY9vjJ8gO0yzsosDV+dzqf+B2AHLJu8
	wu+eWlUw==;
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVh3-002cwD-CQ
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:32 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8glU6662028
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552968;
	bh=eEr6Fe5eMAyJy+EBr2VZk9gJtdDntjEFQrsqIfN0wIM=; l=523;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=OMIErm6TtAe7hkTr6uCNIlFi/rwI9Gyp5l9BPIZZDrcsv56PsJvmEFdlIDRfyIxjh
	 wFamLrhlHHoynnzGJjaZuziFCwHJDJ/ifgewXi18gl8X9RSSjH060+qJGU02J/8BaX
	 /gvwFbOFtT+y+DCbnj7C5/oFUlUZF2ZEOZSgdP74HgSZB+2vJdF2KtIrAMDUAmCFJt
	 Dzx3sHcN0/pnpS9LwwlgbdPlJ/Y45fxDoOd+4B0W/3mDNSCR6B+UzwDtpvEN67bJxg
	 +nnmq3TnZ4BpzkMvBWiiCwf28oUt7h8iU/WCnWFkeSW3/fEJcUWipTZxiuNoDyNOUT
	 u2JQWczrrNxzA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gW8P822374
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:33 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 40062239D0E; Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gPJo634053
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg1-000EIk-Od;
	Mon, 15 Aug 2022 10:42:25 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:07 +0200
Message-Id: <ce65bddbe43cbf197f7bba682085ff9f46db6353.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_094330_350660_3FF0C987 
X-CRM114-Status: UNSURE (   8.81  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 03/18] tftp: add some 'const' annotations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index d186e7983a6d..c26204ae76e6 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -94,7 +94,7 @@ static int tftp_truncate(struct device_d *dev, FILE *f, loff_t size)
 	return 0;
 }
 
-static char *tftp_states[] = {
+static char const * const tftp_states[] = {
 	[STATE_INVALID] = "INVALID",
 	[STATE_RRQ] = "RRQ",
 	[STATE_WRQ] = "WRQ",
-- 
2.37.1



