Delivery-date: Fri, 27 Nov 2026 10:43:01 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWsTt-003mYG-1K
	for lore@lore.pengutronix.de;
	Fri, 27 Nov 2026 10:43:01 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DE764201AEF
	for <lore@pengutronix.de>; Fri, 27 Nov 2026 10:43:00 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=02LKGuv7;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=bWkUzvRX;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795772581;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=bLEY2EgSrwPnQliEy//pUAlIcf38JlMHgTZCbJugRd8=;
	b=KFN5/HmELfZJuYqeAELDdrQBDhg4mUXwbhExRfe1DkHs8GrlEwChF+3uciDDFaN3JbGbhL
	hMp16Jr3nJSwoiiJpqI5e4j0f8Y4kv+T54rBKvWg5QkE+Biz32KPlI9KEL16ZBOvP1W2PJ
	FpKNHTKAh5upsKfW/0Tn/lfDpx7J14mJCM5qE3nb5lngDoiVlNPSayP8gABTVz+KaMzPmz
	hJF2AeqsU82GfbtVoCxOVbQ4CMXT0jYcI9ZguPpb5aZ9UjC5eI1+7W15/68/c1kah3up2q
	5j4adr60MuXq7NlafnPqziexD1VNj3NSOeGW4g/t66+oljGJLQ//G6ZpGyVJXg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=02LKGuv7;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=bWkUzvRX;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795772581; a=rsa-sha256;
	cv=pass;
	b=C8TsJrr6cQEmLSXRZyqiB/6SpMFgimi0oEWK2oBGi3nUrgw1Smmwk3S+Jahf1OYa8QKSGG
	lA231wv4Udjwlcu6n7N1CAwnMs4S/9BBwJAoyJZMCtY1hntoBmgRdqtWSR19sQ4Mt7piuv
	SwhU1gS04R/9SyL9OWMjv6bhk4ItoPjlS0DqluO76w3icuswUHEMjCExkeEwAf84q02ldr
	5NYcnGUi0X82YMckksJyZHOLrEcQ4SmmfFWuSJiaXX8KMuQnvDL/gRprrxWkVgPAQAYIRh
	+JIMMy6VQVLO2tNwC/U+20utHTo2rJQKt++3XyYhVFw9TMd+dHzCFCLuvGJQDQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=bLEY2EgSrwPnQliEy//pUAlIcf38JlMHgTZCbJugRd8=; b=02LKGuv70NTHBn
	0YU2NC0kfQxoCVWZeP86ueaLp5P2MNamuUK6rCIGGFLCj8/XoL58KapioEUvG3jewNDQp/X5x+zfO
	4zS+U7Wj2Nri6uCiSnIYioXXc8OezC1FhR/jXszhdfH1W33sY2ndJC8aPF5esi3r1B94IIIAWt9re
	31RhIuBW86c4VNt8m32NudmErym5HJpZSF29Dmdn4zRmEyu5O8pzZVxxzUJIRlLVgX+xrVLT7x+F0
	cdAeWtn9fpROwHfzzar1MzHUvJGMPeUQife2FhGfxPbu2ftwcVMVpaCwKOjOBpIiYhToOiXA8Qsra
	RianhxhRQsZpDIguaoog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsT3-0000000FTB0-0a4B;
	Fri, 27 Nov 2026 09:42:09 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsSw-0000000FT6k-3YQU
	for barebox@lists.infradead.org;
	Fri, 27 Nov 2026 09:42:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DC80A205ABC;
	Fri, 27 Nov 2026 10:42:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795772520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bLEY2EgSrwPnQliEy//pUAlIcf38JlMHgTZCbJugRd8=;
	b=bWkUzvRX3ntkdH+he1iRuLpHNx4XqoIHYGPQMGt+LkTNzmwJBMDlq8BfMTzDuG8KFaAxaU
	DRwbtwWmq5az5ho+Jyrw1s/M3Y4jIqLexI5tx09KDllK/eC4xMqE44pFOIUJSwg2i+0oLM
	9/7DMPWcKF5O2GDVpdF+bhjSw96xz7t0QnlVtVrmjN1fRTQc0mtnSLuLBga+0/zJLsO3JU
	cSoDEYjFIpH4xEKobSlrYAELNELrCikcNOvW1f+k2QtCxSpsm3l4cfw2vRadIvQ4VSH1yH
	hnlUNFaGtsC0p1xpOLfP2A007WizM7ZXRk+je7edRak3rz4AwLencrlsFAEU/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795772520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bLEY2EgSrwPnQliEy//pUAlIcf38JlMHgTZCbJugRd8=;
	b=gIKWUN9TpHXDe+15fa13r4yUmw64ijnYJfFnLs4Qk2gSpuHjVam1+jK0UNzFA9reg2ATzB
	7IbLJQSyLWdkgPlrPtu6lF2rFIhiJAjCV29Ez+5gCdZmygMotHlTeLdtmHLRiy5kaVfWfH
	GcAdl7FeOHVdIs0SCL6qZJl0d6xXrIb5LgelIU9KX89EcpqgEyWnTMPPHQKyJ+sHSu5J9l
	W/xRwlKgw2atqH1nkcif0UCo2xQG3OLG/b/hzr9L41Jk9dzLLAADSDcqZXzu58C3hjENww
	9Kyd+e5Y1Mix+9LoCXOTIbzioDRusoZ6OniBEhut/PPozX4gq+LyGxgUzIJLaw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=f.diener@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795772520; a=rsa-sha256;
	cv=none;
	b=f3wQLYfO0KkzlCKKhgSDyYYyjgYzW6FFwYqm+hcYLi9lgMywDPICFIBLWU4oCOtPwMjRcH
	QGAzjSGQlEoqlMk3rZya7/5T8PNL28PPF1HTe7I4wWryK8o+CYKcQAENLLI0nzWycxIKlr
	afI8ZlKE04wstuPlRn+zJjT+kxM0ie/XX9gza8eDrV/NRMTeD0ej0W/JBLcH6KU06I0TgE
	vyX9NmBk0uRBVSxgWtYBYbYU4uDn7batzZtWMyU33spWX7zoNYsbV2W4Lgmjjinv+vhNmn
	+7BTnPzasGhyMaRKOUalqv2E/DTk6KfxmBjE4CmpvlTCfy4slBoODNLs4mU9AQ==
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.2])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <f.diener@pengutronix.de>)
	id 1xWsSu-001iwi-2c;
	Fri, 27 Nov 2026 10:42:00 +0100
