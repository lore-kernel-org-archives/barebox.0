Delivery-date: Mon, 16 Feb 2026 10:17:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujh-002Gw6-2V
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:17:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruja-0007XL-Ug
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:17:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1dU1J2OGMmZuqGxm5o9JPQuFawWCpV5Ub8yUrMrlwaE=; b=p7unRKsaeOKfPuf6oDNA2zZsKR
	8X/23qpWxhGKLh/eKdM7jF+BhBEQt9a3ly1Bmio/e2ICvVRr1VzwvB72/AR90ytLff8P1uLoMB91W
	95HWyM8YEABCY3zVMS7erYlhSAialk3Bd/+ISJC6bs7yH1lsK0fWPl+Q9hEpdYRwgUhwojbt0kafs
	QWjCLctxfyeTfIIMAsQvgDyrJ+WZqa8WXtq+ctUr3bUXUCfJXqaP++WG6Rkq7hnbOZFz2gUxw7bi2
	2nK8u2RtFVdYvbQ8M1nKxr1nuYqtO8XxEEubPME2tbUspaJpDyAR3oZg/R+x5gwZ4doXX0DbMqxgJ
	o9LwMmTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruis-00000006Ei9-3c6S;
	Mon, 16 Feb 2026 09:16:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruih-00000006ERy-1a8Z
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruif-0006WM-MT; Mon, 16 Feb 2026 10:16:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0012XP-0C;
	Mon, 16 Feb 2026 10:16:41 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-2M2q;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:18 +0100
Message-ID: <20260216084758.3548990-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_011643_462578_1B344D87 
X-CRM114-Status: GOOD (  10.19  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 18/39] efi: payload: fix EFI page leak in efi_read_file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When read_file_into_buf() fails, the function returns NULL without
freeing the EFI pages allocated by BS->allocate_pages(). Free them
before returning.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/image.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index 976327e08842..83094cda6d89 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -55,8 +55,10 @@ static void *efi_read_file(const char *file, size_t *size)
 	buf = efi_phys_to_virt(mem);
 
 	ret = read_file_into_buf(file, buf, s.st_size);
-	if (ret < 0)
+	if (ret < 0) {
+		BS->free_pages(mem, DIV_ROUND_UP(s.st_size, EFI_PAGE_SIZE));
 		return NULL;
+	}
 
 	*size = ret;
 	return buf;
-- 
2.47.3



