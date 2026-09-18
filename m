Delivery-date: Fri, 18 Sep 2026 11:40:54 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x7V5R-003W9c-0V
	for lore@lore.pengutronix.de;
	Fri, 18 Sep 2026 11:40:54 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EDFBF200210
	for <lore@pengutronix.de>; Fri, 18 Sep 2026 11:40:52 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GhL5C61P;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=OPfWVmfs;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xcvKC06CwuOGa9Ea3TDlFBaeA1JXETAaukrian3snfQ=; b=GhL5C61PevpKe/PKvbVQTWf32s
	nkVWdnsA81yT2q1k9BLhAQEXTupMxtNC6JfB2dyYRVjxMtwtT43Mzi1Pphjx2R11ejatUJU2HG+n0
	FCk6kESAJ/Xuw75pvqvWWeGnbg+JAyMSPcoGP4p2YD5MiU1ndRNmQRIh2lpVjrupoS1LoiTnIRqBy
	UkIjqo6P2N9qqBdXgYTqMvCTJT/7Yi1VE8z+ekVgVolM+hBZwfZa7qrvRG95r1iZgqtASnQ2NzAqp
	bVjN/ND03BDNnp3DwAG5T5yiF1hSNk823lzPvSPz9KJjxEaqfufY7ZlI/rU10Xh4lksw5cWNayF3z
	D6/h+hbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7V3t-0000000DySE-0zQG;
	Fri, 18 Sep 2026 09:39:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7V3r-0000000DyS0-0Awq
	for barebox@bombadil.infradead.org;
	Fri, 18 Sep 2026 09:39:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=xcvKC06CwuOGa9Ea3TDlFBaeA1JXETAaukrian3snfQ=; b=OPfWVmfs9Cw5k1vI8Ofts1z01w
	OKdQ6yNQ8pnBmPm3ERG8R0/wh4JujgzV9HHS3dfAe04eTlHT+LY3NToKhUwnB5HH41KHqX1QE1CQX
	v6cDL6WV9nDTIhgrgSqbPe9r2aut8UuDSqptqq4rhwdTEPxBISqIJajCrkeHX/vMY5CEtJWorNADS
	jdzzZJ9NlB+jUTgW6gcBap+mbyKrg/OSxmmecJxUEOzNXRmJAgVtWGyloR+5Zky0GX4yW9XLtD0/y
	KeZbHy+9kmZ20d+hWQN1UW2Xien2mrNZf+PhZ4cTsOoamGLgYWgVkkViuhyqlNjKPROQh6+8zgW5o
	ffxgoUBw==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7V3n-00000009s0n-3nQO
	for barebox@lists.infradead.org;
	Fri, 18 Sep 2026 09:39:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0D75D200109;
	Fri, 18 Sep 2026 11:39:10 +0200 (CEST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1x7V3l-001XyY-37;
	Fri, 18 Sep 2026 11:39:09 +0200
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <uol@pengutronix.de>)
	id 1x7V3l-0000000206t-3PV0;
	Fri, 18 Sep 2026 11:39:09 +0200
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] include: ocotp.h: add missing include
Date: Fri, 18 Sep 2026 11:39:08 +0200
Message-ID: <20260918093908.477071-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_103912_109460_9BB214C0 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Otherwise GCC complains: <PATH>/barebox-2026.08.0/include/mach/imx/ocotp.h:
    In function 'imx_ocotp_read_uid': <PATH>/barebox-2026.08.0/include/mach/imx/ocotp.h:47:16:
    error: implicit declaration of function 'readl' [-Werror= [...] 
 
 Content analysis details:   (-0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Stat-Signature: x84omqsjsxnye37gekfy6ctzdgmkewzh
X-Rspamd-Queue-Id: EDFBF200210
X-Spamd-Result: default: False [-56.25 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_MIXED_CHARSET(0.56)[subject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[u.oelmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:1101:1d::39:received];
	FROM_NEQ_ENVFROM(0.00)[u.oelmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	RCVD_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-]
X-Rspamd-Action: no action

Otherwise GCC complains:

  <PATH>/barebox-2026.08.0/include/mach/imx/ocotp.h: In function 'imx_ocotp_read_uid':
  <PATH>/barebox-2026.08.0/include/mach/imx/ocotp.h:47:16: error: implicit declaration of function 'readl' [-Werror=implicit-function-declaration]
     47 |         uid  = readl(ocotp + OCOTP_UID_H);
        |                ^~~~~

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 include/mach/imx/ocotp.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/mach/imx/ocotp.h b/include/mach/imx/ocotp.h
index e6f62a9da48c..2d8fcc7c2657 100644
--- a/include/mach/imx/ocotp.h
+++ b/include/mach/imx/ocotp.h
@@ -5,6 +5,7 @@
 
 #include <linux/bitfield.h>
 #include <linux/types.h>
+#include <linux/io.h>
 
 #define OCOTP_SHADOW_OFFSET		0x400
 #define OCOTP_SHADOW_SPACING		0x10
-- 
2.47.3



