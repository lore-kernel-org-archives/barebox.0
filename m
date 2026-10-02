Delivery-date: Fri, 02 Oct 2026 13:28:11 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbQx-008p4a-2j
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:28:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 56B0B201F0C
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:28:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GXw0mUND;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=MAsHgAPZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790940491; a=rsa-sha256;
	cv=pass;
	b=cjJxeIp294uWq457pTP1DBjZRTfOyTA5i/xd4WfSH39N154UI1FB6Aa/j3T7ODrZyi9uv/
	KJ9BxbxdhJZxQNkqTUbFSlfJybpNUHMD3abvBE1fZ0xNxiNusvpcLrlUQpBIPyneJRAHhT
	p0uII+fUGLxcgp7xHG6JWxqg6PHrB/gIkUIb9xW/uXgsHW6PmSzY3irdcwjWbDvntSEJrO
	Ocl626G4cFgtg88K0nMmLewg+KMybS18RSVaZ9L9PUw+zM3TsTpzYQUciR+93iB1bBsKM5
	ZEZkH9wTj81taJUrV8f3TvjgqZovSjAUW8kWcF1Nm7UdD6eTah92AGd+pfMOwA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GXw0mUND;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=MAsHgAPZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940491;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=NIbC4+WqtvB89/3Qn71PR4Q4reBcsf3zhOndgPbMwhE=;
	b=fv9RqkjEBz3psm9ZCAz5VKlfkJfi/NhjEX8BT4/RBisl+39Z7Ttca4u8yhCNwOukZTFwwF
	EkIzxzN28Tw19Fkd6RStUid7SivT1o/UOF8zEQcKqFmhZbvS07aazSUZcmFpdUHyOCaB+u
	2LPtXoExPVZ5Y8sMBYrvEsAr09lT5jRSS1yA3EzDCrh8s8y0na2IkuDAnwMYPqWcpNVFdR
	NcEV7RL8n8e6DmNEoyyX2TvuQG8OLFtSHin5yqrCbQu5ZVIPmKcNqBN51F7ZnCSAil722b
	mCO6ZrZcnZL5O94pPZOvy/Sz6mKOxNdj16riNejp5Be9IQCuJRVsnsQeAxxg7Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NIbC4+WqtvB89/3Qn71PR4Q4reBcsf3zhOndgPbMwhE=; b=GXw0mUNDwyPHLg1hQPENmTPBpU
	BFPOY18+o23gh6cwa5Jalz/vPU85pN3mXQMSiW7fWyFO3uhDuRFOvExKKc/Qr6yEXjw+U1RLI06wq
	iEcOWY0FTPUXplXcqlAXFdOHP+JOhe3/A9NngzzKaWVbcku9x4PytQWnv31rXndX6BUUY56qs1YtT
	fkgIfnGLUR9hV3YQHnGGBib2BU8cbEQev76ptd3k8XvScyE18+mMNBRBoXsikinVvP2HuxDQaGYnq
	piZ8gieqbNFq6oab/v85J1OdG/CGbAXlqSyTppJFkU8VCrcH2F5bfRR8AsPydFo6XlSuElZJi7GlX
	M5WTb8UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbPo-0000000BTJy-442m;
	Fri, 02 Oct 2026 11:27:00 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbPj-0000000BTH2-1XFS
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:26:58 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 75FFC201C7E;
	Fri, 02 Oct 2026 13:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NIbC4+WqtvB89/3Qn71PR4Q4reBcsf3zhOndgPbMwhE=;
	b=MAsHgAPZ8IbNQDeZ12f4F95HMBb/CStGLT8sjdFfENNshtW1sN1els9z2ggCvYw8EGVfcp
	rqkmQsHeEdURqSb3BgcNAeUg+PniZkq8/PEa4bb7sy6JD6DEt1dvvsp9MPEaKJL/B4PpjX
	E9qiRw5DGGL6Fx6XFYlpY9yfrWXNhgyrumT+aaxi9rrH8CLtDXxIXsBF3iSkAVKkIUdp/D
	0kYyNdDVeejN/PSrADR8ixv86wZquhG4wMOnV8PztVr+iukJ60kK7iAfAXIDV6gK6WIsgJ
	M/5R3vWypug5fQl3GLsArJWnN1s6KHb2czP5Mz2KiQ6ad4667fxecfCQxGl9xQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790940413; a=rsa-sha256;
	cv=none;
	b=RFe8RgxrvVKPulq9uUycfxbA/5jvrT59s1sseMmbXRKVWIzxh81gQzsJVyt5kwSqhTDudS
	S3Y6z/G96ugwDdkG5bxA8++C9ra8e6vvHGPwqMspxk9GTrJfTuYm0jxdgo0yiV+ozkcmrV
	rVJCP58YgDfRA5SB8qjwKOZEZqGCEPU/O9/CNom42KNDHD8vWjTWGPWDG9YBnhR8GRaWab
	6QiTlns111bQhlu08iSxXrAGOabrOgqBWWbuzDpVTAFThHCh6Jl10N0iJQzRO9ws/b+O3H
	lqfHyXpudp9PTftDr2UMTn2ppaZuBNeZj/+KF5PJhQao0L3wgHDSqvrJgWDCcw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NIbC4+WqtvB89/3Qn71PR4Q4reBcsf3zhOndgPbMwhE=;
	b=dvYQi0FkLtpjVEv3plEcQMQOS7/eer5rZpWRiCfUhWBUM1vHAfOdfHTfoEw0QKye2elgsv
	JLz6RVKWubWmsW973uyrFpi/iln4qLcleGXAt/ZNia7c0GTeFtHMJl8g2EZewyXHJRtG7F
	lUCmkTTCy5uiLVuA7pBdCnM48lFLtBVjU+e+5fGTCwhBgWIbgA/aTvfu+xJq6qrXyeI19x
	em5Sb/xmE3bg0VunPiNeg9P4PfPG3e91cLjoC5HuJgFsHUsPL2/H7ENziDtSknVy2NzGH5
	/cnrx944RM65SVBcPZIeeRcTeMQk10F4fpBnfwYiVd5UWr+LeYUe/+42IBI1qQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 62E2D7415A1;
	Fri, 02 Oct 2026 13:26:53 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 3/4] amend! bootm: add fitimage command line to bootargs
