Delivery-date: Tue, 10 Aug 2021 07:49:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDKe7-0006dy-OZ
	for lore@lore.pengutronix.de; Tue, 10 Aug 2021 07:49:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDKe5-0000lb-UN
	for lore@pengutronix.de; Tue, 10 Aug 2021 07:49:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WMqF+hggO0btTUwuWHaTELk7rAxfZNv2WR7nUCNm8y4=; b=4QJI8XsMVPgFvU
	+VC3fY4OwzVBAQXSK5pTFUKj9h4T7mKUkzzX9d2NchMQumS9oUzSNm0HUUyzpg+6OXFk7j2No4B3j
	WXOXB2Kw/72Dkqwjth/fEAKVb23NZ96YJ8bkI2twOa3RnIXiERkhOMtECmiPEuvbzTmASq9TicUeA
	PTTLvlQ7BFW+7ROnqx6lXlElizHFBQpnbCTofxl2zNs/Zm9r8J/Tf04DJg6kZFcPmEgBiV7x9OxCX
	ofJx3ChW9v5XrIWKLZico2eiVxWPvv7+6tztWvhl/sKtU2sbFLZWsfVVEPPYIBo49SP6fxhZoh1z7
	+wwdCrWMAFFHeT3GLm8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDKc3-002bEc-8S; Tue, 10 Aug 2021 05:47:43 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDKbv-002bDV-Mv
 for barebox@lists.infradead.org; Tue, 10 Aug 2021 05:47:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0fUrAtnx03fvd2vM0pspsuN+aH/kjyHqhkVCI03XejU=; b=g34+6wCy9QWGzdeBs+H7sVqZ1F
 Uw4nvQS1MVabDsZGMNvWHZ4wHlfCCiCdvqQEa4zN2DCaqw6oidsiOBYvlenb9KHuP8EK6lvwa37Oc
 3wtzM3zB+azYz//v0A89dINIWflFRqv8AHvI4NkAuq7YRnoulQVdA2OicecVor3uxZINypbYJEPve
 YPj4rZP7cV+ryvSJqigi04qzJMBf7mu+LSnIBmuGAlokzitxJxFTHCSm1WmPJjLePpRkuC480UUCh
 ShidxsIVM0Hre3jahFN3ZdHKwYkC4Eu9XAyiyqRCoUNjDp8IOJf9bG68BaB0vu1q/I5ARaOYZIftZ
 jTHNdPAQ==;
Received: from [89.212.21.243] (port=58786 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1mDKbh-001MuS-Ah
 for barebox@lists.infradead.org; Tue, 10 Aug 2021 07:47:28 +0200
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Tue, 10 Aug 2021 07:47:12 +0200
Message-Id: <20210810054712.1547433-1-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_224736_126559_2A265B52 
X-CRM114-Status: GOOD (  10.78  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] hush: fix conditional statements exit code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix conditional statements ("if" , "elif", "while" and "until") exit
code when used in scripts. Before the change, when conditional statement
evaluated false just before the end of the script, script's exit code
would have been 1 (instead of 0), which implies error condition. This is
not expected nor desired behavior, so correct it by handling such cases
and passing exit code 0 (SUCCESS) instead in such situations.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
This problem/bug was previously discussed on barebox mailing list.
Although a simple workaround was found (explicit exit 0 at the end of
scripts), a decision for fixing Hush was encouraged.
---
 common/hush.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/common/hush.c b/common/hush.c
index 047540132..d80df7a18 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -854,7 +854,7 @@ static int run_list_real(struct p_context *ctx, struct pipe *pi)
 	struct pipe *rpipe;
 	int flag_rep = 0;
 	int rcode=0, flag_skip=1;
-	int flag_restore = 0;
+	int flag_restore = 0, flag_conditional = 0;
 	int if_code=0, next_if_code=0;  /* need double-buffer to handle elif */
 	reserved_style rmode, skip_more_in_this_rmode = RES_XXXX;
 
@@ -966,6 +966,20 @@ static int run_list_real(struct p_context *ctx, struct pipe *pi)
 			return rcode;	/* exit */
 		}
 
+		/* Conditional statements like "if", "elif", "while" and "until"
+		 * return 1 if conditional is not met. This is standard behavior.
+		 * However this does not mean that this value (1) should be
+		 * returned as exit code, as it suggests generic error code.
+		 * Catch this by raising a flag and check it later on.
+		 */
+		if (rcode == 1) {
+			if (rmode == RES_IF || rmode == RES_ELIF ||
+				rmode == RES_WHILE || rmode == RES_UNTIL)
+				flag_conditional = 1;
+			else
+				flag_conditional = 0;
+		}
+
 		last_return_code = rcode;
 
 		if (rmode == RES_IF || rmode == RES_ELIF )
@@ -981,6 +995,13 @@ static int run_list_real(struct p_context *ctx, struct pipe *pi)
 		     (rcode != EXIT_SUCCESS && pi->followup == PIPE_AND) )
 			skip_more_in_this_rmode = rmode;
 	}
+
+	/* Substitute exit code in case flag_conditional is set. */
+	if (flag_conditional == 1 && last_return_code == 1) {
+		last_return_code = 0;
+		rcode = 0;
+	}
+
 	return rcode;
 }
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

