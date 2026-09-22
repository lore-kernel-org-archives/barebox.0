Delivery-date: Tue, 22 Sep 2026 12:54:23 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x8y8l-0052EW-0E
	for lore@lore.pengutronix.de;
	Tue, 22 Sep 2026 12:54:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8996E200927
	for <lore@pengutronix.de>; Tue, 22 Sep 2026 12:54:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3eXv1wQU;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=aGgDvfMG;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AW3T68ow;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074462;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=mwMIlgk5RSiKwuAHNTCEixOLwNG/sxlH6D+LrKdursw=;
	b=JmjNh2BDoqAcQjoJJ4KPT6JJ23P1STuKP8DTZ9MQ+ie01SS1Oo1C7aYMggKjE85SsDYGyx
	4oO7mjRk32PVm/DEssmD0a0RZj+NXRbDk+el4iQ1CC4253J+UU4pxXUdw32aYdQVyyATgo
	eHWEWIYXghw0LR0JFuLIXfYKYA/VUsTXCTRBusHGc+z3UDyWOXLQ5feVQ1GkkIUK2lcRsJ
	JhsqKEUXxVXZTCxU6mugNz1Izg4m3skdrmJK9d+FwFbgnnIk2xFMtBUPBCdcgke8oEtDFC
	ENq/olY9KB2KJPulMVQ9CKPAu1OSEZ+5ILmYpz+MAjyegai+Q+Khz8BQeUfiVA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790074462; a=rsa-sha256;
	cv=pass;
	b=AD8fnISHKpCb/xaQBCv+z+osRiY7vwfdnqw25EucpzfT8J8/C19VG6Ie10vb/MRmLAxNzN
	bYaRF+zaPufCmm/x29h4AR3uVwLNQ7E1zh39pFM8Ul3hf/gHQutaP995Sj71b5Wo7uowGT
	9pbmXj7WySa4Z4e/v91YmXU6PiXP5rYXCcg1eDIx/aNB0x/she/RNG3KFnCyfqitwWAsaz
	ktz02MwBnden+nLAp9716ygRbOi0Zv9secpTuVV2TRbX+9l0gV9j0aLS6NVz7CyyJbFB9o
	3QR4PMm5ZlMWLqGmu75r47Gu1C1EXS3A5jCcIvl70zZ8heqJaxfuYe8Dx/XrMg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3eXv1wQU;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=aGgDvfMG;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AW3T68ow;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mwMIlgk5RSiKwuAHNTCEixOLwNG/sxlH6D+LrKdursw=; b=3eXv1wQUJxO1bVoSdpUervzgT7
	GbBQz6o2Ou0lWjcL9AKCdZwinPVez7XZLBtU+JK/6efP6JFLPlUeLqyqa3oiIX9c3X8I+0pP7UPZZ
	E7gplTBw6/r7CRtptaj7/fVQ9XduI6FFU5AlQGeb3UURmF4TUSx3OlNg/33qDXxcRGESMByL5bWsV
	XxVXMNgeCBFDsF/VbhbcgIW9TGCcX1j/FkhHgfIum4DShgJ80CY9DB511SGq8VRZDvqYeK4wi0+vY
	uMCNoN65kfWl9LnM3dRNLHdNwpriz3sy/xx5UTAjxH0MT+mF5Wm7MNrmZGj1eHg3eigfdBmfzpnjS
	PDLZdM8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y7f-00000005766-1mVb;
	Tue, 22 Sep 2026 10:53:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y7d-0000000575l-3zEY
	for barebox@bombadil.infradead.org;
	Tue, 22 Sep 2026 10:53:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=mwMIlgk5RSiKwuAHNTCEixOLwNG/sxlH6D+LrKdursw=; b=aGgDvfMG1TtFw+NL+pKcIO2PFp
	2DD+jjwlek/j+kWVRXjfrjG8QMejz2zY00Ujt2h07hUW41EfZyZJiqNzp15t4sHFj9ebFp9bbd054
	K54GhUp+gWQz6HQkDLT5nvCyYa8zRLh/Wa/N6wFmoIeRqJjLzfp4RciX1hw2lvireMpotoum5Ns8Y
	R0YxITvAff4DCyJRCW2H33ouLGJk8nDfTdRSNgRbUeSrsWIqaL0wHb4Xofe/4X8DT2HXcPWC/OFW+
	TZVVFjAVNxGzYGC12A1MCneMoSXv4owdn9g9EupH76Dw8WRT8kG7XrKHSTgfCO9RfkKZjVVaEk/oz
	tsyQLT2g==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8y7a-0000000DSl8-06IB
	for barebox@lists.infradead.org;
	Tue, 22 Sep 2026 10:53:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id F3F28201F07;
	Tue, 22 Sep 2026 12:53:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074389;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=mwMIlgk5RSiKwuAHNTCEixOLwNG/sxlH6D+LrKdursw=;
	b=AW3T68owFMfIHSbp1chP2OF72ARaeT8P2RPLtmzNgQn9AA4ESnrrprX8huznBlRQmo1BLc
	4Fx40HLD3qL/vsESUUeEctjl2Fwxq8T4uI8y3Vj7XYjuaxv973R4Y8YB+WzUgr/i2ZaRnV
	6cqro4SvgVq/RQBL3XlDVPO03I/Y08lxhIoT4kKD89dQLW0KrD3ZJ4z5kED1V9r35HazvX
	x75G8hdTZuKd31t3qdqyrl8Xhp44C9fyZUCxxgTuikgh6D4KNCm8P77SP2BXgEaKHslT3v
	MhY9ISu7jkza5JHx4/3kJNlTdbtjxrvSIjMcamUKYDwH9nj4aKptmkPXNNN+dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074388;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=mwMIlgk5RSiKwuAHNTCEixOLwNG/sxlH6D+LrKdursw=;
	b=Fl6yOQfHyM/j8LpTfMlEycUjpxEzeNMSifpZzn6s0ASX0KX9EHvWFgZ4yp9Zb/L32YG73n
	PH+VtB0y4Ocf+WayoTa0+vwzC5FUh786H2orXQttt5r3eAY4TBml8d1whdphC3pLOAc76B
	xemGmKN2SSYAiuoaVF9oR5IUFW+y4jY9Pl4/ZmDwrUCbns6hBCQqGV+GfwbIyhtXoI7mg0
	PI3jSpPzMKLyBVUKkks4Yoz1feiTgmxBGfV1HsgKwzNVxMCKNkVom67J8bHhWYItLJT9FU
	5eNl5E1d48Qk9hEW+anB6e9sm2kmhrcuQjsS7gMGbpObp0EdAe8Ref8/1Xe1+w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790074389; a=rsa-sha256;
	cv=none;
	b=UJhxYOrfBsZOgDZCWbHgTjm5ni5UQw4o2QVY0bs4j0wIjJJJDJM6NzF0JRaSEZHPh08IrJ
	ncrGtvz+AoqPSMEJUTCxkH0EITu3o38DoQl0t+M7r5mMZ/NVMybtzS3mwT46oMcukDxniR
	ov3DjLCultM0jCNU1Vaxu7UUDFbBMcvDfW7+Agj2ync3PLyZGf8J9ldBV4Ma0Rd0Tvx3T8
	pwRYwSUbm3eZ3xlYc/9aLJ30VgfiTiphn1Sr5xJnPe5v4jihDitp4d7bpiqe+ZEhlDkQ01
	2uLLc3C52aU6XUr1iB7fshS7aXi2B5dunRWvB817Fbvzrq9O8v0Jrcwf02oMjw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y7Y-002DTR-2y;
	Tue, 22 Sep 2026 12:53:08 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y7Z-00000001cqw-1Pew;
	Tue, 22 Sep 2026 12:53:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 1/2] sandbox: route malloc_usable_size() through the PBL glue again
