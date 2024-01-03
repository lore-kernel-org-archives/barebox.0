Delivery-date: Wed, 03 Jan 2024 19:35:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65D-002Nz4-08
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:35:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL656-0006KB-9L
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:35:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fVu2rGHW+NhxwQkb/8KwdaoZLy4XH3qa8zYBoRAe8/U=; b=i8+pra6APujD5ZzXBrVucpYn6D
	M/74VuQvYf87JdW2YkABchYxNDYoF6JbdyzhlTo8ErkiSiUaV0qEwQqRBWZ8tZw3Q5VdzZlFSZf58
	REerO8LB8rp66MQoTZhaoD5iHr41bbzMr0wirOSUCRSExTefKklvZMRmVVe3Vz4UGvCFmDY81MLAW
	+SnkJUqgmTRaQLpu2XJGh+13NNphD89IjyyMweOTcyGkQY/yxnTxRMgWNh5lt+RlQ9wPG378TlalF
	nqJQNRdJZKh5f/GSeAJyRSjSoqju85n0HFzURQ3ol/LYFlD30Ew5Opuh/9hDNG0SK5WxVk8/x9ckl
	Tj2kv5fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL63O-00BjsM-2N;
	Wed, 03 Jan 2024 18:33:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61I-00BhM4-30
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fVu2rGHW+NhxwQkb/8KwdaoZLy4XH3qa8zYBoRAe8/U=; b=il52u9X5W1XUqO0k4N7k+aNi8s
	1RXXt3Ugsy0gWNnCFj8cQZCW+I63+4FkH9oUclksaO3f1YXN1XjmUJ7FrB9P21MYvTtXnk7aUpm9n
	wqlADh8UPSR4Bxz10Lpqd+Kule0Q0aPp3zAkg1H29AlpIjzO5c+VRE4EANcgcw4+65kI/sTWWJM7b
	5eDpYkRQkuFhA1fWgSNoFZMZsI5zEtJGR6VejcJaiBSAlACA7I2vefu068bY6k03lcIxgZoTzp64D
	5xiETf7ROgar3TThNnLjL0DwiHkdC2qN/Fzs+FYQvaTQ+CeELmEZT7OSlZ2aAij98z/YNtqs88Mt/
	aY14lZDw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61D-00DIlz-0s
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001VG-QQ; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000Aub-Ds; Wed, 03 Jan 2024 19:30:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-31;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:04 +0100
Message-Id: <20240103181312.409668-45-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183108_280221_60C7AD46 
X-CRM114-Status: UNSURE (   9.68  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 044/112] efi: payload: lower command line options print from error to info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

What command line arguments are passed is informational at best and
doesn't warrant an error log level.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/image.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index a8748da1df88..fb77ce4437fc 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -177,7 +177,7 @@ static int efi_execute_image(const char *file)
 	    image_header->header == 0x53726448) {
 		pr_debug("Linux kernel detected. Adding bootargs.");
 		options = linux_bootargs_get();
-		pr_err("add linux options '%s'\n", options);
+		pr_info("add linux options '%s'\n", options);
 		if (options) {
 			loaded_image->load_options = xstrdup_char_to_wchar(options);
 			loaded_image->load_options_size =
-- 
2.39.2