From: Freimut Diener <f.diener@pengutronix.de>
Date: Fri, 27 Nov 2026 10:42:02 +0100
Subject: [PATCH 4/5] ddr: imx9: allow DDR PHY training errors to propagate
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261127-imx93-frdm-2cs-ddr-v1-4-64f5a99b3e4b@pengutronix.de>
References: <20261127-imx93-frdm-2cs-ddr-v1-0-64f5a99b3e4b@pengutronix.de>
In-Reply-To: <20261127-imx93-frdm-2cs-ddr-v1-0-64f5a99b3e4b@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Freimut Diener <f.diener@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_014203_041037_5CE72EC2 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The i.MX93 FRDM needs to try alternative DDR timings when
   PHY training fails. The shared training code currently hangs on failure, preventing
    the error from propagating to the caller. Allow the i.MX9 DDR controller
   to return -EINVAL on training failure while preserving the existing i.MX8M
    behavior. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
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
X-Stat-Signature: k8efq8wfmss658878thmirq38ux9kogi
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:900:1d::77:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER(0.00)[f.diener@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[f.diener@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: DE764201AEF

The i.MX93 FRDM needs to try alternative DDR timings when PHY training
fails. The shared training code currently hangs on failure, preventing
the error from propagating to the caller.

Allow the i.MX9 DDR controller to return -EINVAL on training failure
while preserving the existing i.MX8M behavior.

Keep imx93_ddr_init() fatal on training failure, as existing callers
ignore its return value. This allows a subsequent patch to implement
DDR timing selection using the lower-level initialization function.

Signed-off-by: Freimut Diener <f.diener@pengutronix.de>
---
 drivers/ddr/imx/ddrphy_utils.c  | 2 ++
 drivers/ddr/imx/imx9_ddr_init.c | 1 +
 include/soc/imx/ddr.h           | 1 +
 include/soc/imx9/ddr.h          | 6 +++++-
 4 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/ddr/imx/ddrphy_utils.c b/drivers/ddr/imx/ddrphy_utils.c
index fa88ab83a5..4f07dbb50c 100644
--- a/drivers/ddr/imx/ddrphy_utils.c
+++ b/drivers/ddr/imx/ddrphy_utils.c
@@ -93,6 +93,8 @@ int wait_ddrphy_training_complete(struct dram_controller *dram)
 		case PMC_TRAIN_SUCCESS:
 			return 0;
 		case PMC_TRAIN_FAIL:
+			if (dram->return_training_error)
+				return -EINVAL;
 			hang();
 		}
 	}
diff --git a/drivers/ddr/imx/imx9_ddr_init.c b/drivers/ddr/imx/imx9_ddr_init.c
index 086827d9b3..9163b289ce 100644
--- a/drivers/ddr/imx/imx9_ddr_init.c
+++ b/drivers/ddr/imx/imx9_ddr_init.c
@@ -619,6 +619,7 @@ struct dram_controller imx9_dram_controller = {
 	.phy_remap = ddrphy_addr_remap,
 	.get_trained_CDD = get_trained_CDD,
 	.set_dfi_clk = ddrphy_init_set_dfi_clk,
+	.return_training_error = true,
 };
 
 int imx9_ddr_init(struct dram_timing_info *dram_timing, enum dram_type dram_type)
diff --git a/include/soc/imx/ddr.h b/include/soc/imx/ddr.h
index 4039b8d6e6..cc91e0ed32 100644
--- a/include/soc/imx/ddr.h
+++ b/include/soc/imx/ddr.h
@@ -113,6 +113,7 @@ struct dram_controller {
 	void (*get_trained_CDD)(struct dram_controller *dram, u32 fsp);
 	void (*set_dfi_clk)(struct dram_controller *dram, unsigned int drate_mhz);
 	bool imx8m_ddr_old_spreadsheet;
+	bool return_training_error;
 };
 
 void ddr_get_firmware_lpddr4(void);
diff --git a/include/soc/imx9/ddr.h b/include/soc/imx9/ddr.h
index 6435ce9d6d..bb3864f8c6 100644
--- a/include/soc/imx9/ddr.h
+++ b/include/soc/imx9/ddr.h
@@ -1,6 +1,7 @@
 #ifndef __SOC_IMX9_DDR_H
 #define __SOC_IMX9_DDR_H
 
+#include <barebox.h>
 #include <io.h>
 #include <asm/types.h>
 #include <soc/imx/ddr.h>
@@ -12,7 +13,10 @@ static inline int imx93_ddr_init(struct dram_timing_info *dram_timing,
 {
 	ddr_get_firmware(dram_type);
 
-	return imx9_ddr_init(dram_timing, dram_type);
+	if (imx9_ddr_init(dram_timing, dram_type))
+		hang();
+
+	return 0;
 }
 
 #endif /* __SOC_IMX9_DDR_H */

-- 
2.56.0