Date: Fri,  2 Oct 2026 13:26:33 +0200
Message-ID: <20261002112648.2899729-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002112648.2899729-1-a.fatoum@pengutronix.de>
References: <20261002112648.2899729-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_042655_561250_E44A724C 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> bootm: add fitimage
    command line to bootargs Since FIT image specification v0.9, it is now possible
    to pass command line arguments for the next boot stage in FIT images. 
 
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
  0.0 T_PDS_OTHER_BAD_TLD    Untrustworthy TLDs
                             [URI: linux.bootargs.dyn.bootentries.fit]
                             [(fit)]
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
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 56B0B201F0C
X-Stat-Signature: swxwcia1eabgxnuhj3yzrupeyxzxb5j7

From: Ahmad Fatoum <a.fatoum@barebox.org>

bootm: add fitimage command line to bootargs

Since FIT image specification v0.9, it is now possible to pass command
line arguments for the next boot stage in FIT images.

Add parsing of the cmdline optional property when reading the fitimage.
Create a new bootm-scope global variable that will be appended to the
command line when CONFIG_FLEXIBLE_BOOTARGS is enabled.

Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Link: https://lore.barebox.org/20260924-add-cmdline-fitimage-v2-1-4a665e165002@bootlin.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
[ahmad: use LINUX_BOOTARGS_BOOTM_EARLY to fix bootargs order and cleanup]
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/bootm-fit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bootm-fit.c b/common/bootm-fit.c
index c7142f490fa5..f0a4c83f5950 100644
--- a/common/bootm-fit.c
+++ b/common/bootm-fit.c
@@ -108,7 +108,7 @@ static void bootm_fit_config_cmdline(struct device_node *config)
 	if (of_property_read_string(config, "cmdline", &cmdline))
 		return;
 
-	globalvar_add_simple("linux.bootargs.dyn.bootentries.fit", cmdline);
+	globalvar_add_simple(LINUX_BOOTARGS_BOOTM_EARLY "fit", cmdline);
 
 	pr_info("Using command line from FIT configuration: %s\n", cmdline);
 }
-- 
2.47.3



