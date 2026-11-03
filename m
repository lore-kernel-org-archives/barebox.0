Delivery-date: Tue, 03 Nov 2026 14:18:37 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOEPM-006nww-31
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 14:18:37 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A30C7201CE0
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 14:18:32 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="lBKR/14X";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=YbrXy2f6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793711913;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Ym1ufjGKTZZckZQ8PgmqEQq8cn7UVy385wZreHSPWK0=;
	b=JvLvgTfAyA4hvn5GYx7IuZ/gap5ZkUFSiB0IaaerQgGX9wp/f1A1p3xkRegE+EqPog01kV
	29MDGai+ImSKxXk7smzLMkFh8AIegKhadvX6JhfJ0TnNwdBa1DltZ7+6nGDpbUjkMSVBIy
	7NrE1vOxLEWenaiiTjkFxp/pjJEsDd3jA5iHq4gFsOR6ZjduWS5a45PjC+KkjYcmOedSRk
	ktEqAzbIjV4NR5ikL1Y9xl0NptAPu5DVrMZ2gIRcRq6T7cCAu1lxciIWlPS/kChR+r1v/5
	128zrx3vfVGbz6WVrIzLNG7hZGmuyEB3hub6UEJWbZC4GhUspdxaJWxmqiQPqg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="lBKR/14X";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=YbrXy2f6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793711913; a=rsa-sha256;
	cv=pass;
	b=WnJk2sNQyYKG4ww0BhCVaUMFDQBrlVdtmHBRMRmWI/LQqUYk9pSxhfi+n5XI30BeQdGYZZ
	4gFRV7iRNQRhTvXwDuX6Zd2SM6uVT9DMT6mRASRrwk6aTSYUwKBBxViFEGdvT2hISFliGT
	9GFB24NtEu1odZwuTeV/TW5TVfWbKpw6s/hykspFFszh4GlqWNAvRmk5gj9U81EmsZb27w
	yLBrWWiG10shMCwygHZWKupY8ahRkDe/U3k9Z3M30+JI+9pMI5hUCX1eZ4khWKaB8m3+vL
	yGpQElh+IMnZiYD28HzGxWHoWwPoKFamnUQ21SFpFGMetDCpXzJYArIXtWpFzw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Ym1ufjGKTZZckZQ8PgmqEQq8cn7UVy385wZreHSPWK0=; b=lBKR/14X3R09Ob
	zXPOIM30tuLf8e8hcXTLBpsoysrSt8TK/D9PNJQj614+KkWUIVDLmRwvN63CWy0OZQdq438xvXLGk
	jln92Bf1l3QMVZvSWVsp+f8Wr3TL1RwMqAKWZ6dbvl9v1r/TmcpMA0kp7RYeT9kDM3bDNVvrNMinb
	DhKiZ1VimNz8oZQBBHI6uDhYza6aNnIISmU3j7ikC+PFMG1ePf+uAFIBDCQMq3btdTsi9SnP23sv5
	xaJES6KGbdHmyMWLwNWU4Ju8yvN96yvWiacnm3ytQojMpOpavRQ3LHXej7DhxfdT4j5vWPXyJnGsm
	YxC2yoFD2gcviuZZZ2CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOENu-00000002WBR-0zBZ;
	Tue, 03 Nov 2026 13:17:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOENq-00000002W9h-35lZ
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 13:17:04 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E3BBB202BA0;
	Tue, 03 Nov 2026 14:16:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793711814;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ym1ufjGKTZZckZQ8PgmqEQq8cn7UVy385wZreHSPWK0=;
	b=YbrXy2f64ohlgrb+H6ahdFUM+AUQ16ZpUf4Vy5MF2ecFuVvK9GgFwW6BS3fVdlDXsbNaQJ
	HzP/FWyq6/mivRbHKaIW8Qhorms9ia6KUKLtNcK5RITUMtKzADUyeQp6Y40IfkUROnnuAK
	CG8S2k31XNr0JbZUQa4huRLFEwQTeJJYNIMbguCGUbyWz/wrQEOP39kK8hH7axN7my39un
	rF8pSHlAF75sUk7LkmOT5efA4pGj+sLt/Ftfsqk18EeclIIGVq1LU4xUh+TPX1atJzIUXU
	BPg1jxpgO8zbBcS9os1nKp3mgKKkCtzyjL2Yklxbve6SbAbMoVWWeLFvuxKPQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793711814;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ym1ufjGKTZZckZQ8PgmqEQq8cn7UVy385wZreHSPWK0=;
	b=YpAEA8MAFYMyG1d0t30N8wnFa65pW9IgnB28sQofc7PosAH3svXtB/93mUfqrGRnJWojMA
	uEv6hiaDJhsoag+1BElg+hvusCzvaMDS7Doyp2UMSFQJZMQsNUt7X3x2rtkOSs9CBzkcc2
	YyFezrhMHhltW33sF57tzbWOP9RPd2+DLiEjfYt27/ruy5nMj5MI+l792sEQv1W//t+ta1
	qW/UPcxj1IWoOBHhfsSw7g7+G0miEVXMtQ0KPZoePsR7A09Isgs8KD/qaRqf9dFuz2zDIB
	UBhyW7T6Eov43Ae7Zm3s3wlytB+So9jj+NfAJ0WaM9rNkcxGD2mYj1h8zN0OEg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793711814; a=rsa-sha256;
	cv=none;
	b=NWeWRNjcC999zmz4ijRnyr3p+fVGFh5kINQJL7gOJ4U+DRZCud3i7DEW8+GBOOAEPmY0ML
	+gNLm1pil6ASNzStb4xSetFBgEZ9euKHYwdVig3QswGiGoDpxm/eHnGi5Uq/ouRe6ZeNer
	W62f96iOOZLqe8y9TBp4MwSdv49l/+jCvaEWDEcf7uyDDdFTs4FTZ7b/8KPECWhklComsq
	BPo4B7+WkpIJAY60YWWD/RjwePkFDPjmCX508iRe6dj210isf4uQEWCI7P2EjAz7pbJ0rk
	TwzzpeC64uTaCIeof2luvwh9X2Xh9sSz06UYAyEuVB0JV7Yvwpr735K5ZtMfLw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id C518B741157;
	Tue, 03 Nov 2026 14:16:54 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/2] habv4: drop cache maintenance around HAB SiP calls
