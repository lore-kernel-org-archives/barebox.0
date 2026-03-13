Delivery-date: Fri, 13 Mar 2026 14:35:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fT-000DWm-2F
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:07 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12f9-00013j-NJ
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7+mip8Z5seQlOhINfdq6d6Kiaveap55A/Ob2G/TD8Nw=; b=Vqbe3xcQh9g1NTFr+EsIYQXskT
	RAABtg8LWTxhVVvFZCovQVdQXgj0EJPByI9hYN15kfYjIDEfzoLb75zOsj1uZQHjcVwWK4A0stkiv
	UFnKO/xTqw5qnika4NIH91ydWslZ0U7guoRzQH0/JcagA84WGJMxyBRw3qSVNIFm5nju/dk294LrL
	oEAJA3Co/LzsurdODDg8x6zShheEwNFFbfAXloa++nQzblo+P628WtPtJHYd60X9yU4w2Xl4xKa5L
	xk4KzTPUM+Zk42cNbfdDGwBJEumcR68ZwY83G8MySRIKMdttWCs5o8y1YWyjXKZo5yket7Bt9KOpG
	PBzdTfyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dc-00000000GMw-22C2;
	Fri, 13 Mar 2026 13:33:12 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dF-00000000FhV-03hf
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=7+mip8Z5seQlOhINfdq6d6Kiaveap55A/Ob2G/TD8Nw=; b=MvlJwi1zDmdBEwmuhlC+MUPbyo
	+xjAzlnO3+dlyAAeXp27x+5O2jUVm+JtsSBHrc6kGij+ObyhakAaWskHCnelWSVpov8PBsB7QvLd7
	G7lnwqJI40XSjZf2IDumWt4/fzUjJHmKbQO5alrHZdNzd4CpcXji4+A7JHgXN/L99f4l/x1RZQYzI
	feGK85nt4luxa9WIVXRY9w6+FddrYqaseRZXAi8qaJkMbEZ9aDuAx8N1XTpEULCyM+OhW+V98o7ck
	NhexgxsdhgUrBXQUYIYdDkFNTSW4zHmJt6N9uPr6TLOz7mHxQFSnqbNZ+UzdJd6mepml8yDGwv2TF
	lqZWvGng==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d6-0000000D9wN-3FFf
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0006u0-Cu; Fri, 13 Mar 2026 14:32:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0005UT-0a;
	Fri, 13 Mar 2026 14:32:34 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-2TUc;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:36 +0100
Message-ID: <20260313132631.2257573-53-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133240_879418_572AC04E 
X-CRM114-Status: UNSURE (   9.75  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 52/58] jwt: fix buffer overflow and double-free in jwt_part_parse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

jwt_part_parse() allocates a buffer with xmalloc(len) and then writes
a NUL terminator at decoded_len, but when len is 0 (empty JWT parts
like "..sig"), this writes past the allocation.

Additionally, when jsmn_parse_alloc() fails, the function frees
part->content but doesn't NULL the pointer. The caller then calls
jwt_free() → jwt_part_free() which frees part->content again.

Fix both: allocate len + 1 to accommodate the NUL terminator, and
NULL out part->content after freeing it on the error path.

(cherry picked from commit ca92053262374b3dbd741c1435dd90bbed4ec1e9)

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20260302135258.197132-2-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 security/jwt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/security/jwt.c b/security/jwt.c
index e4be17dcfac0..e828ccfd8cfe 100644
--- a/security/jwt.c
+++ b/security/jwt.c
@@ -55,12 +55,13 @@ static int jwt_part_parse(struct jwt_part *part, const char *content, size_t len
 {
 	size_t decoded_len;
 
-	part->content = xmalloc(len);
+	part->content = xmalloc(len + 1);
 	decoded_len = decode_base64url(part->content, len, content);
 	part->content[decoded_len] = '\0';
 	part->tokens = jsmn_parse_alloc(part->content, decoded_len, &part->token_count);
 	if (!part->tokens) {
 		free(part->content);
+		part->content = NULL;
 		return -EILSEQ;
 	}
 
-- 
2.47.3



