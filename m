Delivery-date: Mon, 02 Nov 2026 11:49:46 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNpbm-006LQO-1C
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 11:49:46 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7932C201690
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 11:49:46 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jM7jY+U7;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=AQLOvbQp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793616586;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=CVQYZB7pi/jCX0Q83TJY3Aj039+Sk1WGYHN0ukjCDck=;
	b=f2gbvpk34i3dVL6nRsxoUcuzmJKbvZ3V0M/ht5/nmo8UttbiuqsGsDUQ0nqOUyslK/0rLU
	ScNqqI9qUHjkvOraDsRZMV60ZaPsknZdTqs3hixE5jLdqltkjPBFLKAAZEcpkO9mxJ+WMF
	WPXq+WN+vgdw2IkXVLOL8c46TtnJb0WU/uayAg/YdoZIX5FN8uBkJIGJCFNX83lZpOJXrT
	y0kQLN6ZuTZORRyBQSaQ/vMmSya0fcwbgiCFaVhF2k4VkDVu56LHiXM0jFuz+7p33Qdxzy
	1utxnuPbgumsXkzAdB7FAnvIuDKeHn8pah/jm4PXAPZLx+1+Ulyer6qGbh1WuQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jM7jY+U7;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=AQLOvbQp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793616586; a=rsa-sha256;
	cv=fail;
	b=PMYBJojbyN0gQF0dnHaf0zuIOPlJXlGzW10E+pT7hm9pllcWnXqvO3yj2tf/O5NFiiVXbM
	/CIey9g/s/dCr5dSc3Ot2LFpmYmXcjwFwA6dYDeP+v7hj1q9gRqmBBDDEiPgIM2O+fT8xN
	cKYNB+wsRP/4Pl2Q7y0wKWQqSLDAjzNXhTvpb4JBprcSZas7VCJ9C0UOlWGqe7UdXfdK2m
	1du6nfo6KIr1AENZ+/+UXrQAnEU0l6miCwp8zdFvEYlH+FWIZuduWI/+pBte3SLT/2sYqX
	+oEWKW+1v2w0IIknn7dGuUlKjk0ijCQcnR4YGiPtMLrZOA7uSqrNxUa873XQ/g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=CVQYZB7pi/jCX0Q83TJY3Aj039+Sk1WGYHN0ukjCDck=; b=jM7jY+U7FyUgJp
	Ck5+HhsqqRKIPUpMJfsZH6q+tbtJ17Gn0e2gJOsgCwjcZq3XgW12pXPjxurTctdkEQ436o5ffIEed
	maTnk72vsadcLBL58fdhmk/1wn07W4hwYE7gvKOA4Li4jlvDwWK+fjgQY/R0qWywjZLGh2Ggoc4A7
	jI/YVa1Kjm1xQ2JBkobhisa5GmrkoFc88OGeNEP7oQzsfhrYA/LYqV+NsJkF1zfrOnI1S9baLutOJ
	4zU2S7x0LDnesvcDDfSsBKzI7miwnJjS3oy0swcdkApNX/FGxtw3H9GdeD3A6JrlpYSAdoTMxOT5A
	u75F8bF1yT6VcrpYbm3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoNy-0000000G1H3-27MA;
	Mon, 02 Nov 2026 09:31:26 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoNv-0000000G1En-2scY
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:31:25 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 75A2C2019D1;
	Mon, 02 Nov 2026 10:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793611881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CVQYZB7pi/jCX0Q83TJY3Aj039+Sk1WGYHN0ukjCDck=;
	b=AQLOvbQp2YgWoIpM5o+XTqK3zIJRngus3FN0nmkDmW3FaqiKjo5/MrUuR8992zOkrRk/Uu
	ybcSvgt5raGsz3jC+vsIpaIjRScB6KiHpdoGGbEhz3n0UuI50CQDIkB1CyoYHYh7rHa2oV
	9Hrk5tWQCSkroKlArsb00/+dEjwSuzy4taTJfRzbvcXmvNZS7L0VmbtC5r5B9i4YuTqtgO
	1vut7dTXCyR8YSR3MlWLzXaHz6/KxDIJ6d1+svzaowfPeBSHXSC/GxfGYFkGJyg9p3oOce
	0JvlCLWieD15L+54P6od9nQYE/N7sUOZLp5LynLdp7AYmpmPhlyl7XjYS7dixw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793611881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CVQYZB7pi/jCX0Q83TJY3Aj039+Sk1WGYHN0ukjCDck=;
	b=dHUnO1hPfw6Hx5/pWQuSmesYECJE1SJ/mYpQkyalWNKkK45zuaFsTgBuhGR6Ngt00f0C8s
	5QQFW98vpRih/Q9pLWoVgOgi51olEKzcf5y9RvpHYJNzEn8X8ebe7Y90HEQGGq/y42ft7u
	X+5z7rFNJP5GjPkF8fPtXGG1R8kbcr70gEbsLIV0yAkepny0DCw0A0qtfBXEIgWfZ61I1M
	aWpj8gIDjTOmJOQDRD5BvstIr3IBiKhQTKhyyc7dmkwv37ajgYFa12P1X5DeUi2HsYBHHM
	rTeyF7fBETDsRxzf+0Fxs3Co3kwLKQmam5E3WvgBRcil7p7Kfsxq0s0+gYq3Fw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793611881; a=rsa-sha256;
	cv=none;
	b=fBjPJPvUgRCTm1SlHYx+pnAWcpPjqMrw8hwyOdHzk/sFaJw+YFQhmyQBODB6J70bOTlNw/
	9ddDylMKRgUEE/DNtQ5/YZlGgTvfFomKd3jwPP+O4s4MofJJVxBEhY9isnN00T1Qo49BBw
	w0WORC3oYnzYkKBrZlZoMF0eTvwaDhgz6btvb+BTE0vtLX0rGPFfdOdY89Pmw2BDQ2wswu
	lb3IdUQ9Sxh13yWqOvhgQ1PSaMvvU7zSdsKF9frWZHMmibgYsyhBtwtOP9wUTQG/gSeCES
	9Bqi8Qgq1A7WqM5o7p7flKnoou8xhjMqYVQ14MZuQx2e37iLFGxsjoF5XROClw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Nov 2026 10:31:23 +0100
