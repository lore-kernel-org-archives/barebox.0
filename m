Delivery-date: Thu, 15 Oct 2026 11:23:49 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHgi-00DrKr-36
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:23:48 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6FDFE202381
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:23:48 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eTowOrZD;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="RGjchBt/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IRsAW1T6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056228; a=rsa-sha256;
	cv=pass;
	b=AgpQgsWvwzU3Vnyayla1Db+ZUTWbwwUmjt67p/IDnNLB5GlEmsuJr6aUZgvdeLwx3Qc3x1
	2eJQkoaE5DhzddFqWcXzuvur1EkzzvuDOtcOdglPXLBb07pv9/B+XMcw9QgqpZc11yiRPH
	BuA2chnBbzq8r1Se/+PfpReSuw//OZOc0kwaeIaTSobxspmGfuBOhIHQRpVjCAPjxR8zBN
	77+qvSIABCvRvHRW33rNdtp/8lWcVVPgi6N3SpohWTOprkTx1hZQCLQ7adDWvW0XD4t/Gk
	16vyU1wt9aDoJurLIwR4iDFjkK3tle0jrOnFHVnGTgfyyUm16XfIXngWpFFHHw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eTowOrZD;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="RGjchBt/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IRsAW1T6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056228;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=cSWJ2DzkuuLdxqEQm7i/IqpKa0q1ufE80w47B6h5fNI=;
	b=M6D6upij5mlebxSzrY+livFq49Z4G15mJUw59M1/8DsPJ7p89jo2MpJOoEZp3Iq7aOEz3f
	m/MDk3TpDpDeSmm9qUPDEjRmhzNgr06KsUfPcyqxwperdtEbgUe7BXxkGpHQ5TRfva0dEF
	cIZ6UOynU9lrlZZVWW7ImhizKsTOaZRBGfixQP17mNGtQvoUcjfEjCXjTrSndDRSlhl/eA
	zdd06EO/y288OywJejLgFQdPBrppGh782BRqaLXCGdjVIfR7k4gQYM7WcJCnOPv25QYJIT
	T03iO9bI8U9dEIF35o4y2pJGzsvo3rM9YjTQuxfRwFUbjyR8nokrH509qCoGPQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cSWJ2DzkuuLdxqEQm7i/IqpKa0q1ufE80w47B6h5fNI=; b=eTowOrZDPmRs13moB26t58w/id
	NGAeb04c4ZdU01yQ89UNc9506dI/L1d7UX91nP1SqdK2h3BsC8t9TILwUKeeXugaz980yyRnMD4GA
	6yYDnUTbT+hfH1CBwf7DxKNgz8FGpo2lnrm+IQON6X8ipN4vCqDBgAgE7X2B8isIUsIs+B3zcumCf
	3gcGf+aFiwdYK4/3ZRI6/0K3c8Z89BGjPUhHQJ1h/QI7vtYc0NezV8BDNk/f9pHSEmFcYvf8EpHJU
	0kR8hLQHsa0EhIgEwPj6vLUP5zvyPGm4vvOO3sb5/Q92XP+F07nZHYbOP0sXPmuNF6vU7frKjpttw
	rivq4vNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgE-0000000HFX1-24z1;
	Thu, 15 Oct 2026 09:23:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgC-0000000HFW6-2KOB
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 09:23:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=cSWJ2DzkuuLdxqEQm7i/IqpKa0q1ufE80w47B6h5fNI=; b=RGjchBt/Y90CGIKArS7siI23fC
	5LmyBELuBtIiZDwlAkSN5eSOlL3FBNTRCUe3Z6hISRFk/gFL9I4ulE581G8QDK/5J+7cbWdhgYD1T
	tszxbnhcg+fQD1A2GLHW613EtWvf1VJBbQkbLvQMwvWzYT75uSqPdvGeGcIKqOzizu2s6zVH7Qa5l
	Er1O3sbcNBOuDOrkQLuMzaGYJON6n2YCK+cWWLcSreQesQGnIolq/ivkZKtHF/nPt+MszKp1sh0Kt
	TfK28nyzfDCEAAhhH4YiuVZktF7wFNDyJILDidzc27e0G6tvwYDgwCyNuYecxiF9IbEKvmU8CBv5d
	fCaqxUjQ==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHHg8-00000000ANf-3fTF
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:23:15 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 894C9202657;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cSWJ2DzkuuLdxqEQm7i/IqpKa0q1ufE80w47B6h5fNI=;
	b=IRsAW1T6yYsnDuvor/s/s7Hk5C+U+zgARFTnTXH6aUo5Fp675PjnKyLh7YFXQP2gMzI43r
	OWc+fcgX7gxwPxo+uy5mCxVQQUZ1+mdClR2vIXz/iQ/aqxeccDTYAdqIzUwiB2ak3QoLbe
	ofIe17XrmAKBjYZcn4e3VJplnWzC8Cw3RN4p4pG7GNP0oT6U20d7Gn5mgox4R0pcq8xhsy
	WAG0Mpev5MFNZ5wAZA9By8RORKEV9hinORvNUeBxBLvRWMpZK3QJmcRkirO1RUBR9b++yX
	uWoIuPJ0+cLObfv9VhFPdfLeWPbtLOQUnEuttEaz4U88pJzJR+WODPFXbBbyUg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056191; a=rsa-sha256;
	cv=none;
	b=GiRxXdOVHQg7YlIXksMft3IJ7sMVA74VOU6uZlZxiiCqhxdRADQ6T9rtvfBYF4jmeCNAtq
	67ZXSG2jZsQQn33qeMXoyO6rgCdJI/KmiV8ECkZk2GkVvbQFhEb8n7fk3nzz0bqX7Mf0rM
	lKwbbx0yv8nLhShicb2X+i29uMQLYAtzisVzbNjlBiA6ZHJM0Z1c6DBOMr8rRMn3L0DWuB
	RGDpNbeDAHf132xLIK0IrBsEOK4gGtqrythHMTctnQ6fRefDdxCXcCOewleJWN7nmkqTib
	MBUq5SEOAGwdPcpJd+BYH9AY07wCCZAxjRe4OE56sQpTupPJoPX8fPi8d5jb3Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cSWJ2DzkuuLdxqEQm7i/IqpKa0q1ufE80w47B6h5fNI=;
	b=P6+MQ63JSC7/Xh7VWtT63O3040ligQB1guvbXc637F1QPP1gNSTUTnyGP+5rflfesWy1ak
	y96BEXUrDo/u+nuOD4gIEgzAgqszcRtOFeUP1feOizLh5Xri4xMJQp6gpLtxjkBC8KFRiE
	zDnqsgZQ97MNic+5EviwkEG157/G5OZmO5TqiYj861BXufAQ8axTbTF1M1yMMfCq25DdyU
	jp/1mIAoJAq19x8vkcz8x8+BiqVUyssTR90pwgEeC8DHYnuDQDW+FA0r5XywMZs1Q8aCo9
	r3KG1eC+SMn6IL4wou5YYhaUB9RlNYZrdwYG7I+LDb/JRLBsRbyPydkJf0Sl/A==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 6FCBB7415DA;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 04/10] globalvar: skip empty variables in globalvar_get_match()
