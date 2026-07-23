Delivery-date: Thu, 23 Jul 2026 16:02:11 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wmu03-001zCF-0a
	for lore@lore.pengutronix.de;
	Thu, 23 Jul 2026 16:02:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 908B2202887
	for <lore@pengutronix.de>; Thu, 23 Jul 2026 16:02:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sTBwulbM;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=lJzJS8BD;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=80IE3yotiD5QWhTNpe5bPibOlsHS7eOzX+G6KFq9J9M=; b=sTBwulbMc0ybYOUbZ/B7dWumgz
	7eUtw7NHayPcbXkOTVsgtB7cOLukLftFWBs9yCN/KIQqzPfbUx4Kvf0uhgnsCNsnKCmUstYpYwaRe
	2Eo9q3nF4RtUNzpWd2sLYfCtAN8yeWlmq9Diu9QaicL5V6Vzwp75Ss7YPZ7f6Cu4JiGaNTsyM/jEx
	3GjIX6ZnfVJ/PaRhhgiiIkycSXygDHEJ9++k8wLEXcr4LZyat68kHVMZEtlBpEESxaroy/4TF8jbM
	26lDT0dMuIMDz7uttneHA9ec57uKYE7WxONexWzkDQcn5CGU/Y+2kI8YeYbpuqx+Wh7klUk2qkx+O
	tSATOozg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvD-0000000EQQe-3VW9;
	Thu, 23 Jul 2026 13:57:11 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvA-0000000EQLb-3n0b
	for barebox@lists.infradead.org;
	Thu, 23 Jul 2026 13:57:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CE0E244EA1;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B391DC2BCC7;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784815028;
	bh=wdlDsjdXVefIWlOFLp1Nm6mDx03+eLpln0iii5A5ewI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=lJzJS8BDSseXkRYHrH2V/29QwlgDwK9tytezXZjbNsvNZQZ2N3vEd8euXOQ3dFPE4
	 urNqxkDtaLvHYFk44A7026vrdbwZZKaQ0XBg6R5eNRhrWvIlRhelWTs6admuP5snKO
	 q/faESCevhpoHhDo/FyjLC7uNMFMLhrSrqnfY3fsSMD9M9WB54HT6wu9/dnEDILNw+
	 P9cSkWqyNZvAqfm8rbw1u0zEeXaZ4Baep/EClyl9OIv7ZdF8a25+gVd3LogaZXggEL
	 DDI5yp8SerPDdLgF80wuVqOIf9NVs9F0GMOUGwr9NdM1jp/yPsxc6dp2lbOiTJtXAf
	 XqMxgITo+/pIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1829C531D4;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 23 Jul 2026 15:57:57 +0200
Subject: [PATCH 19/19] drivers: integrate USB/AHCI changes
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260723-rn102-rn104-series-v1-19-7698d25df866@gmail.com>
References: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
In-Reply-To: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784815061; l=699;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=QRd+hAbkI8LHuSICgMI0gxZ78VkZmA1gngAn6p04eys=;
 b=7Tx6ZXXurvBGJSddVsxNc7cVWHyr0UF/ipxVxBUUY7jHjjrPV6eGLtHIElezOar5mSOutpYmW
 Zq9bWBgziJYD1LLvCIQ7sMQCOb22SpK0jUkQArWXgy6gWFnT4pBWKdI
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[kernel.org:dkim,infradead.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 908B2202887
X-Rspamd-Server: mx1
X-Stat-Signature: nuzo9s7xahwzkeeyfi8cznk8doxcj5x8

From: Luca Lauro <famlauro93l@gmail.com>

---
 drivers/Kconfig  | 1 +
 drivers/Makefile | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 32910addcd..b1ba73887a 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -50,5 +50,6 @@ source "drivers/power/Kconfig"
 source "drivers/virtio/Kconfig"
 source "drivers/mailbox/Kconfig"
 source "drivers/tee/Kconfig"
+source "drivers/fan/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index db491dad83..4d6071fdc7 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -51,3 +51,4 @@ obj-$(CONFIG_SOUND) += sound/
 obj-y	+= virtio/
 obj-y	+= mailbox/
 obj-y	+= tee/
+obj-$(CONFIG_FAN) += fan/

-- 
2.47.3




