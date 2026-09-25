Delivery-date: Fri, 25 Sep 2026 10:15:05 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xA15F-0065tc-1T
	for lore@lore.pengutronix.de;
	Fri, 25 Sep 2026 10:15:05 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 33099202057
	for <lore@pengutronix.de>; Fri, 25 Sep 2026 10:15:05 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KOG+tt70;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=hCUPoFfH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790324105;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Y/trzpT2u2bo6qJR7sUPbSm1yTbUQVPeXnxB+o370Fs=;
	b=V4k8SPX/6r7eplditxzePhCidmrMt+Ga1apmPLbajj5Icu3wtXuBmCFp2Ir/WRtAJlpTEY
	SL7Too9RtxYgXCZW5Mr/yVN5q5AurIi637f41ObMN7oo6l839kTTHKnAzMopfs6676zTuq
	k66H4pTcwWSXUGwVrxQTT8hjBH+oH6IXnCuaGt6/XbtXClYzPZ65dazLEJGelhpD+TT1n+
	zlLf4/v0Hc/Dfon68ggzmWfdET51hyyQ0BXi7//rYs3uQWyDtGixsgxUi41k8zCaETpf85
	iy1CUTITJ/ODRiQssahyz7mZFGPueyy+SOqXQG+jot8XTyMgFa3FONbZBV/x6g==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790324105; a=rsa-sha256;
	cv=fail;
	b=CI2A/zN12jO9HoG00vVaAW7CnjoMenBid+IO3LdAO4auT1PmFP6gULcryNDYru9yP/3eCA
	2Taqvm+6BQzjdkXrAW8wb7tjATjvJMBkwCD2cAdXKIzbmMcJP5vR38hY3cHrNEa0W8eiMP
	JaXYrSusBWqNmEcj0eDgCQcaD2iAqka5UZ42BORnlu7Jo+t0uqupWStNz8Py3H2FOn4me3
	hsefC1ZrFdeZ5pY/t8TEg2qjzLhc+TU5a81bOADeaTziAAviGUkhgkZ3613cPwCE1+b7KJ
	7yuG58NxwkBt3zXHj9GudDqRVt+c901JP1OhC8mWU88lwoAnRcZKX/2oESUgjg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KOG+tt70;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=hCUPoFfH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Y/trzpT2u2bo6qJR7sUPbSm1yTbUQVPeXnxB+o370Fs=; b=KOG+tt70i2z7f/OV6k4dqxLtuN
	oc9Tp5DAPrtLBDHgNRemcssm9oirQRloBU0YKn9igchs4i/S8tUuiFxo5zGiGshW/4qqIRpFXkE+M
	btxJOVT3wmJqLaVvYiRQ7CDX61HetLc63XaHtSQ1hZEgNP7E+uGNhsGM5KBvMqcsBmEU+50q+fIBT
	uCY2UMHXva8p+NGXK9eIiTVLE+Q8uVPxqqw3ETkQEtxbveSjsVT5sMjemKPCwqfhdLatYDNiS6ED+
	lMfc/hGLxIHTzOzyxqIMkOCMOcx37pzdy9Y3sqrmuqBfzTahZ47MVt6asTsjRHg8FB/Pu34bc+ir5
	w/crDSAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA13x-0000000CtSi-3bQo;
	Fri, 25 Sep 2026 08:13:45 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA13u-0000000CtSL-2JMU
	for barebox@lists.infradead.org;
	Fri, 25 Sep 2026 08:13:44 +0000
