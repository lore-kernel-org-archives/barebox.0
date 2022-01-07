Delivery-date: Fri, 07 Jan 2022 10:29:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5lZ6-00DdHo-2E
	for lore@lore.pengutronix.de; Fri, 07 Jan 2022 10:29:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5lZ4-0001Vb-KX
	for lore@pengutronix.de; Fri, 07 Jan 2022 10:29:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TpPbTfoH2RF4DJ1UjMPHsh6qJR4t9vVxuDUwpyQbNco=; b=vcIecVQzgKD6sx
	P7wY6aP/ieprhphL0o7CfCOj4WWhHIH66y6OapySf3yzpu+U2bgjiP2aBsIoJ7Uodx3RbMQ7rtGRj
	2/1e2i/t7KSveZCACJMCvt4PWSgtRppx6wVi+EQxiBSsLZ9YcZHUOA1klxPWNZlqGeHvrz3HNyBHU
	YVdRU8HLf3LJUvk/ong8jNPuz51m4wrim8C2+PUHXy9rfT2vdWfzr6QFLolmC2eZHmhmhnn4MUIdZ
	MPCS1JPavWQHCY/2+SOzh7W5OlY/K5ukY+o/bhK2890OC/NK20ajgExYAxwZ5RPFCgcGy1cY0Hrew
	0LH96mrhtVUHTXV/Q6qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5lXW-0033mk-W6; Fri, 07 Jan 2022 09:28:03 +0000
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5lXQ-0033jY-7t
 for barebox@lists.infradead.org; Fri, 07 Jan 2022 09:27:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 228279C5459
 for <barebox@lists.infradead.org>; Fri,  7 Jan 2022 04:27:44 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id wdjFZ1Hoexzc; Fri,  7 Jan 2022 04:27:43 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id C14429C545B;
 Fri,  7 Jan 2022 04:27:43 -0500 (EST)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 3g86wkkWycpk; Fri,  7 Jan 2022 04:27:43 -0500 (EST)
Received: from localhost.localdomain (85-170-128-172.rev.numericable.fr
 [85.170.128.172])
 by mail.savoirfairelinux.com (Postfix) with ESMTPSA id F3E5D9C5451;
 Fri,  7 Jan 2022 04:27:42 -0500 (EST)
From: Enguerrand de Ribaucourt <enguerrand.de-ribaucourt@savoirfairelinux.com>
To: barebox@lists.infradead.org
Cc: Enguerrand de Ribaucourt <enguerrand.de-ribaucourt@savoirfairelinux.com>
Date: Fri,  7 Jan 2022 10:27:29 +0100
Message-Id: <20220107092729.17929-1-enguerrand.de-ribaucourt@savoirfairelinux.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_012756_395100_158B218E 
X-CRM114-Status: UNSURE (   4.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: hashsum: Fix endif typos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix the comments in endif to correspond to the symbol of their
ifdef.

Signed-off-by: Enguerrand de Ribaucourt <enguerrand.de-ribaucourt@savoirfairelinux.com>
---
 commands/hashsum.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/commands/hashsum.c b/commands/hashsum.c
index bfacee0b9..308faa172 100644
--- a/commands/hashsum.c
+++ b/commands/hashsum.c
@@ -74,7 +74,7 @@ BAREBOX_CMD_START(md5sum)
 	BAREBOX_CMD_HELP(cmd_md5sum_help)
 BAREBOX_CMD_END
 
-#endif /* CMD_CMD_MD5SUM */
+#endif /* CONFIG_CMD_MD5SUM */
 
 #ifdef CONFIG_CMD_SHA1SUM
 
@@ -95,7 +95,7 @@ BAREBOX_CMD_START(sha1sum)
 	BAREBOX_CMD_HELP(cmd_sha1sum_help)
 BAREBOX_CMD_END
 
-#endif /* CMD_CMD_SHA1SUM */
+#endif /* CONFIG_CMD_SHA1SUM */
 
 #ifdef CONFIG_CMD_SHA224SUM
 
@@ -116,7 +116,7 @@ BAREBOX_CMD_START(sha224sum)
 	BAREBOX_CMD_HELP(cmd_sha224sum_help)
 BAREBOX_CMD_END
 
-#endif /* CMD_CMD_SHA224SUM */
+#endif /* CONFIG_CMD_SHA224SUM */
 
 #ifdef CONFIG_CMD_SHA256SUM
 
@@ -137,7 +137,7 @@ BAREBOX_CMD_START(sha256sum)
 	BAREBOX_CMD_HELP(cmd_sha256sum_help)
 BAREBOX_CMD_END
 
-#endif /* CMD_CMD_SHA256SUM */
+#endif /* CONFIG_CMD_SHA256SUM */
 
 #ifdef CONFIG_CMD_SHA384SUM
 
@@ -158,7 +158,7 @@ BAREBOX_CMD_START(sha384sum)
 	BAREBOX_CMD_HELP(cmd_sha384sum_help)
 BAREBOX_CMD_END
 
-#endif /* CMD_CMD_SHA384SUM */
+#endif /* CONFIG_CMD_SHA384SUM */
 
 #ifdef CONFIG_CMD_SHA512SUM
 
@@ -179,4 +179,4 @@ BAREBOX_CMD_START(sha512sum)
 	BAREBOX_CMD_HELP(cmd_sha512sum_help)
 BAREBOX_CMD_END
 
-#endif /* CMD_CMD_SHA512SUM */
+#endif /* CONFIG_CMD_SHA512SUM */
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