Date: Tue,  3 Nov 2026 14:16:09 +0100
Message-ID: <20261103131652.663786-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261103131652.663786-1-a.fatoum@pengutronix.de>
References: <20261103131652.663786-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_051702_951727_42094573 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> On i.MX8M, barebox
    runs in non-secure EL2 and queries the HAB status and, except on i.MX8MQ,
    the HAB events via SMC. So far, we cleaned and invalidated the caller's variables
    before the SMC and only i [...] 
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A30C7201CE0
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: ac54976b8hkrwquwmsobqm5am5kypmai

From: Ahmad Fatoum <a.fatoum@barebox.org>

On i.MX8M, barebox runs in non-secure EL2 and queries the HAB status and,
except on i.MX8MQ, the HAB events via SMC. So far, we cleaned and
invalidated the caller's variables before the SMC and only invalidated
them afterwards.

TF-A doesn't do any cache maintenance itself on the buffers and the
BootROM doesn't do any either: The BootROM disables the MMU it had setup
and cleans and invalidates the D-cache before jumping to the boot image.

The results are thus written through TF-A's mapping of DRAM
(SCTLR_EL3.{M,C} = 1, MT_MEMORY | MT_RW | MT_NS), i.e. Normal
Write-Back, Inner Shareable, Non-secure, and may still be dirty in the
cache when the SMC returns. Now that barebox maps normal memory the same
way, no maintenance is needed at all and no alignment requirements exist
for buffers.

Dropping the cache maintenance also fixes a bug: The invalidate after
the SMC was wrong, as it may discard updates not yet cleaned from the
cache, such as unrelated stack data in the same lines.

This was not observed to cause issues thus far, presumably because the
Cortex-A53 on the i.MX8M cleans dirty lines on DC IVAC when invalidating
them[1].

