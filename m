Delivery-date: Fri, 10 Jun 2022 09:13:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzYpq-009mDV-DX
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 09:13:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzYpn-000407-Ge
	for lore@pengutronix.de; Fri, 10 Jun 2022 09:13:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7MBCqjhvLhV/8PoUPoNSAZpxKsEMVDdJwM4Fb0nkH7w=; b=Z1FLtcuOEzF9Ba
	/erKibVvHKX1MkKq2qKL3M9mOtED9HpCxTab4uK90A6wI8j56XOlyuPlwsAr2EbFhy8IQ7ePXwQpX
	1MU5fNEsLXZqOZjKXUKJKRAMJTMWjRYI3n6wc58NBjznfo7C7HxGcp/Y4IrdcZ4qXtjPwcdruKM0g
	X9Y3A5LDWFZqVbqDrh6iC1hiFIccbuwd5B+VQFP2YFyypRPIPUbnvsHdB5pVwtcnMhQp3SBRDv/QC
	/FFmV0BlKx5f2rJEdFpPJ0GY2KljoS6nOUASW4wtfwKzfJ4mmXInSyTYu582KTDKLNOf0vh5aTxki
	PZ/CIq7rsk1yYi6zsbjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzYoR-006MBd-4g; Fri, 10 Jun 2022 07:12:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzYoI-006MAA-Ng
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 07:12:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzYoG-0003pj-IR; Fri, 10 Jun 2022 09:11:56 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzYoH-007XDs-7V; Fri, 10 Jun 2022 09:11:55 +0200
Received: from ukl by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzYoF-00BugX-6b; Fri, 10 Jun 2022 09:11:55 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 10 Jun 2022 09:11:43 +0200
Message-Id: <20220610071143.2832473-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_001158_804718_910A5121 
X-CRM114-Status: GOOD (  11.08  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX7/8M: Fix boot source detection on i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gaS5NWDhNUCB0aGUgaW5kaWNhdG9yIGZvciBzZXJpYWwgYm9vdCBpcyAxNCwgd2hpY2ggaXMg
ZGlmZmVyZW50IGZyb20KdGhlIHZhbHVlIGZvdW5kIGZvciBpLk1YOE1NLiBTbyBjb25zaWRlciAx
NCBhcyBzZXJpYWwgYm9vdCwgdG9vIGFuZApkb2N1bWVudCB0aGUgbWFjaGluZXMgd2hlcmUgdGhl
IHJlc3BlY3RpdmUgdmFsdWVzIGFyZSBmb3VuZC4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogYXJjaC9hcm0vbWFj
aC1pbXgvYm9vdC5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWlteC9ib290LmMgYi9hcmNo
L2FybS9tYWNoLWlteC9ib290LmMKaW5kZXggNjUyZTI4NjlmMmQ3Li5kMTJhY2IwNzE1ZjYgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYworKysgYi9hcmNoL2FybS9tYWNoLWlt
eC9ib290LmMKQEAgLTUyMiw3ICs1MjIsOCBAQCBzdGF0aWMgdm9pZCBfX2lteDdfZ2V0X2Jvb3Rf
c291cmNlKGVudW0gYm9vdHNvdXJjZSAqc3JjLCBpbnQgKmluc3RhbmNlLAogCWNhc2UgNToKIAkJ
KnNyYyA9IEJPT1RTT1VSQ0VfTk9SOwogCQlicmVhazsKLQljYXNlIDE1OgorCWNhc2UgMTQ6IC8q
IG9ic2VydmVkIG9uIGkuTVg4TVAgZm9yIFVTQiAic2VyaWFsIiBib290aW5nICovCisJY2FzZSAx
NTogLyogb2JzZXJ2ZWQgb24gaS5NWDhNTSBmb3IgVVNCICJzZXJpYWwiIGJvb3RpbmcgKi8KIAkJ
KnNyYyA9IEJPT1RTT1VSQ0VfU0VSSUFMOwogCQlicmVhazsKIAlkZWZhdWx0OgoKYmFzZS1jb21t
aXQ6IDZhM2Y5ZWQxZjVjNTU5NTdiMmVkNGY0NjA5NTUyODE1MzllOGU3ODUKcHJlcmVxdWlzaXRl
LXBhdGNoLWlkOiBiNDJkYzlmNGNjMTY4MDcxMzgwOTg1YjUyYjU4MWMxYTEyOThmMzAzCi0tIAoy
LjMwLjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

