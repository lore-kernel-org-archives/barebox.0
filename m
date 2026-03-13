Delivery-date: Fri, 13 Mar 2026 14:33:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eH-000DJw-23
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:33:53 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12dx-00080E-Ds
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:33:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kiH3rPjOoOl5BR7YtHpiC1SaVZ0+CWl+wJLovDQAREA=; b=uKjxsHkqBtQa4VPYGX4RMG27ZF
	+D0K73ieEMEGmdouQMeR11oHDFtNGmw2QOEeWOuVbRXQ1+apda8fGAwtkG8rPAlIRzbRJHPmOeuy7
	1b8m1GmrAy+vnezbAQL8kKyodbMmfeAxmroIcFl+Upf4qUQ2vX4XF6ErO/JHiv5/x96VsiRBytedy
	DgQr/DEQCAT4op1YN4Oj5FSQqIp2kiIopPd3X1OUS4Zo7JuXm5M5AvCK9/wBf1NIJfrdn2KnvpI1U
	bvoYcwTlN+yd+7nYnKZ6A7n94PlKMR4DMtHemolWbJWkPvYkOojCAxDoYhoETonJJfEt5uq9NB41s
	+q7yHiWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d7-00000000FXV-338N;
	Fri, 13 Mar 2026 13:32:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d5-00000000FVW-15Zz
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kiH3rPjOoOl5BR7YtHpiC1SaVZ0+CWl+wJLovDQAREA=; b=G+THQ7rJZ6WCmJe8j271234IHl
	kkp4tGV7q1aZafzorui0tMk+aO2mExyW/vyKREGyDF3IPopti3qS31WoVhEJ9+tw15Aorl2ilrauV
	GW5ULG9bBAk/KIwR8iVHntlVQy8QDE1MAMhlx+P+r0kDjLyJOazH0va5R5ZRzOJ99f6l8cN5n0QKo
	avJL/Q/JNlkE9G7VleRvu/GJq53aPW5JS09hWjCFtm/+V4VEU7K42dHKbdzakPMQS1BKY2JA2a3N+
	zn2Ar9Zlhu+C2iBExT8jO2/69NC21nuYhh/G999DLMkaTdz8X35n4VE6IO3iylaBSf6xqgE4XyX+Q
	qhQqALQQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cy-00000003OSd-3BU1
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0006o7-4b; Fri, 13 Mar 2026 14:32:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0005Sr-32;
	Fri, 13 Mar 2026 14:32:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-2saZ;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:16 +0100
Message-ID: <20260313132631.2257573-33-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_027347_62CFEFCE 
X-CRM114-Status: GOOD (  10.38  )
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
Subject: [PATCH v2025.09.y 32/58] of: fdt: fix double free in fdt_ensure_space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fdt_ensure_space() frees the original buffer on memalign_realloc()
failure, but on error, the buffer is already freed by
memalign_realloc() unlike realloc().

Fix this by aligning memalign_realloc() behavior with normal realloc()
and adapting callers accordingly.

(cherry picked from commit 3d6d2414d85e43b53bc2e7b3e3986a888307a689)

Fixes: dd36494ae2 ("of: fdt: fix memory leak in fdt_ensure_space")
Reported-by: GCC 14.2 -fanalyzer
Co-authored-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260216084142.3546363-3-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/fdt.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index f2f4aa03de2d..b529b4d1fe3d 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -421,10 +421,8 @@ static void *memalign_realloc(void *orig, size_t oldsize, size_t newsize)
 		return memalign(align, newsize);
 
 	newbuf = memalign(align, newsize);
-	if (!newbuf) {
-		free(orig);
+	if (!newbuf)
 		return NULL;
-	}
 
 	memcpy(newbuf, orig, oldsize);
 	free(orig);
@@ -606,10 +604,13 @@ void *of_flatten_dtb(struct device_node *node)
 	header.size_dt_strings = cpu_to_fdt32(fdt.str_nextofs);
 
 	if (fdt.dt_size - fdt.dt_nextofs < fdt.str_nextofs) {
-		fdt.dt = memalign_realloc(fdt.dt, fdt.dt_size,
+		void *newmem;
+
+		newmem = memalign_realloc(fdt.dt, fdt.dt_size,
 				fdt.dt_nextofs + fdt.str_nextofs);
-		if (!fdt.dt)
+		if (!newmem)
 			goto out_free;
+		fdt.dt = newmem;
 	}
 
 	memcpy(fdt.dt + fdt.dt_nextofs, fdt.strings, fdt.str_nextofs);
-- 
2.47.3



