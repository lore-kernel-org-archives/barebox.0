Delivery-date: Wed, 28 Oct 2026 10:25:18 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzuI-004GyZ-07
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:25:18 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3F34E202920
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:25:18 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zUgTHa2f;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="GGYCL5/W";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179518; a=rsa-sha256;
	cv=pass;
	b=OD4X8mGTb4Z0x6f+uffLC4+K9m2RLX5MNQu4oakmAdcPe5djlze+tzTa8tpqdsC8WVwtCk
	LuzdVgNs+pFDgQifssC+7MpuTeWUBzegVKJNq/g/yp0ocE4GiQH9ZgQ/dXVTZpTmqR93A9
	29u6It3oS/j20+Tv+9OHPshhxupbgs9iND+FDb1fw9erZ2FywB6Po3cgzy/DTJ1Aros5Yc
	HY6ptIksSAar9xqeBGfMp72+v8mOHP603ygxC1gcXKNkLM445mrD395sGHOmInb94zaF+4
	p6orOHrRD/J2uaNBl761YgehXGwnAQt+l14xFxtfA9malZB6wbMErQsfoYMMDQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zUgTHa2f;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="GGYCL5/W";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179518;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=CErP2nykZ1DHT8H+mwwDuP1nUX93o76eC4LsyoXsjeE=;
	b=BhqVPYESak/QqxhFHF8CwuCP9bCs3Y7BaJhQGghoANxOW3deLWnpi8p0VtL76qyHyrDOQE
	5DFd6jhBOD/ro8AttIeCgt7hwGbpv1PftykT0sWRF8gSA47u4BRPhPBDTsMU0eVEVz16YR
	PUDpGMspU02piFfgQLOsUjtler4wje8A2OzZH7eTGizpfDKM6ntMAu/x52C3x6YAYpaiiy
	YCax85Xp2hTcnfu8qLudwkwMdtpKLpquvnPL+lqKy5tzM8BJR6rMABCyowCs1B0v1p26Qp
	fWRjHatTOWSGCBcTn3DpYG5q65H/AOnhLaDYVM9P7y/TVSZAskrMp85fP3PJcQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=CErP2nykZ1DHT8H+mwwDuP1nUX93o76eC4LsyoXsjeE=; b=zUgTHa2f848Vwf
	27kEOVCyzFBTRGEGEwi1qerXSItc/u5l4Bxs7g7pQN3dMkBq65Sehl5KkvqnTP5pKdbfdEbturMtA
	b78chmNXW128L3NmEPq74I34+WuF1pEwlGK/WJsBUGgWr+/lmeO9ocaaXEQDp88Y7Uv+kKbcqL5Vr
	wshigqmziMKahgvfI0BhyFHp+YJe18GjqVAple3Z6IMXvwFkfD0tSMOZVQJ9Es9vdqD3/E9tqKAs5
	AubWbJk6u64ajjlLPR4QIhc5FeNVYAQDG97GrV2PfFmOW5xCMpnTSWHtW/fcfE1f0mPTQgbpU2o9X
	ZOUHwPa6Tadi1D1jQ/cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztz-00000006eOT-19UF;
	Wed, 28 Oct 2026 09:24:59 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztu-00000006eG4-2beA
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:57 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E871A202954;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CErP2nykZ1DHT8H+mwwDuP1nUX93o76eC4LsyoXsjeE=;
	b=GGYCL5/WNeEgE5EEIPwlxLkm0cg7CB3mQiyTgqOUHQgldJZN0C7eVABhRVoBItUrRh+4pz
	T+FjIZRqUAXUamQTSK27SWN2pXLKKj9CCAtRWbGnhgHXxJfXoA+wBlShUks80qTywd2mz7
	NtZt6AXr8csrz/TgcmngfI70Cl/60jCYpzwGHC0Uq0xzXibulZqRecky7nQDwz27x6S0ZG
	CJdUGEsba3DB3tlwEOp5DWbpcm7fKgxOJca1J2/Zn8N04H+MXup6j7WestdkB/jF3Fy+8l
	aDj+YcS2RQNmZVOdrgTHwXQJp8H3uYNNu6L2ps/zWnUnzYQiDggqQER6X1mOEw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179485; a=rsa-sha256;
	cv=none;
	b=FDZVd+VBdIavAIwCB/fUSI040gmUv2G9JQ4BEYkrMbXTKLAhNUgUHT0FzvkpsYOErQm7ji
	c4WZ9UMj/VIHbfhyshSnQgCqYAGFtZ3wqwao2edmUtO/pkQdJnUSQrFyET+6+Kj+UtoEXr
	oqJkedBUidp9JQFyJZqWy5BCbkOQAE7yVe+YA78yOo9hhHzUIrjyCZpoRmYsGdtzuCC8Dl
	po7SWX2OsWuQZxBUfumN+uWh70cpc0cWQNxrIEKki7M8wgza2ekne69AHmfdAbVn9DUQ8B
	sOBtlDOemb9WGN3rXGBq1rDVwHLHk6trghXJ3zQbfqAsz3gzScZKCGk0GY9R3Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CErP2nykZ1DHT8H+mwwDuP1nUX93o76eC4LsyoXsjeE=;
	b=TDMSjk6zszvFJQK/efnk39UlED50ZonnehxcGiKsBudMmLVnlRTdhC1i+FsLHtbN61KA+u
	RArC46dZpbF9SPfs/yfpeUycwzsyl394+jctva1d53nzxBrJyKLSXeGdb0ptOIm8WsGxHX
	tTpAuoTjExIY+E1nzTXXVAS7JmtQA+YXKa9ELtmAkmNc1Zp+QGRjM75twT33340U+ssowf
	7pFm81TnRwU4wSs+yF9qMRlo+tM2UohBnT+H6/4caLgxDZe/D6/3wI9LTOjTMfROxzU62E
	6bGedn55qbrS3AqL368FUxgZDMzscJ/jq0v48L+yoOvrqtqfhn6xNdDaUqUalA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id CDC0674094A;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 12/19] memory: atmel-ebi: use generic devm_kzalloc()