Received: from dude03.red.stw.pengutronix.de (dude03.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::39])
	(Authenticated sender: relay-from-dude03.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1431B2010E2;
	Fri, 25 Sep 2026 10:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790324019;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Y/trzpT2u2bo6qJR7sUPbSm1yTbUQVPeXnxB+o370Fs=;
	b=hCUPoFfHmujHoSpQQV+sgZwdFy0bRk9Ft4HtQK7uEXIO9zfmOqO2Njy8bdyD4wze04fRFE
	lw4IFmUE43pS/GpCnvceo8IHp/+SwFQvtfqUUugjln1pLVaiHWTH6irkqiZzTY0cLoBL28
	j63p5HCgpPIIT5daubfgLBen/k0Pl9+NDl/ZczOvFdjex5vkQWHN/ejGyNUXAJblgy7rQb
	npt1U6O2F4yQctxjnrQQGL8gENhdDteUjL9D6HTnGWQtZNkINl0qufhQgll5WKP0VjVO9V
	rllKWp91cbuYlE1oaFwkDKtv3CR0yQ39u1IsAj34hbIfxeOOsEVRClTBppa3tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790324019;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Y/trzpT2u2bo6qJR7sUPbSm1yTbUQVPeXnxB+o370Fs=;
	b=LYdOYGCqCShUBLpVS6pG9PF7S2+Y+1c5C3eQsrToYcaWdS0P6Cv2/1FOcrEf+hxaHqmISC
	V2S1lhyGpdne11s3n3bg4demd++ZzP9YIGaMHs7LiFDEBL5XiqH+PnlPho5EcgVzuRt1ld
	wjrd/6iv/VcpWshEf5qZ9LHBTqeK3EDGEmM+77Hwf9pTT4BMkkvTRnXSiuiRxKPygWSRG0
	bVPq+oZynYFHAa4oERouyjKRG6kNrZ0/5SoLirJ+bCavEZYV2+GIAi95SDTs/g2pG+NgD2
	Imr2xZ1Ibgo5M3RCADZ5Sh88WYcd4w8AV+3RBPXJRRQTA+JkHCiuGiXejjSqtg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790324019; a=rsa-sha256;
	cv=none;
	b=K5Y/PgaZRMlYayrmF2V0ZnRrw7RagkLq9zihksweoTzKGLnNUE2xmAM1POnuVjs6at3+W6
	51tlKyO28N0ZBhX9Qrmu1gQL/ZipYtvczpbK6L611usjkg2e2+NpJedO86pQ4FYeiqIwxN
	h7caXMEAbD95Hq3ZRyZoWKytrvGcQ0RqzWMZHZ34Ly1wWoZ+AdLmQ1SG2oy9jL0TsW0/Yu
	Jj84j08Y/HK9x+ct9FTwWKQHfESCVO5U1opmRqOj6RCDD4+mf9Id6tV7xGnbLAUUBfsVKv
	Sh5BJT1IOAHTsmixJ0s7gSxckefHxih8iyjxiQj5KCifMZx3tF7paJscipEu1A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude03.red.stw.pengutronix.de smtp.mailfrom=uol@pengutronix.de
Received: by dude03.red.stw.pengutronix.de (Postfix, from userid 1052)
	id 068272C83AA; Fri, 25 Sep 2026 10:13:39 +0200 (CEST)
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] include: ocotp.h: add missing include
Date: Fri, 25 Sep 2026 10:13:37 +0200
Message-ID: <20260925081337.880619-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_011342_741505_40725929 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Otherwise GCC complains: <PATH>/barebox-2026.09.0/include/mach/imx/ocotp.h:23:33:
    error: implicit declaration of function 'GENMASK' [-Werror=implicit-function-declaration]
    23 | #define OCOTP_WORD_MASK GENMASK( 7, 0) | ^~~~~~ [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-54.85 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[u.oelmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:1101:1d::39:received]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 33099202057
X-Stat-Signature: bbgjksfpa1prgt4xkdntqbbuzo6yb4mb

Otherwise GCC complains:

  <PATH>/barebox-2026.09.0/include/mach/imx/ocotp.h:23:33: error: implicit declaration of function 'GENMASK' [-Werror=implicit-function-declaration]
     23 | #define OCOTP_WORD_MASK         GENMASK( 7,  0)
        |                                 ^~~~~~~

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 include/mach/imx/ocotp.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/mach/imx/ocotp.h b/include/mach/imx/ocotp.h
index 2d8fcc7c2657..a3eee070546b 100644
--- a/include/mach/imx/ocotp.h
+++ b/include/mach/imx/ocotp.h
@@ -6,6 +6,7 @@
 #include <linux/bitfield.h>
 #include <linux/types.h>
 #include <linux/io.h>
+#include <linux/bits.h>
 
 #define OCOTP_SHADOW_OFFSET		0x400
 #define OCOTP_SHADOW_SPACING		0x10
-- 
2.47.3



