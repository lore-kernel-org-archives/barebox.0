Delivery-date: Fri, 20 Nov 2026 10:55:32 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xULL9-001PL2-2T
	for lore@lore.pengutronix.de;
	Fri, 20 Nov 2026 10:55:32 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 291E3205B33
	for <lore@pengutronix.de>; Fri, 20 Nov 2026 10:55:32 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1M3oP75E;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795168532;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=oxUZf7jjlr1hiVJLHeYWc5GBnHD0dmJyo5GVdVYDSuQ=;
	b=WU4aejkGldR3xzG2M+fYB9bHG+msho4C/Au2p7G221Mz3LLd8RHxbe7bsh88jJIXqEcY0L
	GC6r5rC52pJL9DZVR5TQPhweAckTmZtYaZCj1pzXIn522x4retyhUAn1L9L3Wt+sIdSGZ9
	l2laY842ZdwQK0KcmSuK+g0gR4gHctxL/39J83/ECbitJ6pUW7TLs6M0a0r0gxYO2wGo7e
	qh+x0Pi2arspNnwpnk2zND4OsZyRMPZU1kG8OvuLirHRVfU+780dQyP7xn8Bcrn5VwTIhs
	vqtkZ+37aAWsRfrrrcJhdCTzVdrrKtb2fqdaKGGM+Kz+A/ule35znu9dIky61w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795168532; a=rsa-sha256;
	cv=none;
	b=GaUSNCrdiSl/RqlnvK4iTruOXgy23eg+H3F1Lh5X4pYFU0ghOgfRYIF8279flURKsljgFH
	uEcrm3+fb7gA76VIMv3l4sKspjUSvaT5OwDHLFcLBewADGEx5h/9+Iz1WyApTCQ811shIT
	BSRz6iUkfAFLks5i00uS8KZSvu0UbAfGIx2keGwm2BNIfqoMT7y0AXXjHHb1bhw5pTKqf/
	TRMTopm7ySQh+7Yk5AZxWllp9ygWWHxrssVCOzuoVHxeIniNlcfDjoNzQta6Pt+XU4+YcU
	t8QyWXr3I8TmcpI3WOFekbXD6aCDPsscGtpm7ztqhu0+sJYU5pfY/3jWnXfVfA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1M3oP75E;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=oxUZf7jjlr1hiVJLHeYWc5GBnHD0dmJyo5GVdVYDSuQ=; b=1M3oP75EGLGEmyM0tvroeV1fEp
	njuuQNN/oMmKGkovnMLEq9Lzn+0S+9klcq5nlNg23St1saLZLk6pZUDDXNgZ14P/EyI7v97sAD+FM
	S7si6/aq8Mgau3G30K0NC8NupoS6jbEPu3KIcpiD5XEL5D4VFvFGSeId5luDEUuaAvaJ88NjENrhn
	3sRW/AL8lS7uFXVGYTd5XvcsuXO07T/DjzztBVy3mRy/yma+fmV7Jktx9uldn4FS5S/7gg1JOeFnW
	z5o7NFzsrwfGNRTeM466TD/jVIbRaavRQjY+40FLMEhQFOJEwdtbJAmCeE4lH0xpGEiYtKAwD0u3l
	kCRu5QjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xULJx-0000000EWyN-2mG0;
	Fri, 20 Nov 2026 09:54:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xULJt-0000000EWx8-2TAm
	for barebox@lists.infradead.org;
	Fri, 20 Nov 2026 09:54:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xULJr-0003hZ-0V; Fri, 20 Nov 2026 10:54:11 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master] net: dhcp: mark interface up before resolving TFTP server name
Date: Fri, 20 Nov 2026 10:54:08 +0100
Message-ID: <20261120095410.258131-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_015413_624652_8B46E308 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When the DHCP server sends option 66 (TFTP server name) with
    a hostname instead of an IP address, dhcp_set_result() calls resolv() to
   look it up. Since commit f0624a7015 ("net: Do not route traffic to [...] 
 
 Content analysis details:   (-1.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.7 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.9 DMARC_NONE             DMARC none policy
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
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:2:b01:1d::104:received];
	DMARC_POLICY_SOFTFAIL(0.10)[barebox.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 291E3205B33
X-Rspamd-Server: mx1
X-Stat-Signature: cru13wkb3ek8zasu9qiofrcz7z87so4y

When the DHCP server sends option 66 (TFTP server name) with a hostname
instead of an IP address, dhcp_set_result() calls resolv() to look it
up. Since commit f0624a7015 ("net: Do not route traffic to interfaces
that are not up"), net_route() skips interfaces whose ifup flag is not
set, but dhcp() only sets that flag after dhcp_set_result() returns.

Fix this by mark the interface up in dhcp_set_result() once address,
netmask, gateway and nameserver are configured, right before resolving.

Fixes: f0624a7015 ("net: Do not route traffic to interfaces that are not up")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 net/dhcp.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index f3bb1d76ea9a..a66d06a473ba 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -630,6 +630,8 @@ int dhcp_set_result(struct eth_device *edev, struct dhcp_result *res)
 	if (res->domainname)
 		net_set_domainname(res->domainname);
 
+	edev->ifup = true;
+
 	if (res->tftp_server_name) {
 		IPaddr_t ip;
 
@@ -672,9 +674,6 @@ int dhcp(struct eth_device *edev, const struct dhcp_req_param *param)
 
 	dhcp_result_free(res);
 
-	if (!ret)
-		edev->ifup = true;
-
 	return ret;
 }
 
-- 
2.47.3



