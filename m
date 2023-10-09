Delivery-date: Mon, 09 Oct 2023 13:54:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoqG-001qcW-09
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:54:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoqC-0002WF-Kx
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:54:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=i7YAjsulRFcfcRoQgVbc3bMCtgKkHcZujriYrjHE+Zg=; b=BGUEi0HJ861FWeq9vQW9SRn237
	pzzHyGgwM192RHrPmyyHGVvLYC22YwNEG3CMG92+iScBMsQWWHc0OdBOFteoUVwQ0AG2317oo20uZ
	REj/24yJCQ/KJAthC1F4uV1Qm7QKVKH44YZy5BlDBxeq+pi+3y9tE4tqB22yLaRpS7kNrBCaLyZSr
	0VQiyUDL3q8J6ZE+vpt4feaUFzHWRIjvzSeiGk5e/H71zcn0/Q2iXxlSNJ0FiLWkRCXkqZ7QVVwF+
	Y0/BD7KZaVTurSydehSYj2nXiP8Jn8he0pNiH/W73PL1u05TYmNtE3s+PQxDmqr+Btqwm1LTJAKKh
	q32h09zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpop3-00AWT9-1G;
	Mon, 09 Oct 2023 11:53:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpop0-00AWQh-29
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:53:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qpooy-0001tB-A7; Mon, 09 Oct 2023 13:53:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qpoox-000P46-Tx; Mon, 09 Oct 2023 13:53:11 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qpoox-00A64x-2r;
	Mon, 09 Oct 2023 13:53:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:53:10 +0200
Message-Id: <20231009115310.2398292-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045314_699856_ED8AA2D6 
X-CRM114-Status: UNSURE (   9.94  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] uncompress: make use of error_fn in uncompress_buf_to_buf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

uncompress_buf_to_buf already accepts an error_fn, but didn't make use
of it and instead relied on the default uncompress_err_stdout.

Fix this. The user-visible effect of this is that failure to decompress
FIT image contents is now printed with pr_err instead of the default
printf. No other upstream users of uncompress_buf_to_buf currently exist.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/uncompress.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/uncompress.c b/lib/uncompress.c
index 0608e9f9d30f..71ac882b87fe 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -199,7 +199,7 @@ ssize_t uncompress_buf_to_buf(const void *input, size_t input_len,
 		goto free_temp;
 	}
 
-	ret = uncompress_buf_to_fd(input, input_len, outfd, uncompress_err_stdout);
+	ret = uncompress_buf_to_fd(input, input_len, outfd, error_fn);
 	if (ret)
 		goto close_outfd;
 
-- 
2.39.2



