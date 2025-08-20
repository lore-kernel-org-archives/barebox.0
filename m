Delivery-date: Wed, 20 Aug 2025 12:30:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5G-002aPU-03
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 12:30:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5C-0007Tx-Ux
	for lore@pengutronix.de; Wed, 20 Aug 2025 12:30:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p6vKrKvw3sGHeZfxwj7Ao/9zl6qzv4T3iVqLTY2IEmI=; b=K9yLC7p9oeOpUN0kMHMYCppnUf
	IbE+IKOFDO+kyIkzYKvvMAKCHUGJJWPvbcWbeSqC3L36l4+8gLZF023VN9WTRP5YBeznoc542OnKP
	QwVS55hEffp4WiIy7nnB7EVt1z/eI0JwvwHUUYWimo4+jBrbxtmCLcuo3UHU0ZTr/EZisoBDkEdM8
	lSplgBa0OyQ8QjMldrM3+H0hlzAODkbU9Y276+tdkd6eHRv2NnGIv79TYe2Vo19lpcExSFyv5STqk
	QjaLb5SEoaIb5RTPiWzyOfNoW/YKZCRITpoRnmd7tuScjp/S8F43fDDoz9rk+i++a+juSOAasS7IK
	8VHRZOZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uog4h-0000000D9G8-1XDO;
	Wed, 20 Aug 2025 10:29:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQw-0000000D0po-39Oc
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 09:48:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=p6vKrKvw3sGHeZfxwj7Ao/9zl6qzv4T3iVqLTY2IEmI=; b=eW0rANuWARBld4J+wsnOXd3O1l
	DL0XQYEOo1IpA1aw34w6iAkx0nd4OlN9M1OKbqCFI94j9eSQDedbG8rv0TdXcyTQ34wV/GGbryRc7
	D5fg+34CBjiEQQx6BAQ0g3hAEZCWQXr7/a0YkWbgnETE2NymAjouxoHlD08FyyuQh1NR2rjMnYOJa
	r+i2UpvbpdRP8hRpjfsFPCU60CkoW5vO1LQl5Wdg1YU2Pa2zgiodTxpx/r6nR5MzA052B1bC47iDt
	RdqYtv2VBg5JBss484FVMal/FRpSt6X4V95Otr41H7jkIscWnHeFhlKlWJJ0uxz+0TjYGEEUaquBc
	kkd9yqDg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQs-00000000HWZ-48o1
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:48:41 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uofQq-0000DY-BH; Wed, 20 Aug 2025 11:48:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 20 Aug 2025 11:48:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-v2024-05-0-topic-fit-overlay-v6-1-9d1b3bab2ee2@pengutronix.de>
References: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
In-Reply-To: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_104839_214052_9D833AF4 
X-CRM114-Status: UNSURE (   7.04  )
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
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v6 01/12] FIT: fix missing free in fit_open error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Free the handle if read_file_2() fails.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index 5006394eb7bbd0873a37a0102d5a0d89ea7c6b9f..4d5c5bfe12472af85b26cd1ee93e7c99316b283c 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -977,6 +977,7 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 			  max_size);
 	if (ret && ret != -EFBIG) {
 		pr_err("unable to read %s: %pe\n", filename, ERR_PTR(ret));
+		free(handle);
 		return ERR_PTR(ret);
 	}
 

-- 
2.39.5



