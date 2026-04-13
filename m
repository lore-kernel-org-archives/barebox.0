Delivery-date: Mon, 13 Apr 2026 12:11:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGo-00BgId-2e
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:11:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGn-0001d4-LP
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:11:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B7kO7rR+Xvh2V0FtdIEf0GThJk4EWB2HQePaNZoY9pg=; b=GkgAsxJh/abh1OuFHubDL/CENz
	EwvaY009A2RD1YRzSRx1DJ3h8F9Vo0OmynO3MrFXQCRLIUHOEbSgUyG6qjYKSJIIaUPPWPSgWmAEU
	Q4VLlvqoDprNS8Uo2mXqGUf/Rpjx6S2nrQFRhSk2JfjSifygqmQjMXMVaIf3jkxNWSIx76k1yXavC
	/QBjTXCREl9reLQGZVdqyH74do1v8V7pF7JqSBk4TCFAdRFG2UPLMwc0SL7OGLDhM1YsvOU8PduWK
	m4gFdbTgfH7OZBLzIuHXjO4jQavia/qOIW7Pg47mJhdFHAFaYzp7BUuEicMRi0giaxSP2z/pPMPAc
	osHna4Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGR-0000000FSCY-39mC;
	Mon, 13 Apr 2026 10:11:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGL-0000000FS5Q-0dcA
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 10:11:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=B7kO7rR+Xvh2V0FtdIEf0GThJk4EWB2HQePaNZoY9pg=; b=WYQTxEUy/uOSN1v5WGDNZi23XG
	S+yKNtaixBggIizpFAyRH2Pfyq2zgysLz8JDXAilk8URv6uGn4tPc5ub1EquTQA58oPh+y23EQrRW
	ERy+TM1e5CSyve4iUGWKfKKz3sT3REur+6+HxTAV22B9cwN4c9TsHFWQYL24rA96FxBxDONl8MvlL
	Z16PhsAMso3KSJr2RsH7CUsSF1IungiUoAZguA2gEB59K8I79VuFrRs8eRiEYgDjFuY5PtwU52ZVj
	y5b7nJMWdRUDY8i710G3BSw2bNyc1XF60ZjyrR3cTNydreYj7hH+6cMvPFJxr/o0pnYWlWBGzqGrp
	SiTMQxBQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGH-0000000GZ7G-2xdy
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:11:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCEGH-0001Is-7W; Mon, 13 Apr 2026 12:11:21 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:09:40 +0200
Message-ID: <20260413101118.1462119-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413101118.1462119-1-a.fatoum@barebox.org>
References: <20260413101118.1462119-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_111122_351018_A02BFE4A 
X-CRM114-Status: UNSURE (   9.74  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] console: implement console_putc in terms of console_putbin
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

console_putc() and console_putbin() both have logic to handle different
stages of console initialization.

Implement the former in terms of the latter to remove the duplication.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/console.c | 36 +++++-------------------------------
 1 file changed, 5 insertions(+), 31 deletions(-)

diff --git a/common/console.c b/common/console.c
index 014ce2916835..0ce89390864b 100644
--- a/common/console.c
+++ b/common/console.c
@@ -573,40 +573,14 @@ EXPORT_SYMBOL(tstc);
 
 int console_putc(struct console_device *con, char c)
 {
-	int init = initialized;
 	bool crlf = c == '\n';
-	unsigned int ch;
 
-	ch = console_dev_is_std(con);
-	if (!ch) {
-		if (crlf)
-			con->putc(con, '\r');
-		con->putc(con, c);
-	}
+	if (crlf)
+		console_putbin(con, "\r\n", 2);
+	else
+		console_putbin(con, &c, 1);
 
-	switch (init) {
-	case CONSOLE_UNINITIALIZED:
-		console_init_early();
-		fallthrough;
-	case CONSOLE_INITIALIZED_BUFFER:
-		kfifo_putc(console_output_fifo, c);
-		if (crlf)
-			putc_ll('\r');
-		putc_ll(c);
-		return 1 + crlf;
-
-	case CONSOLE_INIT_FULL:
-		for_each_console(cdev) {
-			if (cdev->f_active & ch)
-				console_putc(cdev, c);
-		}
-		return 1 + crlf;
-	default:
-		/* If we have problems inititalizing our data
-		 * get them early
-		 */
-		hang();
-	}
+	return 1 + crlf;
 }
 EXPORT_SYMBOL(console_putc);
 
-- 
2.47.3



