Delivery-date: Sat, 19 Jun 2021 07:43:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luTlg-0005jO-Kv
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 07:43:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luTlf-0006FK-Mg
	for lore@pengutronix.de; Sat, 19 Jun 2021 07:43:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=olmbXNKNySQu8mCRXs2mL7IxR7MktuXZhbLcogbXs2E=; b=Mr56YSYpZBvzHO
	bfirRwppZ8bmo06V08r56AV3jtKhMDLV3f7uZtcFCO4nLero2fmP1q2iFWyyaN/KKfnjXCJuelYtt
	E1BUiHjj0B6w5H7hNQ851Z7IesS8X1xwxOJGI12jJhC15ibkIGQblINNr6bd3dhglsNIhM0kgX9b/
	V1bNMYTAUA6Yn6c7MsHJIucixuJjmqAOuRD14/pN2Pku14bmOKqOzez8M27TgW8GY8bCWkZD/gv1P
	gEwdYrOfeGHE+xHo27swZM0HXLhLT9w7EjV3hrlMXlSICypIgGGEUuGiqViPu+sh6KHFXernJVCSY
	6zsf1kr5rfmiaPzaRUSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luTkU-00GPsx-31; Sat, 19 Jun 2021 05:42:30 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luTkO-00GPsO-Um
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 05:42:26 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id CC21320003;
 Sat, 19 Jun 2021 05:42:21 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 19 Jun 2021 07:42:17 +0200
Message-Id: <20210619054217.499815-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_224225_169729_F9A80279 
X-CRM114-Status: UNSURE (   9.45  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: md: don't leak heap memory with unaligned accesses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Doing unaligned near file end returns bogus results:

	barebox@Sandbox:/ md -s /dev/stickypage 4095
	00000fff: 959ff8ff                                           .

That 0x959ff8 is heap memory next to the buffer md had allocated.
Fix this by adding some zeroed padding after the buffer, so it instead
reads:

	00000fff: 000000ff                                           .

This is arguably better user experience.
This only applies to non-mappable fd's. For e.g. /dev/mem, unaligned
accesses will still be passed as-is.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/md.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/md.c b/commands/md.c
index ef6a1e1bc0b1..d80c7cca0ce4 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -59,7 +59,7 @@ static int do_mem_md(int argc, char *argv[])
 		goto out;
 	}
 
-	buf = xmalloc(RW_BUF_SIZE);
+	buf = xzalloc(RW_BUF_SIZE + 7);
 
 	do {
 		now = min(size, (loff_t)RW_BUF_SIZE);
-- 
2.32.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

