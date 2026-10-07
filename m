Delivery-date: Wed, 07 Oct 2026 08:03:01 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEKk1-00ApFk-1W
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 08:03:01 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E9F9B201E69
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 08:03:00 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Ko6b3Ee9;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=casper.20170209 header.b=MUtx5zgl;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=VFUpiIBA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791352981; a=rsa-sha256;
	cv=none;
	b=g8DDcea4raFDMOJ2CMEcPo5LVVkOoEKIrSqffatBptfsVxCUqDsZdKmeq2pZz0PqYpjVBB
	K+6rYD3/hs1lXtwsysBigF13MWqh4iAm3TjtVcuR8Eia9SiXtFBCNlK+NhBasS38GMKQtb
	5QSDl6CFv60vn2C5Xno0rIKu0K4dH4XVw5jAT0bk03fP8dZWvcOQJBuB7oHXA2xPCjNg6Y
	MnrSxDeGNF9PG611N8R8uMFRVwcHbpwbh6Qp4j5OUiv2l5jX4ZLpjnQ0qjeKAPjA16oqF4
	rT7uc0pZBf3Khq6G6J3ZtAEC0fl7PHxUnLAm0c91H7FfcmRQDEM2zAfVDcXG2g==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Ko6b3Ee9;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=casper.20170209 header.b=MUtx5zgl;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=VFUpiIBA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791352981;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=E4CiSO42WfuSgEICuaiWuK0Inen7o/FWIAKpvZj1sbM=;
	b=YGV37EGCxfNVSbq0hi6sXqX4kg4Obc9maG+BvrnSdUzSEjTzo8jwFWSaITdmltfqHpyUH1
	xSgo5TKDhfKixHexCcxve3EOkR+I4H/KQON6wpqgDedbtBrtJOGlSrz5jjF9fiAnS06yoq
	Vp79MIdr9sD3p0fIrVy/yEOt98bt5gZAAOkGqp9UetygXnuvUlcVabWPoQK9BRFhGDjbNX
	HY7jKvN3brA8biBFFaz3UfxdfkZfJlsUr9opn6TsnPerKPNWrT7Xd1UJYTLOr6PPXz7lpU
	tBhJQ2k4zWKS0z/tIzcecpDJuCsrmjYmdZ+Q+CTOKwtOc+XrZztG6IJJOrdLFA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E4CiSO42WfuSgEICuaiWuK0Inen7o/FWIAKpvZj1sbM=; b=Ko6b3Ee9rN9oCvVH4gnZwSnv/V
	TMK5ScRyS3SyYEyAjzbncUAP45MXCACuefWQah9snK+IIdY0cMs93vClv8JZRV1221ZgQTHeZgNK4
	v9cOpgXHPJCHJzBo6T6xfJu5RUgSCF4nmB5CcPsAAjKRjlj0Aje5n/IxjCLtIAmPKiqvfyuIQRElP
	JF1e9zoZBIMjrPTP/pF/uBkVE3z7jz79dEAp/ifBPFrmb0WfZIva7a3MNfN74/d9CMKnp0jCVHA/U
	YXa2+moDTFISjohsnOZ4kTSG2BmanLwpfIOQ3hvf897wD90g4UF6/7l2rdFCCUki/9eZpn26UM4hF
	Jf7954Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEKiW-00000001kAy-1hmN;
	Wed, 07 Oct 2026 06:01:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEKiU-00000001kA8-0Md6
	for barebox@bombadil.infradead.org;
	Wed, 07 Oct 2026 06:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=E4CiSO42WfuSgEICuaiWuK0Inen7o/FWIAKpvZj1sbM=; b=MUtx5zglswu2qOvTAUuUqlevra
	xpsBrp51AL1cBH0QO6LQO6DieDDYxYGA1wK4XMXvQSH8nEJnvfauHxlzwSThoMoWl+U8gW2xtF7hs
	wbYA44CbOS/Or7hmjGgIrXHObkmI9AkAd6sYVpl2jtpAwmkicbJf+HKnjPuGSf7AoMztIj+oDkxxW
	X9uJxFfxB0dM0gJNOiXYiUIKV+W120U43pR1v9ORS+k3GwHFrROZ3cRfnv7fgj4l3izt3tahouK6Q
	oBaUbGBICbVL1C/FDM2xUfRwxIjeD7GTg87XIX9FYB7mDBVSI4GrYicxtwgL5bBfnV00gBUFZHoeU
	4ESNNWLg==;
