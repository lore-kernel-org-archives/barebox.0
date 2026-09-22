Delivery-date: Tue, 22 Sep 2026 12:49:42 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x8y4E-00529z-1S
	for lore@lore.pengutronix.de;
	Tue, 22 Sep 2026 12:49:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DEA73200044
	for <lore@pengutronix.de>; Tue, 22 Sep 2026 12:49:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=j8GsDQZI;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=HaMNhmEQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AhyhAg9+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074182;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=2e5IVL5C+v4NySNB9GCUn2b2STbGeYVo4WREPxIBvAs=;
	b=UR+p61BT6AKr6SyNLyy6Uxdhw7OhnTp+md/oqvumDmpI2HYaUU8bGKN/60kBMS8ijV6+sD
	7Pi49W37BVkTWbQ7rQ4RswY/uy3ZXStTCYMqdqyzhOR7aYfPg4ypRFDH/T4bHadAJyfKSm
	fYDLxldCof4wke+MWSvZOB/fE8cxvRxJ75eqeowRee4AOkvAS2xZrDWH0TSi+MvD6J7bo1
	uy2XItL8R7mUlJd7fVKYJSnjbFiFIplO4M79RV+dDw/Y7YKS5zOowsvTAkIPZIuUcPVpwO
	KcxMBhHhJi/xwzHbJsnq2zc9xKHrnkKb7l88jGtmWRNzE/z6wRGt9EwFhd4SWA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790074182; a=rsa-sha256;
	cv=pass;
	b=SSpAbI2gJrRVHPtn4tXcq6lMOzs3c4bOVzU+ivqzM98uSNmbgFCjWIdm7FRLsIh9E5RBeQ
	G3EX9z57yntlcDwYhBCyt2BMAOLU3kKXimWxjsnS/8pWDbyqnb3vX9tq5MXr0QrIh7c9Fs
	/HvE4JbfKR4UIJ8EW56YidmbkDYNZMf857o7PF7Owagu/DIiwz3sPgOJrqpQJB0oJ4nLUi
	OR+yE0tSDIeHSleE7IQW31uvQkjT1SojVHIiRwqtDSc0rSZr0Hq3m/cgUw2VUCUeDUHg5v
	z+vweCY/LfWsCpd4/Nrh2FQcaleUtZwTSaULjj14IqQMFAN++I77NDpuk5VhIA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=j8GsDQZI;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=HaMNhmEQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AhyhAg9+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2e5IVL5C+v4NySNB9GCUn2b2STbGeYVo4WREPxIBvAs=; b=j8GsDQZInr1pkycyOUKHuO9xij
	mVPhwt2w12v/+tBx7R+57HDOwdcT6vTlZzs9RxUpmzwFtqI54IX+zsNvb0f5wOs3/H73456L3Wy9j
	HMN9lzhag7eu1rDXpI/3nw+gPGhbZfEXc3/j7v7vMdNTDWn3fBPJKfsvumfJXyHsnwo0lgeFl5jlz
	nZxAkYEn3tCveFzIHr83ZFUdqAKPQ9XqTEfITznGQTw5UVVCQVfTXjBnCZaTSiTrOrBTrO9Ew+jQx
	TpLrEsKBvN/DR5XfHXD9ZdI6BqiqIQAjXi2Fb5VSybYfu/ElP+s/MTSIKe+uYfVaoIBRH/wexe28B
	hMf4pG9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y2x-000000056GV-259j;
	Tue, 22 Sep 2026 10:48:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y2w-000000056FX-2MCL
	for barebox@bombadil.infradead.org;
	Tue, 22 Sep 2026 10:48:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2e5IVL5C+v4NySNB9GCUn2b2STbGeYVo4WREPxIBvAs=; b=HaMNhmEQakIFJ4+edRrF9vsyd1
	CTO8yb5XsIYXrtGFKmydq9dz29crV1YhBt4/PnRumpcWOlA2SvKEuiRrB91el4ZkfO6lLcRV2W8Nf
	QjUmM8y0k3KahJ8Z4DC4vlXme1CLTVtaN5Nzj0WIla6a2EcvafPXcNWyrQxwPHBU0L6q/IRTktg07
	7Tdw8B0Nm+c3GHkSzp0QO2LohkvTRxtpI84kPvirxdntASUGU8DvWG4ZxR8WR0QkettIeDmBsDw2R
	+Hl7qhAkfS5Dp+57gW1dNKkXR/r2rpLiscb1xPO7/UMuEcUwwZqkyDbrfxv+fL04TlnSqa7Xy6GBi
	FW8FI5lQ==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8y2t-0000000DSZS-2Dtj
	for barebox@lists.infradead.org;
	Tue, 22 Sep 2026 10:48:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id F18A7201F45;
	Tue, 22 Sep 2026 12:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2e5IVL5C+v4NySNB9GCUn2b2STbGeYVo4WREPxIBvAs=;
	b=AhyhAg9+KJrYkOjD9rvGtSkf5OQJKSphluyfaSq1AC3XQqHqZCSRPO+BWWJA7yVKYWOt/l
	2GbLYxjR/dMvycg1eHBaXyx3Pn4MczfanPnexRBdQ9tOeLqdWNHJOl7dSqeGukmCbirwZa
	1CL9T521h4zoDWJIvoVd2rzWRVvox3OtVQTStzOY3Lk591hF7vP97OWC1SC6xe4Ybpbs9x
	N382g+PNwA399J+d6myeXv3gqA/pyUlyb5pQQCBhmAveugflAutyk7EjG1P7iF3HRWxat3
	YLHeoY3sAzNEwnsNjTjarHXA2xdU6z8q2gTh9V7YAtEjxBvE+J4/SBuA1vB89g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2e5IVL5C+v4NySNB9GCUn2b2STbGeYVo4WREPxIBvAs=;
	b=W2eRdeChv3g2PhWVS9O2OCh3oeoA52ge8zKCvBYzM0/Zgo834GND/zMe9fteZnK5SO52Lw
	tF1zbLrBe3OSjpa27UmByX3uIcdyY9Z36fSZSy/k8lGSy/2nZWHF0+XiRPjaayd7sdSQMc
	W1kd4rpiyout+iNsTt2D4RnX+z+enlgDH+tjp9PIZ990f1og9IVEcyxdxxGM2vs7w8ftxK
	Ml0toEU2yvThbaFE3TS3lkW0PYACIUeWrGvoD84xW1z86ewGbpG3QqoGBBUGMfbaPMBzNW
	lK6aqOZgE3t2KQmXgs0OjtSbPu8zBGVgQL4H9bD4Y/wmBbXnoe8znwmPAp/naw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790074096; a=rsa-sha256;
	cv=none;
	b=A8CTyNoM+/v4ExsjlVZLzLA0dXF3j3gKrNdPvWaZ1PAyezUNPM9bdD27tI6POAqE3nw8uJ
	T+bzCtoSz4GCZvdjUvkySLAoVfIXLXdbnc4up9P05v2R3NqmI3IS6FfFOnqG9AFMhvu0v9
	dHTiNUB1DT9a6vthxTECb8jOdcl3cPbB5Plu5664Q19c40HGOYamcme9PfWSwClLDD3K9i
	NSvaJiIiUnGMWo4/I0f06UKqmBmQ8GDY6JN2ebaJ3Lgdo4UV00cRxzBZayPFBmj89mz3u6
	KYxlzA6Nodj6Ba4Eku9h5ZKQN+OLao+XUI4myLd4jSadr7Ap7hJmjWgs1U3JxQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y2q-002DSk-2u;
	Tue, 22 Sep 2026 12:48:16 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y2r-00000001M6y-1N1F;
	Tue, 22 Sep 2026 12:48:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 4/5] malloc: add __free() cleanup handlers
