Delivery-date: Sun, 08 Nov 2026 21:29:56 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQ9WV-008n9l-2w
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 21:29:56 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DE60C2018FE
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 21:29:55 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BQb+Tm37;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794169795;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=lG+PHeYqjbTMdTKNLFbf7PBhf83svvRxrYDVv3js5JQ=;
	b=RQkpnuItLvZzsertX+jbw8yxxFKJBVwAdqKAfy57DLewWUMPr9vQlLeglVHx6S/aWnczJe
	ZC4y72foa6573LHjY6/DUpohuJsB4aHyBtSTcgKCSXgBRCBwJeB0HfEtCmMWbhhUlUZy8W
	qZmj2IndiyRUydOYsS1Ae1To/FBkTQVb78fd0mUkbxXYbgyTUei4aSsPpI9WFKMjVgo40n
	morNEB7F0PtJrn9SQjeyoPhnPY1bDst8doVPHDCHjO353EiPqaGVhypdC3DWgVd/kjOBiV
	6e/LV4gFVOBGmzVyo8DUZ2yRSuvsMWd7Gp3Eb4j2wMlIp6AX6k961Ax9J/5V+Q==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BQb+Tm37;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794169795; a=rsa-sha256;
	cv=none;
	b=dwXpwBCgBtihDkd5HKnKADnZ38/Xuw1ITRvy5hdBI/beeDodI2iUGevXVtLMUDY0ZlwLvJ
	OxZ5eGhpN8D34YdFsy6Q3G+WeLuKk966jyxd3P4tsI68j4WhlqyO7V720p6RXoRp2fC0bz
	4bZ75fnra2796ZgmYpwVBrye+B54VSNvMZi64THgyi63x7Spbsfnlhk3tVKxBegUB23jKF
	8HRzqX+S/67rtdUa5dDI/d3IhPLMbJ+GSp3vEB3PhYJJ064G4V/UPR5doshBrbRN0n66b7
	66woL4lcYFA+dt135oglHo6oP7nT6tEtv1mrJXH3VvGCKoQMFBpqTwsC+gWowA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=lG+PHeYqjbTMdTKNLFbf7PBhf83svvRxrYDVv3js5JQ=; b=BQb+Tm370fGJHF4SLg70rDt7st
	7mxotXc3x4qWDT+ajtKDF9vWb3wf0vZnXz24eaolE02Ihd+wYkxOS74Vc6NIi5grsDpXWSNJtyQ0K
	C124u7lHZQCJpbndldqqKMOcCRtuMQJtes3GP1wWDOWyDXktOeFRuTTYYP/fKOkpY1+12zpXKWVv8
	LwQ0kQplwrgDm4zgx2L1Rgcff/W5YkbPTEExnnm5/HRNnnfOzKfcC46IfXhfrNNppkUOUAi3MVHGg
	oRpfERLx6X3YmkRzArDx7I6QiazFsowSgAHWKo2HHGsv5SVN9px8pRgiIeUDLuQQ8FwrhPplFcjVa
	sAF6LUgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9OW-0000000GZDY-2Kr9;
	Sun, 08 Nov 2026 20:21:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9OU-0000000GZDE-1mBs
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 20:21:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xQ9OS-0005wr-Em; Sun, 08 Nov 2026 21:21:36 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master] bootsource: point bootsource_set() kernel-doc at /chosen
Date: Sun,  8 Nov 2026 21:21:34 +0100
Message-ID: <20261108202135.1407925-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_122138_480260_3BF51A9D 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Commit cf893b54e65c ("bootsource: use /chosen instead of /aliases/barebox,bootsource-")
    moved the barebox,bootsource-* properties to /chosen, but the bootsource_set()
    kernel-doc still points at /alias [...] 
 
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
X-Rspamd-Queue-Id: DE60C2018FE
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
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
X-Stat-Signature: dye77wypagh5f7mfwmcx5b8i639746wi

Commit cf893b54e65c ("bootsource: use /chosen instead of
/aliases/barebox,bootsource-") moved the barebox,bootsource-*
properties to /chosen, but the bootsource_set() kernel-doc still points
at /aliases. Let's fix that and the name of bootsource_set_raw() next
to it.

Fixes: cf893b54e65c ("bootsource: use /chosen instead of /aliases/barebox,bootsource-")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/bootsource.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/bootsource.h b/include/bootsource.h
index 0d3cb7a33307..d8df6a5ab63b 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -43,11 +43,11 @@ int bootsource_of_node_set(struct device_node *np);
  *
  * Returns computed bootsource instace
  *
- * Normal bootsource_set_raw_instance() expects numbering used by
+ * Normal bootsource_set_raw() expects numbering used by
  * bootrom for instance to align with DT aliases, e.g.
  * $bootsource = "mmc" && $bootsource_instance = 1 -> /aliases/mmc1
  * bootsource_set() will instead consult
- * /aliases/barebox,bootsource-mmc1 which may point at a different
+ * /chosen/barebox,bootsource-mmc1 which may point at a different
  * device than mmc1. In absence of appropriate barebox,bootsource-*
  * chosen property, instance is set without translation.
  */
-- 
2.47.3



