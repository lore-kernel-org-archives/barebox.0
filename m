Delivery-date: Wed, 07 Oct 2026 08:02:50 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEKjq-00ApF2-1l
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 08:02:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E32D9201E69
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 08:02:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MUbyMlly;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=casper.20170209 header.b=rHIJsPna;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=FEJ2uuof;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791352970; a=rsa-sha256;
	cv=none;
	b=JLN+z4B3tBYp1eWmlHt7F003GMPPF12DV09suplPCuoz/LdLYrFG8xipf9UsAcwZis57jj
	JwhnhnG3AEPNmCsj3SxX7eRyveiimx9u02Yl9ITwOpegc2z1XO9ekxrEJlofXt1KquoR78
	1PfUa74a9vePfrAdT//oRmlLGd7jdXdY/ENILCheihOfd10ClLZSc3HoHCCeWWRqa3wkSf
	7DEXT4cmnW24nh8vnXHeGNjZHdm77Gx3TiCV5wcMuwb2B+MSRKsCgyLkTrFmglpKsOPJpv
	uFGXAnDWGSEYAq7DQcn+A78eteKDER4UBb7/O2346EBAvN8C2c6Wn94ZRun9/Q==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MUbyMlly;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=casper.20170209 header.b=rHIJsPna;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=FEJ2uuof;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791352970;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=INceQCC+mQFmA1Xs09DV8qRy69vm7kr4cCEsJOtpCzo=;
	b=CKBMjYzOA8A7vOEfOuw76LbMmZIfa0jeMQ3M9DKnooTC05cYO2rPODl2ToRm0oMJlfID3e
	C+BsfZZ1IZVi9eXMFiiABaLta6qfNBZjRPvcAUA7sY0MMppRFixkDxN5n709MhaDocIctM
	nvyleSwCXgxuSizpLO/jIf3pWPpqRKdc1R4RO4+2mD3wKB5dvNpLRlyEVTsRzsAlIjbmkC
	eHdJCT+3gVPWx4nvkhRyAiVkaGC26WI+ltKxVcXmKP68/tmmVayE8VgsxtObBDQAqHhs9F
	S+GpJB8bVSA1lB/XMgl7kmmYR+NgoL8shM2QZpq/gzEpKdfW6NlKtR4zikwMiw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=INceQCC+mQFmA1Xs09DV8qRy69vm7kr4cCEsJOtpCzo=; b=MUbyMlly/RW0FUOMQMV2OZ80xV
	DfqFeXF3eMigA0bxASqgDdwRlBfTRMBo4fyP9YtbXqrl5IyYpElqlGL+pkAO9B9UhjEfnaJQeh2MX
	6fUwVsEP4BxfnNLI0vSeUgV3IHD/V7ujktvWkHp7m/asBq50dX0RjJM4cLM4IDRFSjDYamnsl0Bmt
	+7Bd1FBfHBgQzL5o8IbpR//zUSJQkmlXUbNDHQG9CKKbTRsa5HkTDyhcgWNmQlsVoT8vtO2g8SOSE
	TnMC0x3fvHwCmaaYBwQUmoKIJJkNo78l5LzTVPU/Msk37PiS7iAz9cWt921cVA8GXirV/hi2CLD1S
	EqpYUupQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEKiW-00000001kAe-0ctw;
	Wed, 07 Oct 2026 06:01:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEKiT-00000001kA7-1Jb1
	for barebox@bombadil.infradead.org;
	Wed, 07 Oct 2026 06:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=INceQCC+mQFmA1Xs09DV8qRy69vm7kr4cCEsJOtpCzo=; b=rHIJsPnajBSZfETygOYth8gIfk
	bWvvPyZ4l5U8k2OMx39Mlgxzx4gyLcRm2LbxAK1WUiuxJ+UzwiFZPoOdIUOL84bzjC3BTf177EA+f
	3M6B80zLw+USYptr3IT2O2d+uxjxgyLfybYCcnmDcKppWwDVjReonuPms9qCWEjDzmNv3DqTW+dmQ
	6hf5c1isi+OmJ57G4wHKTwqMrVQ03Ni5zD6lpOauUbSRdSWqsgDq3POTRfeqqc+qzWCLhWYCHa/Rr
	ebDKSrHqaqVOEu6Bna6oMsiVha5JTgAPMrod321WHv9PqjoXFXtW3c3k09b7xLeYJ2ZTOlkfAuFDM
	WFl14egg==;
Received: from cp2.siel.si ([46.19.12.180])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEKiP-0000000Fnmf-1zR1
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 06:01:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Unsubscribe-Post:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=INceQCC+mQFmA1Xs09DV8qRy69vm7kr4cCEsJOtpCzo=; b=FEJ2uuofkmianxzlkWlImZr8Sr
	J+XNYAe5HJ9tap+tiEXVF9IG9bLPTCkeNC+oCyZ7ia8ty2oH/29EnICkyxV70qhmyZ2WhJIGaWieL
	mhwANjSg2UnrrxkuD89JdoCObprT87y75KVxVjAQi9AvKSn7nFjjfz3zl1iRb71u85T0Qn//lvYDH
	8mZM1HvxYOnsUFXhIFi+PN9IOD7CBhRY0lb8va9CU3mMj8DI8bBBL4SMpkCYOIBYuDtBRnmM5clS0
	anKK4YETPG/tsXlkEkr6EqKRCdR7di5x420ZJGdkBSP0MqQaK3M9/+1n3bhQbxzMdz1n1OsN9VVZS
	2wt4bomA==;
