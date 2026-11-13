Delivery-date: Fri, 13 Nov 2026 08:29:02 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRliY-00AL6I-1I
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 08:29:02 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3C07A2023BD
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 08:29:02 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Hp37bNxQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BaJCzP0P;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554942;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=R4k/lBwoTDeT/4WcvXQbSIw/piIzOCtTSMGAW4uKtis=;
	b=UqzEwJ/JAu+LDET7k0h/+c57xQDhNKr5qsNoP4cjVbWXZiSXvQ3mVBiEoUIc3wNku0+XX+
	1Fifkc66M0fRA8pQTIBc3uNjB2bcCWSy4fFNdkMS9Na69oRP6NPz+CkYFmrZcocHibUxJ8
	HuiGHLEF2h5eo1BfF27olQTwP2oD5XlK2jtQQBlxtDVxAOf5y0rZhMwmmGbu6JSGM9/7Q3
	pzzSOMgUFrSldXUjmm0ftgYIfV9Ucsw7A0sL0/5uvIQnK48JK1xJTZK4ePaOdk0w6acPJp
	CLrGNddFLazxHzeYkY/z3C76lS+pdIqhtNEkdvd9GLNFs+ULM7Y+A1iMz0BzNQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794554942; a=rsa-sha256;
	cv=pass;
	b=gfMB/LtlVc9O1MCEiGYuijWE5icFjm6wAaX7evS5/DDpKxa7KMJU7KDB97/cMDRimnx6zk
	6FwCXdL9oGJe5xkfZQbBqSpWkwPL0GQveYLKPFIn+//ONPIbyv0L2ShDYdoKBctBrNbaEU
	JdFuXqwRPk2EYU9XY5T7MRVhNUigR7boo4JtO0p02p+Y8Bo5h2RbHv+LuVVvb/Okn0FBds
	NudV4A+q6uKpi3VlesKD9xA9SCpW+iT3zzC9wYgIQWxT8D05FANrroNIkKGJpTWtktmqWP
	HU8MYK9BAH8Ac6erKr4cJABQWs/o1qUl19Nn2LZRJLj+62bn3I1giEFS5Y30Xg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Hp37bNxQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BaJCzP0P;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=R4k/lBwoTDeT/4WcvXQbSIw/piIzOCtTSMGAW4uKtis=; b=Hp37bNxQDGVkkc
	QcvMY9C5FybiawanLkYvzO3QFDiuOnCxYaE1zuI0KaDDdPaOcmmj8wh1QRK/bMKhtHHG71U4i1vle
	vVrBAj6bAeB3YNk524Rt45EEGsha5j1FdgebpAfc1HirRL9BU6usVpBkdIUczLj9WiBUDVrb1zQSK
	CtjD2zMs3C3Aslga/2AfotiYvzdnXI1MuWI6FJnBfSPWPB20V+NorIXbwUT+gFzx0jwSnsrytjjOX
	+f7LdYVlLVD+AbWLZWIScafk6Y5qM1sjPEEA6w16FBncyWSF6oiJJQg37v87IJxdE7C4Vx2IY5ECv
	aTNPX9mGyxY+Vlq69P5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlaa-0000000Bt3t-3z3k;
	Fri, 13 Nov 2026 07:20:48 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlaV-0000000BszT-35at
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 07:20:45 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B175D20581E;
	Fri, 13 Nov 2026 08:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R4k/lBwoTDeT/4WcvXQbSIw/piIzOCtTSMGAW4uKtis=;
	b=BaJCzP0PwJ+x6ejkobVEYN0MCOomscmDlW68/4NUO0sflu6krPWjKYVLyenlY+sRf4jQf3
	5Gspj+BAlfVTjLBWOJYjKL0TcvOe1ROMoBjNQseATIRaXnAOB4HJHNDBRkLy7ESJSlazWN
	ko+7iyPPjc8wPYubfqXXIKXippQN0VMWhulhg+US2eEhRMErjErB8Qz7ajXgIFg6VvBzT5
	56szGC1rD2eyjMgwaAzC7+itsJPjSHqrPbThFPxpMfDiYKiPQIEsVHo0/rJ2K6xwJxxPWA
	j9CwpCLeAh/zhYDNz+TxwlTavxN4QMV9rn/rjDYiNFH+g26lGcjQ7MOFl7FvLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R4k/lBwoTDeT/4WcvXQbSIw/piIzOCtTSMGAW4uKtis=;
	b=Z+c639r1jXTVq8vodagcc48NZCp2RVx02hvRzHbIMbp4iLbC/oI1a19jln3lzik+etnnqi
	jaAXYN8xgDK7aF1w+38jL4MZOxg61fuo1OVCGgZ3Sy1VLdQp6r7ztlb2VtqgDZgU1WMTme
	sLVk8ePdcx4uHwkgUM4bu/Pwuf4LAuEbHtOgD5a5wTaZat3RSVGIu02gEXlqJVpVJE75ha
	TA+epYQfXdo5E4lHX6pBemWJJHxXYo9how3GoaxEBb+eQCNcgIqc3qx3XpU9KyXY7vLUtb
	pGVMgQ7NQyIHNWZJtE6o8n9RITILShxg97W6Yk5CTZEdzitjw71NeZNmi7y0yA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794554441; a=rsa-sha256;
	cv=none;
	b=UwMawSZ4Q0gC2/gaJHF8rc4BkKdoi9x8EwCYCxjHMG1AZotZ5m6jiJmMbHSmypqB4R1gUp
	8IueTyh91+cyMEv7ERHwwscLNHyA/A2FLHI1803jXHtWIV56cOuAtjzE4N1FDTsiIyCblL
	859JGqp8EuZpi+rfndF4MYP3Zs5LGHtll/MQI/nbSLk3z+7Cyb/9KOPklFlLW25qZx1WSZ
	Ab71g7BitZej2KApI2woexekprXyF6BP/iuZLsjHob8rv8Ibvjz4Ljk2GNyBBisCny2MKf
	NHxL3VlzeBzPo7Swm7so5wE456LRpM73j8eh4EEfVuYUj/OujQqEjIj4dvwh7w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 08:20:39 +0100
