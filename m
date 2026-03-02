Delivery-date: Mon, 02 Mar 2026 14:53:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3iB-007ItY-3C
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 14:53:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3iC-0008Cr-AY
	for lore@pengutronix.de; Mon, 02 Mar 2026 14:53:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L0ASa5dgiDmplKUS14tvBMgnNgxDtXxjsjo+AAL3E4k=; b=azptykzdnGfR2ZlrnqILZ4k6zt
	orEqIuT2jVXp59/rROgdolpzZ4U/YnEzHWdeTvWcz4jeLlzOmKmUd+whczArtGJidq6LTkcyEjNk2
	X22NjOsWaIQiUVsQ3tp1kkRdBslDC6g5cLl9mK8339YaPEf16wW4iK8sadcoYoxSnCvJ54KOdwdki
	ZOgmaN528FPVz4yfwcX6y86fBFj0yoQ/oYoEAqik8lwXEL3+cRBGWRYQj7PN263MwQpKPH5C3yaXT
	vMn4C6tC5+R9fHyBYb0joS6zrxtwzwkf6LPU6yVcZiwIBZ2XmUm7Ex69WBNyYfJtSYZiZ0fcBEL8V
	+M0DNynQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3ho-0000000DAI6-0cVh;
	Mon, 02 Mar 2026 13:53:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3hl-0000000DAHG-21JD
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 13:53:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vx3hj-00083H-Sx; Mon, 02 Mar 2026 14:52:59 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Mar 2026 14:52:33 +0100
Message-ID: <20260302135258.197132-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260302135258.197132-1-a.fatoum@barebox.org>
References: <20260302135258.197132-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_055301_515201_768DB44E 
X-CRM114-Status: GOOD (  10.89  )
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
X-Spam-Status: No, score=-1.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/3] jwt: fix buffer overflow and double-free in jwt_part_parse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

jwt_part_parse() allocates a buffer with xmalloc(len) and then writes
a NUL terminator at decoded_len, but when len is 0 (empty JWT parts
like "..sig"), this writes past the allocation.

Additionally, when jsmn_parse_alloc() fails, the function frees
part->content but doesn't NULL the pointer. The caller then calls
jwt_free() → jwt_part_free() which frees part->content again.

Fix both: allocate len + 1 to accommodate the NUL terminator, and
NULL out part->content after freeing it on the error path.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
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