Subject: [PATCH v2 4/4] fs: legacy: return an error pointer from
 legacy_get_link()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261102-fs-getlink-fixes-v2-4-37df92e4d0d3@pengutronix.de>
References: <20261102-fs-getlink-fixes-v2-0-37df92e4d0d3@pengutronix.de>
In-Reply-To: <20261102-fs-getlink-fixes-v2-0-37df92e4d0d3@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793611881; l=919;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=qxWcUEEXwKpBtdFbdKpC6OtZuls6laeATDaCfg+jvOU=;
 b=+zrhtE/rdSKM39LwFWmcpvjCCHRz8k9mJB4eY0nnfL+nahlp7iRTPN+W2Y2r5rcHqd2ezFuei
 KNI20ArdYnBBBjgV257RRq166Rq+PRqCXb97WK5108aAzM/qLHDjmnb
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_013123_877801_417084D4 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  legacy_get_link() returns NULL when the driver's readlink
   fails, but readlinkat() checks the returned link only with IS_ERR() before
    copying from it, and path lookup takes NULL to mean that the link h [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: w9s7qpm3j4uqd88guqa7hswy4yce17jf
X-Rspamd-Queue-Id: 7932C201690

legacy_get_link() returns NULL when the driver's readlink fails, but
readlinkat() checks the returned link only with IS_ERR() before copying
from it, and path lookup takes NULL to mean that the link has already
been followed. Return the driver's error as an error pointer instead,
like legacy_get_link() already does when there is no readlink.

Fixes: b3fbfad7ae ("fs: dentry cache implementation")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/legacy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/legacy.c b/fs/legacy.c
index dce14706ca..07381d2b5f 100644
--- a/fs/legacy.c
+++ b/fs/legacy.c
@@ -289,7 +289,7 @@ static const char *legacy_get_link(struct dentry *dentry, struct inode *inode)
 	free(pathname);
 
 	if (ret)
-		return NULL;
+		return ERR_PTR(ret);
 
 	inode->i_link = xstrdup(link);
 

-- 
2.47.3