Received: from 86-58-88-254.dynamic.telemach.net ([86.58.88.254]:25803 helo=florijan-nb..)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.100.1)
	(envelope-from <florijan.plohl@norik.com>)
	id 1xEKh4-000000090el-44oc;
	Wed, 07 Oct 2026 07:59:56 +0200
From: Florijan Plohl <florijan.plohl@norik.com>
To: s.hauer@pengutronix.de,
	barebox@lists.infradead.org
Cc: upstream@lists.phytec.de,
	a.fatoum@pengutronix.de
Subject: [RFC PATCH 1/2] defaultenv: add defaultenv_append_external() to re-apply BSP environment
Date: Wed,  7 Oct 2026 07:59:52 +0200
Message-ID: <20261007055953.1001705-2-florijan.plohl@norik.com>
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
X-CRM114-CacheID: sfid-20261007_070121_627175_E82B12C2 
X-CRM114-Status: UNSURE (   6.52  )
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
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1236::1:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_X_AS(0.00)[florijan.plohl@norik.com];
	HAS_X_GMSV(0.00)[florijan.plohl@norik.com];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[norik.com];
	FORGED_SENDER(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	DKIM_MIXED(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_NONE(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,norik.com:-];
	R_DKIM_REJECT(0.00)[infradead.org:s=casper.20170209,norik.com:s=default];
	FROM_NEQ_ENVFROM(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	HAS_X_SOURCE(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E32D9201E69
X-Stat-Signature: 1mtfi844eqm8onf59phnc347u3xe4hcm

From: Primoz Fiser <primoz.fiser@norik.com>

Since commit 7f1cc5dd869d ("defaultenv: add base and external
defaultenv in pure_initcall"), the Kconfig/BSP-supplied environment
(CONFIG_DEFAULT_ENVIRONMENT_PATH) is appended to the defaultenv list
once, very early, from a pure_initcall. Board code that appends its
own defaultenv directories later (e.g. from a postcore_platform_driver
probe, via defaultenv_append_directory()) now wins any path collision
against it, since defaultenv_append() is a plain list_add_tail() with
last-appended-wins semantics.

Boards that still want the BSP-supplied environment to take final
precedence over their own board-specific defaults (e.g. to keep a
board-level fallback environment for standalone/non-Yocto builds while
still letting a Yocto BSP's per-machine environment win when supplied)
have no way to reassert it after their own appends.

Add defaultenv_append_external(), a small wrapper that re-appends the
already-compiled-in BSP environment blob. Boards can call it after
their own defaultenv_append_directory() calls to restore the
pre-7f1cc5dd869d precedence where it matters.

Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
---
 defaultenv/defaultenv.c | 16 ++++++++++++++++
 include/envfs.h         |  5 +++++
 2 files changed, 21 insertions(+)

diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index 573b1f862f..626218477b 100644
--- a/defaultenv/defaultenv.c
+++ b/defaultenv/defaultenv.c
@@ -166,3 +166,19 @@ static int defaultenv_init(void)
 	return 0;
 }
 pure_initcall(defaultenv_init);
+
+/*
+ * defaultenv_init() (pure_initcall) already appends the Kconfig/BSP-supplied
+ * environment (DEFAULT_ENVIRONMENT_PATH) once, early. Boards that append
+ * their own board-specific defaultenv directories later (e.g. from a
+ * postcore_platform_driver probe) win any path collision, since
+ * defaultenv_append() is plain list_add_tail() / last-appended-wins.
+ * Call this after such board-specific appends to make the Kconfig/BSP
+ * environment win again instead - restores the pre-pure_initcall
+ * precedence for that board.
+ */
+void defaultenv_append_external(void)
+{
+	defaultenv_append((void *)default_environment,
+			default_environment_size, "defaultenv");
+}
diff --git a/include/envfs.h b/include/envfs.h
index 0c6b2e6815..a3b5a8bd98 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -134,6 +134,7 @@ static inline const char *of_env_get_device_alias_by_path(const char *of_path)
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 void defaultenv_append(void *buf, unsigned int size, const char *name);
 void defaultenv_append_runtime_directory(const char *srcdir);
+void defaultenv_append_external(void);
 int defaultenv_load(const char *dir, unsigned flags);
 #else
 static inline void defaultenv_append(void *buf, unsigned int size, const char *name)
@@ -144,6 +145,10 @@ static inline void defaultenv_append_runtime_directory(const char *srcdir)
 {
 }
 
+static inline void defaultenv_append_external(void)
+{
+}
+
 static inline int defaultenv_load(const char *dir, unsigned flags)
 {
 	return -ENOSYS;
-- 
2.43.0



