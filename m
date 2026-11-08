Delivery-date: Sun, 08 Nov 2026 10:35:06 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPzIn-008dTb-2l
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 10:35:06 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 168382006B6
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 10:35:06 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=c9rG47Kr;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794130506;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=v0b9dmH1eTvoMCInX4B5peFRtuqmLViY6HJxF5csb4c=;
	b=HreB9rqiN/Q94c0ODYmGWfN+C56EpRkH8pRlXq3DXF6usI+nr3pPR5swJEi5iK6+/kxIVs
	8YQGSr090+BFxhiWO/WNCAYqzhfqqagBfDTSUghpKIEjt8OT5Iy9FMo9SMNRQ4+g9tP6to
	plIGLcfx7S8CD0UrGFHW+qJmfbGEE4maUorC/ErsXawCPZEUqsyue2mdURUb8WjKym7hLa
	N+enfnOh2xn5koosLOcglCg50GsowjRVmRmCBr0rSv7E+jbe2bixhrPxoRoxi3jIpgo5t6
	fzATX6HzeOZWrn6AYLo+dPLKl+c3P4rr3I8luxVvwecLcSoEJUzfbuEPmRBWmw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=c9rG47Kr;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794130506; a=rsa-sha256;
	cv=none;
	b=ILHKUQepC22x1ZNgu3H3LKCxs1b1k61vUGF3s+L78giwDgrvcJv4PxzERPlWpj90y/VSDT
	rSeVdoyNowbZqtTBEUCXNER6tAZxXSjWX6FeTEsw2srJP8Epl+3D231ELnU0aQAmIJ5MJc
	bgkcrqi2vn/58BlkzSwvApzD/+fS81Kq2uUeFLv1y9SIbb65XH5MThGmngpYICTIsNzEe4
	J3EtvG6bStKhaMqoHTIV/MIvGuzCKD/6NLt+yZyCBFNVsfZEJu8XfPWsmaXHoaRm/w2Msh
	rElHaFBhl3/iUDPUzQfgCcrdLBFY2uKlK2tx6vTajMa5uguts1p2hik/qHCF4A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=v0b9dmH1eTvoMCInX4B5peFRtuqmLViY6HJxF5csb4c=; b=c9rG47Kr2J2EsQ
	mvY8sbOV/Ttmvk2p/F4a/+eox2re/9Jb4fIpQ7Juou05tF3+iktRhx7SfZ5dJpR3ICCnFp5n1RetD
	bkLEke4+P3tKaEiR+EyxneSntucWYUuVaEgKGy/1BXukEePDOiqa2BfFPIEYMekktYYr4aMySBSBU
	Q2vRI1MyTbPRDDqwIiIsSqlaJqQvqiWjwexXR+Bi+Ecixeq0/U+g5WjaJTVquCZyUJg/IQq2d7rWS
	izN8do40cKIbzQ9AXsBttfCHOPperQYZ264cCl674euEBtA1L8eVr3DtrdWr0zzWfuiqZwp5Rj6sC
	uBSy0xBJsIfibo7tMTMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzHj-0000000FuRU-3JhF;
	Sun, 08 Nov 2026 09:33:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzHh-0000000FuPB-1Tr7
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 09:33:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xPzHf-0008Mb-Mv; Sun, 08 Nov 2026 10:33:55 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/5] readkey: wait for the rest of an escape sequence
Date: Sun,  8 Nov 2026 10:32:03 +0100
Message-ID: <20261108093354.1247607-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261108093354.1247607-1-a.fatoum@barebox.org>
References: <20261108093354.1247607-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_013357_390851_22803705 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Since commit 68d07f38e8e8 ("readkey: handle standalone ESC
    keypress with timeout"), read_key() waits at most 50ms for each of the two
    characters after an ESC. The gap after the ESC is what tells a bar [...] 
 
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
X-Rspamd-Queue-Id: 168382006B6
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: snjgfb9y8n73ho6ayemkrtxqc5tq1byg

Since commit 68d07f38e8e8 ("readkey: handle standalone ESC keypress
with timeout"), read_key() waits at most 50ms for each of the two
characters after an ESC. The gap after the ESC is what tells a bare ESC
from an escape sequence, but once the next character is a [ or an O,
the rest of the sequence is on its way. When it arrives later, e.g.
because it went into the next packet or the next batch of an emulator,
the ESC and the [ are dropped, and the line editor inserts the rest:
the up arrow types an A.

Wait for the rest of a sequence without a timeout, as read_key() did
before and still does for the digits in ESC [ 1 ~ and the like. Any
other character after an ESC can't start a sequence we know, so return
right away then instead of waiting for one more.

Fixes: 68d07f38e8e8 ("readkey: handle standalone ESC keypress with timeout")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/readkey.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/lib/readkey.c b/lib/readkey.c
index 71f9b41c5055..fed2f70418b0 100644
--- a/lib/readkey.c
+++ b/lib/readkey.c
@@ -80,9 +80,11 @@ int read_key(void)
 		if (poll_key_into_buf(&esc[i++]))
 			return '\e';
 
-		if (poll_key_into_buf(&esc[i++]))
+		if (esc[0] != '[' && esc[0] != 'O')
 			return -1;
 
+		esc[i++] = getchar();
+
 		if (isdigit(esc[1])) {
 			while(1) {
 				esc[i] = getchar();
-- 
2.47.3