So let's drop the maintenance. With the MMU disabled, our accesses would
be Device-nGnRnE and need it again, so make HABV4 depend on MMU for
ARMv8 systems instead.

[1]: Arm DDI 0500J, Cortex-A53 TRM, 6.2.4 Data cache maintenance
     considerations, 6-3

Fixes: 6c4d5bb5acfe ("i.MX: HABv4: implement interface for i.MX8MQ")
Fixes: 3177ed294444 ("habv4: use hab rom implementation of report_event")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
While a fix, I am not in a hurry to get this merged. next is fine to get
some more testing.
---
 arch/arm/mach-imx/Kconfig |  2 +-
 drivers/hab/habv4.c       | 33 ++-------------------------------
 2 files changed, 3 insertions(+), 32 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5a5931f1a33d..0910eaa439c8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -907,7 +907,7 @@ config HABV4
 	select HAB
 	select NVMEM
 	select IMX_OCOTP
-	depends on ARCH_IMX6 || ARCH_IMX8M
+	depends on ARCH_IMX6 || (ARCH_IMX8M && MMU)
 	help
 	  High Assurance Boot, as found on i.MX28/i.MX6/i.MX8M.
 
diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 83ee06a6aa46..e6244c96556e 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -7,16 +7,13 @@
 
 #define pr_fmt(fmt)  "HABv4: " fmt
 
-#include <common.h>
 #include <hab.h>
 #include <init.h>
 #include <types.h>
 #include <mmu.h>
-#include <dma.h>
 #include <zero_page.h>
 #include <linux/sizes.h>
 #include <linux/arm-smccc.h>
-#include <asm/cache.h>
 
 #include <mach/imx/generic.h>
 #include <mach/imx/imx8mq.h>
@@ -196,24 +193,10 @@ static enum hab_status hab_sip_report_event(enum hab_status status,
 {
 	struct arm_smccc_res res;
 
-	v8_flush_dcache_range((unsigned long)bytes,
-			      (unsigned long)bytes + sizeof(*bytes));
-
-	if (event)
-		v8_flush_dcache_range((unsigned long)event,
-				      (unsigned long)event + *bytes);
-
 	arm_smccc_smc(FSL_SIP_HAB, FSL_SIP_HAB_REPORT_EVENT,
 		      (unsigned long)index, (unsigned long)event,
 		      (unsigned long)bytes, 0, 0, 0, &res);
 
-	v8_inv_dcache_range((unsigned long)bytes,
-			    (unsigned long)bytes + sizeof(*bytes));
-
-	if (event)
-		v8_inv_dcache_range((unsigned long)event,
-				    (unsigned long)event + *bytes);
-
 	return (enum hab_status)res.a0;
 }
 
@@ -222,22 +205,10 @@ static enum hab_status hab_sip_report_status(enum hab_config *config,
 {
 	struct arm_smccc_res res;
 
-	if (state)
-		v8_flush_dcache_range((unsigned long)state,
-				      (unsigned long)state + sizeof(*config));
-	if (config)
-		v8_flush_dcache_range((unsigned long)config,
-				      (unsigned long)config + sizeof(*state));
-
 	arm_smccc_smc(FSL_SIP_HAB, FSL_SIP_HAB_REPORT_STATUS,
 		      (unsigned long) config,
 		      (unsigned long) state, 0, 0, 0, 0, &res);
-	if (state)
-		v8_inv_dcache_range((unsigned long)state,
-				    (unsigned long)state + sizeof(*config));
-	if (config)
-		v8_inv_dcache_range((unsigned long)config,
-				    (unsigned long)config + sizeof(*state));
+
 	return (enum hab_status)res.a0;
 }
 
@@ -587,7 +558,7 @@ static uint8_t *hab_get_event(const struct habv4_rvt *rvt, int index, size_t *le
 	if (err != HAB_STATUS_SUCCESS)
 		return NULL;
 
-	buf = dma_alloc(*len);
+	buf = malloc(*len);
 	if (!buf)
 		return NULL;
 
-- 
2.47.3