Received: from cp2.siel.si ([46.19.12.180])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEKiP-0000000Fnme-1qo5
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 06:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Unsubscribe-Post:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=E4CiSO42WfuSgEICuaiWuK0Inen7o/FWIAKpvZj1sbM=; b=VFUpiIBANjwV2B7AOt8mmKqsAE
	o4J25wXQnIXvCvuuNlWGJq4szAHtthp9YstJ0pTpplXUTQ2oapX5F2evrnHUY3WFv29rhA66jEjQr
	nFpLlhRKYBgLJVTYr2LQmADBmRaJIdNrA2fuwQuunow6OYcASqFSAYqt6NI+hoXJb4CdlfRBKx3JL
	xEgCAnfa6/d2V7sE4D/4BY3826ddAgK0AL063IAO2po1XylVR9l7cSthjkwr0XjDgw41EWrFZ5XXh
	3z3RtPHGDUeJsm1cCHyKzoPOQXl0JcF6uHASi38ldvVCyrfdh6SsD6YK2t214F3DavEfo2tnrSYbt
	eZDpsT8A==;
Received: from 86-58-88-254.dynamic.telemach.net ([86.58.88.254]:25803 helo=florijan-nb..)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.100.1)
	(envelope-from <florijan.plohl@norik.com>)
	id 1xEKh5-000000090el-1Cfo;
	Wed, 07 Oct 2026 07:59:56 +0200
From: Florijan Plohl <florijan.plohl@norik.com>
To: s.hauer@pengutronix.de,
	barebox@lists.infradead.org
Cc: upstream@lists.phytec.de,
	a.fatoum@pengutronix.de
Subject: [RFC PATCH 2/2] ARM: boards: phytec-som-imx6: re-apply BSP environment after board defaultenv
Date: Wed,  7 Oct 2026 07:59:53 +0200
Message-ID: <20261007055953.1001705-3-florijan.plohl@norik.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261007055953.1001705-1-florijan.plohl@norik.com>
References: <20261007055953.1001705-1-florijan.plohl@norik.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp2.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cp2.siel.si: authenticated_id: florijan.plohl@norik.com
X-Authenticated-Sender: cp2.siel.si: florijan.plohl@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_070121_631206_0B7FDA7D 
X-CRM114-Status: UNSURE (   5.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 4.0.2 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1236::1:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_X_GMSV(0.00)[florijan.plohl@norik.com];
	HAS_X_AS(0.00)[florijan.plohl@norik.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[norik.com];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_X_ANTIABUSE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,norik.com:-];
	R_DKIM_REJECT(0.00)[infradead.org:s=casper.20170209,norik.com:s=default];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	HAS_X_SOURCE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E9F9B201E69
X-Stat-Signature: p36s1uxjr9y7m77ww9rmxcc5mouo3wec

From: Primoz Fiser <primoz.fiser@norik.com>

physom_imx6_probe() appends the board's own defaultenv-physom-imx6*
directories via defaultenv_append_directory(). Since commit 7f1cc5dd869d
("defaultenv: add base and external defaultenv in pure_initcall") moved
the Kconfig/BSP-supplied environment (CONFIG_DEFAULT_ENVIRONMENT_PATH)
to an early pure_initcall, this probe - which runs later - now wins any
path collision against it.

For this board that silently shadows the per-machine environment a
Yocto BSP supplies via DEFAULT_ENVIRONMENT_PATH (e.g. meta-phytec's
env_add()-generated boot scripts) with the board's own, much older,
generic defaultenv-physom-imx6* content, without any build failure or
warning to indicate it.

Call the new defaultenv_append_external() after the board-specific
appends so the BSP-supplied environment, when actually provided, takes
final precedence again - restoring the pre-7f1cc5dd869d behavior for
this board. Standalone (non-Yocto) builds without a
DEFAULT_ENVIRONMENT_PATH are unaffected, and the board's own
defaultenv-physom-imx6* directories remain as the fallback for that
case.

Fixes: 7f1cc5dd869d ("defaultenv: add base and external defaultenv in pure_initcall")
Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
---
 arch/arm/boards/phytec-som-imx6/board.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 7e6f61bc36..7f59f8864b 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -276,6 +276,18 @@ static int physom_imx6_probe(struct device *dev)
 		defaultenv_append_directory(defaultenv_physom_imx6ul_phycore);
 	}
 
+	/*
+	 * Since barebox commit 7f1cc5dd869d ("defaultenv: add base and
+	 * external defaultenv in pure_initcall"), the Kconfig/BSP-supplied
+	 * environment (CONFIG_DEFAULT_ENVIRONMENT_PATH, i.e. Yocto's
+	 * env_add()-generated content) is appended very early and no longer
+	 * automatically wins over the board-specific defaultenv-physom-imx6*
+	 * directories appended above. Re-append it here so it takes final
+	 * precedence again when it is actually supplied (standalone/non-Yocto
+	 * builds without DEFAULT_ENVIRONMENT_PATH content are unaffected).
+	 */
+	defaultenv_append_external();
+
 	return 0;
 }
 
-- 
2.43.0