Date: Wed, 28 Oct 2026 10:14:46 +0100
Message-ID: <20261028092442.3300753-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022454_829054_ED3B2CC7 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Now that <linux/device.h>
    provides a real devm_kzalloc(), drop the local stand-in. Assisted-by: Claude:fable-5.1
    Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org> --- drivers/memory/atmel-ebi.c
    | 6 +----- 1 file changed, 1 insertion(+), 5 deletions(-) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Queue-Id: 3F34E202920
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: bgfzw4srsrwf6yoe3c1csqw4wj5x7gks

From: Ahmad Fatoum <a.fatoum@barebox.org>

Now that <linux/device.h> provides a real devm_kzalloc(), drop the local
stand-in.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/memory/atmel-ebi.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/memory/atmel-ebi.c b/drivers/memory/atmel-ebi.c
index 293c3d7f9d56..6a1cbfcd35a5 100644
--- a/drivers/memory/atmel-ebi.c
+++ b/drivers/memory/atmel-ebi.c
@@ -15,6 +15,7 @@
 #include <driver.h>
 #include <of_device.h>
 #include <linux/regmap.h>
+#include <linux/device.h>
 #include <soc/at91/atmel-sfr.h>
 #include <linux/time.h>
 #include <linux/printk.h>
@@ -79,11 +80,6 @@ struct atmel_smc_timing_xlate {
 #define ATMEL_SMC_CYCLE_XLATE(nm, pos)	\
 	{ .name = nm, .converter = atmel_smc_cs_conf_set_cycle, .shift = pos}
 
-static inline void *devm_kzalloc(struct device *dev, size_t size, gfp_t flags)
-{
-	return kzalloc(size, flags);
-}
-
 static void at91sam9_ebi_get_config(struct atmel_ebi_dev *ebid,
 				    struct atmel_ebi_dev_config *conf)
 {
-- 
2.47.3