Date: Tue, 22 Sep 2026 12:53:02 +0200
Message-ID: <20260922105308.386749-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_115311_244675_B3FCFECF 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Everything in SANDBOX_PBL2PROPER_GLUE_SYMS is #defined to
   a barebox_ prefixed name in barebox proper, so calls end up at our wrappers
    instead of directly in the host libc directly. malloc_usable_size lost its
    prefix when sandbox was migrated to PBL, which becomes quickly apparent if
    it's called with a ZERO_SIZE_PTR: The barebox wrapper rejects it, while the
    host allocator will c [...] 
 
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
	RCVD_IN_DNSWL_MED(-0.80)[2a0a:edc0:0:c01:1d::a2:received,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
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
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 8996E200927
X-Stat-Signature: cqnxgo3zm9br4sw1ia3xpa4eqqedqs1g

Everything in SANDBOX_PBL2PROPER_GLUE_SYMS is #defined to a barebox_
prefixed name in barebox proper, so calls end up at our wrappers
instead of directly in the host libc directly.

malloc_usable_size lost its prefix when sandbox was migrated to PBL,
which becomes quickly apparent if it's called with a ZERO_SIZE_PTR:
The barebox wrapper rejects it, while the host allocator will choke on
it under ASAN:

  AddressSanitizer: attempting to call malloc_usable_size() for pointer
  which is not owned: 0x000000000010

Fixes: 2aba0017c95a ("sandbox: switch to using PBL")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index c8f5ae8c8986..9490a1ae4b35 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -33,7 +33,8 @@ TEXT_BASE = $(CONFIG_TEXT_BASE)
 
 SANDBOX_PBL2PROPER_GLUE_SYMS := \
 	putchar errno setjmp longjmp \
-	malloc_stats memalign malloc free realloc calloc memleak_check brk sbrk
+	malloc_stats memalign malloc free realloc calloc malloc_usable_size \
+	memleak_check brk sbrk
 
 KBUILD_CFLAGS += $(foreach s,$(SANDBOX_PBL2PROPER_GLUE_SYMS),-D$(s)=barebox_$(s))
 
-- 
2.47.3