Date: Thu, 15 Oct 2026 11:18:46 +0200
Message-ID: <20261015092308.146516-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092308.146516-1-a.fatoum@pengutronix.de>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_102313_484271_E2A8C6A9 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  globalvar_get_match() concatenates all matching variables
   with the separator, whether they have a value or not. As variables like global.linux.bootargs.base
    or global.linux.bootargs.dyn.* are register [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
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
X-Rspamd-Queue-Id: 6FDFE202381
X-Stat-Signature: oy4334gqr4ooe4f6fb63ykth5djaw5hs

globalvar_get_match() concatenates all matching variables with the
separator, whether they have a value or not. As variables like
global.linux.bootargs.base or global.linux.bootargs.dyn.* are registered
unconditionally, but often left empty, the resulting kernel command line
would contain runs of multiple spaces.

Treat variables without a value as if they didn't exist at all.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 2 +-
 common/globalvar.c                   | 6 +++++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 1608fc1ea431..8e6f3bbbe9ce 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -89,7 +89,7 @@ With ``CONFIG_FLEXIBLE_BOOTARGS`` enabled, the bootargs are composed
 from different :ref:`global device<global_device>` variables and the
 :ref:`bootargs <magicvar_bootargs>` environment variable is ignored.
 All variables beginning with ``global.linux.bootargs.`` will be concatenated
-to the bootargs:
+to the bootargs. Variables without a value are skipped:
 
 .. code-block:: sh
 
diff --git a/common/globalvar.c b/common/globalvar.c
index 876379b2538e..41f3e93b00e1 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -7,6 +7,7 @@
 #include <init.h>
 #include <environment.h>
 #include <magicvar.h>
+#include <string.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <libfile.h>
@@ -419,7 +420,8 @@ void globalvar_print(void)
  * globalvar_get_match
  *
  * get a concatenated string of all globalvars beginning with 'match'.
- * This adds whitespaces between the different globalvars
+ * This adds the separator between the different globalvars. Variables
+ * without a value are skipped.
  */
 char *globalvar_get_match(const char *match, const char *separator)
 {
@@ -429,6 +431,8 @@ char *globalvar_get_match(const char *match, const char *separator)
 	dev_for_each_param(&global_device, param) {
 		if (!strncmp(match, param->name, strlen(match))) {
 			const char *p = dev_get_param(&global_device, param->name);
+			if (isempty(p))
+				continue;
 			if (val) {
 				char *new = basprintf("%s%s%s", val,
 							separator, p);
-- 
2.47.3