Subject: [PATCH v2 4/9] bootchooser: use a globalvar scope for its bootargs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-boot-globalvar-stack-v2-4-14c0f0a0986e@pengutronix.de>
References: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
In-Reply-To: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794554441; l=1791;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=7hLSmmH71SnBlZuAZaN4mMmW1N6dUKqoyIgnG0tV6JM=;
 b=ldAuF+P4B/tdKJ8mCqEJej21LNt3swdCVdPhgSvs3NTPr6T1MLIBtAncqFYYmLcj5eEhg/5HY
 1nTL0d++hJDBFz9MvmGM7WuFIdYwVqg2Yd19O0amBCm50gRoSOp+hlJ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_232044_039189_5DFE19E6 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  bootchooser passes the active target to the Kernel in global.linux.bootargs.bootchooser
    and sets it to an empty value again after booting failed. The variable is
    never removed though, so it stays arou [...] 
 
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 3C07A2023BD
X-Stat-Signature: osco7g3nu1yc4hgswmywm9bi3qyfa9h7
X-Rspamd-Action: no action

bootchooser passes the active target to the Kernel in
global.linux.bootargs.bootchooser and sets it to an empty value again
after booting failed. The variable is never removed though, so it stays
around with an empty value after the first boot attempt.

Use a globalvar scope instead, which removes the variable again and
also reverts any other boot related globalvars changed while booting
the target.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootchooser.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 2a75dfdcc8..2049425ab3 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -6,6 +6,7 @@
 #define pr_fmt(fmt)	"bootchooser: " fmt
 
 #include <bootchooser.h>
+#include <boot.h>
 #include <environment.h>
 #include <globalvar.h>
 #include <magicvar.h>
@@ -846,6 +847,7 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain,
 	struct bootentries *entries;
 	struct bootentry *entry;
 	struct bootchooser_target *target;
+	struct globalvar_scope *scope = NULL;
 	int ret = 0;
 
 	entries = bootentries_alloc();
@@ -857,6 +859,8 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain,
 		goto out;
 	}
 
+	scope = boot_globalvar_scope_push();
+
 	system = basprintf("bootchooser.active=%s", target->name);
 	globalvar_add_simple("linux.bootargs.bootchooser", system);
 	free(system);
@@ -887,7 +891,7 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain,
 
 	*tryagain = 1;
 out:
-	globalvar_set_match("linux.bootargs.bootchooser", NULL);
+	globalvar_scope_pop(scope);
 
 	bootentries_free(entries);
 

-- 
2.47.3



