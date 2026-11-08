Delivery-date: Sun, 08 Nov 2026 10:35:05 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPzIm-008dSw-1r
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 10:35:04 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C97782006B6
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 10:35:04 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TLwyfPWz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794130504;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=chBTdRVXmJIAdNLGDx2Obj7bprF7Kzt7URwDURMskkg=;
	b=UwOF7qahJzJLnH+QdvqTimUC+we/+wD7ezEhmLcGB3UwiWlFqNJBSlLZ3ZGx0GTbmDkEiL
	828McnRg/TEO/Hw0b+7AXO2RAe6iDYvxM2f3edk1YudW3kgYzqaa0udVeJJlhbqJMBi1sK
	feoZ3Sn/mVtx8hjCNdR7mSI7ZTe0bC6/f0HkeyWZwR0SuNuAXJRdaG4JhJEB8/TxZi6sHT
	FeSRym1MPdaOWSlwYbzadznKSBsvEHTFRJiOOVjEJqHlFvB6K+iu52EKlOjn0HaFVpi9/t
	P9hkWQOTTglG7LAADhAYCQWrSQh52BdEVaB7G1/eX4ex3jNCYf+gOxyYMpAOrw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TLwyfPWz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794130504; a=rsa-sha256;
	cv=none;
	b=Vu3AtuxwDDsVcOwIHCWx2x61bC3B1sF7fXCuxQz+9ecP+o8xIBv5KoWL2j02VcubKlIm2d
	T+Lqnhuqsh0r7Qi40Bu/b27c8NS1Uc635TkmHcsHnbIxBvKPuztF49ZkRzldnRGE9YNn80
	119PiS9/HHRROeSqiJVIxrCRwGjYb7vXn8AoAlkKAATasc1pDBsqGe+4KWZDaK36Idpo1Z
	beI/GPe2UJOQZjYGuebCOMOoUN19SwgXPwPdUGADBYuQiUBODNgbuB9DaTx07OsKVUD8t0
	mEtFUOhnGqf0R+7yYI6pgwL2VDGTBbHygBcxJvSWoaTTSjMqxajkDaudBYIuwQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=chBTdRVXmJIAdNLGDx2Obj7bprF7Kzt7URwDURMskkg=; b=TLwyfPWzwKWzh5
	e9TPAAHE5BlyzXrsqq/2nHOf0ajQcsp0xAMpbK93okMU2Pvt+y3EBvCObm11lR5UJZk4fqrUHYoQl
	G8VyzXZ3UlXOw6tAcH5LW/hqVqG5e6V/B6S30uQtfALibQSf4fNXTRuIxt6J8Jh95W4HnM32jA1bC
	l5/+JBGT77jYbei7mHZN/5yQ81rkyDUeLeLmFcfyiLUFY7M5bNHLAfmV9C6F54eWiXRit2LBmVGzC
	itkBMZSF5xOoHA1I5wp/f2BzIoawptOKroGMMhRK34Rjm3ovL13Fa8aGroMAfBd3kH8Av/8gS+wTK
	QPSrpnWfNIpEuQVWd+zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzHm-0000000FuSl-0IW9;
	Sun, 08 Nov 2026 09:34:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzHi-0000000FuPU-0gLX
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 09:33:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xPzHg-0008Mb-HL; Sun, 08 Nov 2026 10:33:56 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 5/5] console: keep the keys typed ahead when checking for Ctrl-C
Date: Sun,  8 Nov 2026 10:32:07 +0100
Message-ID: <20261108093354.1247607-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261108093354.1247607-1-a.fatoum@barebox.org>
References: <20261108093354.1247607-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_013358_238208_DD303649 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ctrlc() reads a character to see whether it is a Ctrl-C and
    throws it away if it isn't. Commands like sleep call it in a loop, so whatever
    is typed while they run is lost. For the full console, move the pending input
    into the input FIFO instead and look for a Ctrl-C there, leaving everything
    else for the next reader. As on a tty, a Ctrl-C discards all of the queued
    inpu [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C97782006B6
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: zx46ommwj6wkgwp53x7mj78drigxwb7y

ctrlc() reads a character to see whether it is a Ctrl-C and throws it
away if it isn't. Commands like sleep call it in a loop, so whatever is
typed while they run is lost.

For the full console, move the pending input into the input FIFO
instead and look for a Ctrl-C there, leaving everything else for the
next reader. As on a tty, a Ctrl-C discards all of the queued input.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/console.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/common/console.c b/common/console.c
index c57bb87b0114..b4ff7ca30f29 100644
--- a/common/console.c
+++ b/common/console.c
@@ -20,6 +20,7 @@
 #include <module.h>
 #include <sched.h>
 #include <ratp_bb.h>
+#include <readkey.h>
 #include <magicvar.h>
 #include <globalvar.h>
 #include <linux/list.h>
@@ -608,11 +609,35 @@ EXPORT_SYMBOL(pollchar);
 /**
  * console_ctrlc - check the console input for a Ctrl-C
  *
+ * Unlike reading the input with getchar(), this keeps all other characters
+ * queued, so that keys typed while a command runs aren't lost. As on a tty,
+ * a Ctrl-C discards all queued input.
+ *
  * Return: true if Ctrl-C was pressed
  */
 bool console_ctrlc(void)
 {
-	return tstc() && getchar() == 3;
+	struct kfifo *fifo = console_input_fifo;
+	unsigned int i;
+
+	while (tstc_raw()) {
+		int c = getc_raw();
+
+		if (c < 0)
+			break;
+
+		kfifo_putc(fifo, c);
+	}
+
+	/* Check full FIFO: earlier getchar() may also have queued a Ctrl-C */
+	for (i = fifo->out; i != fifo->in; i++) {
+		if (fifo->buffer[i & (fifo->size - 1)] == CTL_CH('c')) {
+			kfifo_reset(fifo);
+			return true;
+		}
+	}
+
+	return false;
 }
 
 int console_putc(struct console_device *con, char c)
-- 
2.47.3



