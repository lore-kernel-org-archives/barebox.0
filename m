Delivery-date: Fri, 02 Oct 2026 14:35:30 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCcU6-008qFs-1a
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 14:35:30 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 47F56201F0C
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 14:35:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=z+zeIwvX;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SbOsiV71;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790944530; a=rsa-sha256;
	cv=pass;
	b=HLpv4RkHiUY4UHk5Akmyqq62T6lRBXPVbfH9BX8kiBuV3vdYkOwznAGGreF6Wz2VsEGRH1
	uc02j//xElSj8ad1oZVKDJh8oWdswTCugd1b6MBHlBfb7e0FZL0pT716eNM/v3brETr0nN
	ADagYijzChrSBnXvEfmOHxRMGOBNGCCo/iYptpe36rr5BddGl8IydXCwj9lsQdgiczhenj
	jndO4gcwh4oKfAvYWUZ/Erya+Iry5wEJv7A6oCaw9Xyr4GPmnmQNogkSvQjhQo/ByDoyx9
	UZ4w3w9IJmuX/dXHXp9OlaH9JXmzw2JszI1mLw+Chu8fN7wU/70zgAWYcGMNqQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=z+zeIwvX;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SbOsiV71;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790944530;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Hg6/2GpVOe38cpFv1D6yczDTH0EqOlEwNYy2JxRVis4=;
	b=c/VmSIi+YYyctKw1Zp/RxHHu59Onr9lYBm8c1j64LAFHn+XrqKLT7KQVhncKRLpb0Ll8pw
	lrXGGzj5UMCHXGDoA3eOUhMZFFXoqU5nOBYdOvH/UtQzB8e7xv6ZMgbHqjYS4biiaA0Y4Z
	Ha1VXEF/fq0W64I1GvP85icrbmifameQ2W3e/DtIs8l/i3ucurodNVBNUnft7jFp8VDtVP
	3/ZIBnjJnNJYE3IS/kvg2IG/g2M4Nyl5m72h2ff7IsNY+To05pnd9OxiozjlTeEblv/+Vq
	kYnaV5A1UWbWH4dQCTn7gTMvJL7lApiQ6EWXbN4OHKQDSr9ohkfASiQx8kJZew==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Hg6/2GpVOe38cpFv1D6yczDTH0EqOlEwNYy2JxRVis4=; b=z+zeIwvX5/hM9GE1PNmVURHv/8
	5kVvDt4/7xapfcpF66cRaMFLUIuQxS6U51mRq/imcAGBr6wqcxtjBxf8JaUv8CLUGtp0ur7OQM3xW
	ERiqS85YJv57F3iUu+VIjotYjYyOayOVOFo7UqmaDqlii2v8RU29hXy7/5yJVExE8vNLwtveMfQcJ
	ehuLDH86/UaPhQO4FK0/on8BDYB7c6ZWpyiLaO/m4J66Ix6ziQzdCten1ZqhAMPPAVqqk8CP+IaVJ
	MeamMBBlQ9+jfC8bFCU+fQMDWkCviZuMc+eswT1IRO/Xg3GLrPuBL8FVallwDXhnieqxAf87uowTj
	vnD3L4LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCcSy-0000000BaQv-2k38;
	Fri, 02 Oct 2026 12:34:20 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCcSv-0000000BaPl-2Iwt
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 12:34:19 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 955AC200467;
	Fri, 02 Oct 2026 14:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790944455;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Hg6/2GpVOe38cpFv1D6yczDTH0EqOlEwNYy2JxRVis4=;
	b=SbOsiV71Jl8NAkzvz+e+1BdaFmcCz+TZzO/dASZ05Fs0CaLG7zqo4ILwfCV5VnJcfMsdJw
	768jHj23tz0PLZIghMkk4HhwMte/sJLCOOJD8Nb0D9UHmIu9GJrS8b6egc1EGYSFcBCEZo
	C5Mj3oyj/5MnUKjNLSdzhsoAentMny66EZfefn+LJk9b/xqrNZbqk1Y+6KI772JPee3GvS
	RIBR0xtO1E7mPwWy5tJvaSmOrRRvLXI2GJTHNucaUQ6FDugr4crqg9B8/aNLIYQJvZRk+Q
	oe3quQMU9MnXnBId0FcitiUGe9DhJ3GVlUXXjsDnONQdd1EVyeWOEQyhbIEsvQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790944455; a=rsa-sha256;
	cv=none;
	b=N5TvohAYMZq5js/YMUjuc9J2A5FIdHaAzpdY7sX3kLGedy/qwqfpVtWhECCEgjXcuzB5IT
	BmPRw8vbEyDl44Dgc5fr+evJeW4UlX0dEJztmAx83OD5OlmMw9Mdpx/51PxBPnY+H2efMF
	lZV9yyEbUXfFA3kaGfjFUbQtnuADp8A92MFlMpQu1I23W3V3V0z9LAdVcZUjArD4lYINPN
	4mSar3nOYkQHuFNxUSVvq5UqJhILody4SrFFdaYekwq8LdPAp9HrNCWDTgK0cdHizF4DAC
	Y3c4sltofZZLLDBQ9lAXbQhwNFYBNNTckaPpeX+wdLe2pV6rL/WGWyNPds/JfA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790944455;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Hg6/2GpVOe38cpFv1D6yczDTH0EqOlEwNYy2JxRVis4=;
	b=WDVy1iqQ8q9Psi4ATaY53uiZrnsWhJOJxbUWko21JkLn1iDtj332R92e6DjmfOxa2qb4fr
	HQOtV/OfXl3iblFTj4LAVC+M8xZwJROuWlJz423qmMBDvaRRo4UDHp6bwtsM+PZ7kCy34D
	+Tf+hK5NOSHxvlTx1xjd5K2dTLDNIrR1SLAwPukYgTyDz5rwDri77Y+Bw2Bp4yPnXcDGh/
	rOxnyEc+mXqIZYfVs7YcJZdK2j0DKyhDoBqbHi5+kz3tjQy3x7Zl8bbwMuFnf8AqzLxdsu
	gvibEqS6TJo/2ndixHDbBI+fx0JVPUK5wvX+j1+q5RuoXm9/k9rkrMf5pxZZsg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 80720740086;
	Fri, 02 Oct 2026 14:34:15 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] sandbox: hostfile: keep "syscon" compatible on the stickypage
