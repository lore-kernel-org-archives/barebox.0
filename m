Delivery-date: Wed, 07 Oct 2026 13:01:18 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEPOg-00AuKR-0t
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 13:01:18 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 211E6201EFE
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 13:01:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iGadnr9h;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZZuHoJCt;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791370878; a=rsa-sha256;
	cv=pass;
	b=TfjsbqwjvpI1rDs0XbiUOMVJWBX8ay68jKbHPBYzX0wtCubFnD6trKOFezLYGl6BpB7he9
	IMKy/yydVmYUb1K2sQpIIkRA8sZ7kcISzVsWg+7yCJ7YbbIrH5j++8TlbFIuvG9ccWuKmn
	csyCvAYtjVWV+j/jwradcFByF+M0oou/bHLOs4kvxBpnB9U3R9qR+CHDGnU1gdLhkLnriC
	ly5r5AqFgz2J5Z1d8SVjrxHmJ8JG4/ftk7DNbZStk7VO+N0gX3pkglx8vhcMm0T+sUPuUO
	khFZZIn7iGbieeWgLUi7+7Ma8ygdR3n/RypuZcT/Da6lEOATnmwnnLGGXpHnoQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iGadnr9h;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZZuHoJCt;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370878;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=l7J0M9pLRa8NrY4R3RbsmDcUB0J8+LRIrbWS5PIANHk=;
	b=HVZLILbww9BoZtoNjeFFayZLDFNgqYK3inJtIkUrfWbfjXGmaKclUPEzWtBPfKXVPSuwmS
	0tfwBjvOslPRfwIlDSj2PVtOIQ25O0B+sQr+fjM4QuYwo/RAs04OKeTcw6t25V5YgFHDUk
	GziZAyDI3goZkgSzFlg0S5WIfItpPCeoyWlN9fCuRJo+gXrx4oRNBQSFI7J7qRZTEpLHqI
	Ulu2Bt+t47JvIFGOKpcfoTiyqO+9GLgr2yYVwbSYCN1THZpox8uXWdffJUMYyi/pUOzxYO
	MIeu73r7fLQ+3E54SquIx+lxshxBvdJ5xr4/A8zxEpC11iTokkRnJjDlObLGKg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l7J0M9pLRa8NrY4R3RbsmDcUB0J8+LRIrbWS5PIANHk=; b=iGadnr9hpaKBaSZx9i3Yl3i6ZZ
	cLMn5v1k0qAQeK758jtfu2DcAIPCD59Zr/6GUHQEZiqB/VVQas3u0QxtE3QrnB5RnbLT0YV34sHmI
	Z27BqWfIx1ILyVeEgLChC3VDjZyPLcAUOoJPgxPvlvRRgOb8VrFZfr/svqnYv3JO+VsCnOuZZY+Nh
	2B+ap+Ph8iR5pf22T0+6kOBwSWD+y4cEjsWI6cFIL6kv9jVlB49s/tpHWBUxNZYe0DCdTN/CwUik9
	1DF8gPrsEgqMJuwh1zCh5d8UmWh9kbvByqWW29k/pIlpyi1CASP+qQlm93WT51i48ydbtqeKop89C
	DJW8yWvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJe-00000002FCp-2bUd;
	Wed, 07 Oct 2026 10:56:06 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJX-00000002F8b-2Lv2
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 10:56:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 26BAF20235E;
	Wed, 07 Oct 2026 12:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l7J0M9pLRa8NrY4R3RbsmDcUB0J8+LRIrbWS5PIANHk=;
	b=ZZuHoJCtoQF/GZg/SQnMqekB2iKmKN7Tju4v+mvPu1c0UY1opRHXqwSgTnGzLQkkoqrmhT
	zN6lE9ic7/+0InXr5JUcNwBNykjLCrauFzQpJwPyPoifZT9cuqUM5h0vkWBlnxbd2+sMy0
	yYYBKri/4iavQLj+ghYqIPMj3QKDMfsNDHDXouLjShwETvhkiBtUnzqZBx7qbwoYE3RfX/
	Nh8rLNVypxcrHSSOLO8FOWtMElt9Xb+jVc+dbQfdUVYIl0dRbqp3M9h7Fe8XPVdMt64k2c
	Up90ySsV3i66ZU9wikET8+eJHQjDXGTWiGalty/LEsmd5DdMxB2KK0Ft74CbjA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791370548; a=rsa-sha256;
	cv=none;
	b=SGIfBKbnB+6Fst6KqKZkegI1Pu1PzJQC2OEH4j++heEwVivGCJ3oNg1Pv7AMi6yEKyqjG+
	wrrssdDyOthaf6fLtJIx/uI9lr6DJfxuKF/iJqAjQ7Cay8495RWhnveHh0b0saoT54g6iE
	ai3ZT08CxNaV0g6rJLN6s7Hql+XdUnBFZuHtYbIrY4ikATeDVTG1C4awKvMsyby13bzhVk
	+hAmGQTQdNqK/SEhbI8Q9JLq/72EqHHh6nyRSszFls6AXZJRsGOjjCdl9t2Pegnm8hL6uL
	o7S7872L0RA9pwbi+x6sHWDH5MUYhRiCeO10wd3L3XUa+QaNjzmXenMB+o7b/Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l7J0M9pLRa8NrY4R3RbsmDcUB0J8+LRIrbWS5PIANHk=;
	b=ai+vjjOgN+hyPw1S5/QfxifMmyf0C4ar4bNdkqnfR0CG3I0e6C3UjfoFoHrvNQW6GWKjVR
	PCX+pNJr3SOrsS5x1cnUkhB01M/z0zovzn/JF16Gj2NIK3upffyHRfUzYv9dcdkXpcY8Ej
	uuAP4pRjbA2qQndEjntVM6KRqovPK6MMYfkFjOmRJ0yJlmL3T2HF1EYjzyT2GHTaWHE14W
	H2CbgvV6YIhp3AGLS2sZAvFgwY0fnfS+o75qaLs7rAyLR6SdS821iEZfNXwODrkR8aohli
	ZtW8tT2C7uSrRPRESU/tpdX+5pfL6cMOYmgejHUzPbr462K4X4MHvuRflaY7FQ==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xEPJM-004haR-0E;
	Wed, 07 Oct 2026 12:55:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 07 Oct 2026 12:55:52 +0200
Subject: [PATCH 07/11] arm: socfpga: agilex5: enable xload for bl33
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261007-socfpga-agilex5-xload-v1-7-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_035559_927414_D17871D5 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  If SSBL loading is configured, barebox shall prefer the SSBL
    over the running FSBL. This may be surprising, if the FSBL is updated, but
    since the SSBL is probably easier to update, preferring the SSBL is probably
    the more useful behavior. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 211E6201EFE
X-Stat-Signature: bdaj7drjjujuy3wwgkh38xpae5bu6acz

If SSBL loading is configured, barebox shall prefer the SSBL over the
running FSBL.

This may be surprising, if the FSBL is updated, but since the SSBL is
probably easier to update, preferring the SSBL is probably the more
useful behavior.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/atf.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
index 4bf13a464657..6d036d20d4b6 100644
--- a/arch/arm/mach-socfpga/atf.c
+++ b/arch/arm/mach-socfpga/atf.c
@@ -58,6 +58,10 @@ static void agilex5_load_bl33(struct pbl_bio *bio, void *bl33)
 {
 	int ret;
 
+	ret = agilex5_xload_bl33(bio, bl33);
+	if (ret == 0)
+		return;
+
 	ret = agilex5_load_bl33_piggy(bl33);
 	if (ret == 0)
 		return;

-- 
2.47.3