Date: Tue, 22 Sep 2026 12:47:55 +0200
Message-ID: <20260922104813.317584-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922104813.317584-1-a.fatoum@pengutronix.de>
References: <20260922104813.317584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_114819_801410_E3AE58EB 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The cleanup infrastructure was added to barebox a while back
    in commit 332e3542e5ed ("Port Linux __cleanup() based guard infrastructure"),
    but without any DEFINE_FREE() handlers, so nothing could be p [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.51 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.80)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: DEA73200044
X-Stat-Signature: mp4ug6f1hnuemajs9zf94kzwyhkxf8x9

The cleanup infrastructure was added to barebox a while back in
commit 332e3542e5ed ("Port Linux __cleanup() based guard
infrastructure"), but without any DEFINE_FREE() handlers, so nothing
could be passed to __free() so far.

Let's start with malloc and kmalloc, so buffers can be tied to the
scope they are used in:

	void *buf __free(free)  =  malloc(size);
	void *foo __free(kfree) = kzalloc(size, GFP_KERNEL);

[k]free_sensitive() looks up the usable size of the buffer before
zeroing it, so it gets the same test rather than just a NULL check
to avoid an error pointer dereference inside the allocator.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/slab.h | 5 +++++
 include/malloc.h     | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index 93ce25a58299..9ccb8c6a0101 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -4,6 +4,8 @@
 #define _LINUX_SLAB_H
 
 #include <dma.h>
+#include <linux/cleanup.h>
+#include <linux/err.h>
 #include <linux/overflow.h>
 #include <linux/string.h>
 #include <linux/gfp.h>
@@ -116,4 +118,7 @@ static inline char *kstrdup(const char *str, gfp_t flags)
 
 #define kstrdup_const(str, flags) strdup_const(str)
 
+DEFINE_FREE(kfree, void *, if (!IS_ERR_OR_NULL(_T)) kfree(_T))
+DEFINE_FREE(kfree_sensitive, void *, if (!IS_ERR_OR_NULL(_T)) kfree_sensitive(_T))
+
 #endif /* _LINUX_SLAB_H */
diff --git a/include/malloc.h b/include/malloc.h
index 82fa2bb39c8e..b7f1aaac95d2 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -2,7 +2,9 @@
 #ifndef __MALLOC_H
 #define __MALLOC_H
 
+#include <linux/cleanup.h>
 #include <linux/compiler.h>
+#include <linux/err.h>
 #include <types.h>
 
 #define MALLOC_SHIFT_MAX	30
@@ -81,6 +83,9 @@ static inline int mem_malloc_is_initialized(void)
 }
 #endif
 
+DEFINE_FREE(free, void *, if (!IS_ERR_OR_NULL(_T)) free(_T))
+DEFINE_FREE(free_sensitive, void *, if (!IS_ERR_OR_NULL(_T)) free_sensitive(_T))
+
 static inline bool want_init_on_alloc(void)
 {
 	return IS_ENABLED(CONFIG_INIT_ON_ALLOC_DEFAULT_ON);
-- 
2.47.3