Date: Fri,  2 Oct 2026 14:34:10 +0200
Message-ID: <20261002123414.2923003-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_053417_744663_5D148917 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The stickypage is described as "barebox,stickypage", "syscon",
    but the fixup that turns it into a hostfile node replaces the whole compatible
    list with just "barebox,hostfile". Nothing can look it up [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 47F56201F0C
X-Stat-Signature: of9mqexmiuozg1nnktndtqriaobc37q8

The stickypage is described as "barebox,stickypage", "syscon", but the
fixup that turns it into a hostfile node replaces the whole compatible
list with just "barebox,hostfile". Nothing can look it up as a syscon
afterwards, so children like a syscon-reboot-mode would fail with
-EINVAL despite the DT saying otherwise.

Let's keep the "syscon" compatible when rewriting the node.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/hostfile.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index de63ab5a9118..0ad0f76b4210 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -263,7 +263,8 @@ static int of_hostfile_map_fixup(struct device_node *root, void *ctx)
 		}
 
 		of_property_write_string(node, "barebox,filename", filename);
-		of_property_write_string(node, "compatible", "barebox,hostfile");
+		of_property_write_strings(node, "compatible", "barebox,hostfile",
+					  "syscon", NULL);
 	}
 
 	for_each_compatible_node_from(node, root, NULL, "barebox,hostfile") {
-- 
2.47.3



