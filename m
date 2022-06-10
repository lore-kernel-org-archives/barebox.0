Delivery-date: Fri, 10 Jun 2022 18:53:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzhsc-00A9LF-1M
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 18:53:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzhsa-0002uq-HR
	for lore@pengutronix.de; Fri, 10 Jun 2022 18:53:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BvWcQnVNe/TwOKMN362ZG4TtaTVFHaimWDny7CvQx1M=; b=Zwx2zaLrp5dlhl
	R0H+dzVIFWypUrnmCRJfN94S+2Nmt332I17qzISCTLB8eY/s0J5iHt9RAk7FDx3G5Q+GAiOiI8KgI
	lqo++DCsjrtBT/NiBSUWYDgUk2OAbDmFxJsuITzKTm8BExB+vHKTemynf21iz9rKdRhId/NP+Spaa
	0LAtwY9nt1UklM3e2eZ+l5zMnjhbnSLQHDSl8YLkeqBowIz/R9LuX0cNc36erN89HlQysuvOxADhe
	+tQrCOfg8sfnWb6bBZM+o+CC4a5sByuqc7M9MhjixN7nsAzomy8ui9j8U7FMqJOejkVOvzuc/mW7I
	WKsovtmFFfn/utZ8e6QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzhqr-0090bw-M6; Fri, 10 Jun 2022 16:51:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzhqm-0090aj-I5
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 16:51:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzhqi-0002df-DZ; Fri, 10 Jun 2022 18:51:04 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzhqj-007c5Y-2a; Fri, 10 Jun 2022 18:51:03 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzhqg-00FR60-RJ; Fri, 10 Jun 2022 18:51:02 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?J=C3=BCrgen=20Borleis?= <jbe@pengutronix.de>
Date: Fri, 10 Jun 2022 18:50:57 +0200
Message-Id: <20220610165057.86722-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1516; h=from:subject; bh=HFQ84+NDGTUZVdNk+3Z8saBkRHinFxL/GpdfBAPHYgE=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBio3ZuMmA5weO91Z+9shAHKfFohmeNVynPWyimBv5a K89Y5HCJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYqN2bgAKCRDB/BR4rcrsCXduB/ 95iFUVYPID5jVpHGtS1k3wk3BWjCZ20fRa/jqQcgrmoGArh/vM+WyhPH7uiN9nP4H9TvSM1npGX9ye a5OKoUT+oJuf+5BTxl7slnbzBbTrZi3G99JR4H7AmO915UFBjtjzp6Q5NuPVHXYMXud7SrGXgQVUMY DkLUCYZy1bILPhsC0UOzmmsHU/cCl85sn4IO+N275Ai5M/F+KEzOYEZu8yaL1PYdC6fexEOQOjsJD6 1b5jVSFpN95Vc7u7x/eh4RAZkKJFn7OJUwUtJVZ4+ebrkIMc2obQqoRvzspCVksIR3TEEckXn5E1XQ v8RdzX4IPoHbHbJVGtgawGavZB16cY
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_095108_637726_3EC0E1E4 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH] ARM: i.MX: Make sure *_get_boot_source always assignes *src
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Q2FsbGVycyBvZiAqX2dldF9ib290X3NvdXJjZSAoZS5nLiBzdGFydF9hdGYoKSBvZgpueHAtaW14
OG1tLWV2ayBvciBwcm90b25pYy1pbXg4bSkgZXhwZWN0IHNyYyB0byBob2xkIHRoZSBib290c291
cmNlCmFmdGVyIHJldHVybi4gU28gYXNzaWduIGEgdmFsdWUgYWxzbyBmb3IgdGhlICJ1bmtub3du
IiBjYXNlLgoKRml4ZXM6IGVhNTU3NzAzMDhjMCAoIkFSTTogaS5NWDogQWRkIGkuTVg3IGJhc2Ug
YXJjaGl0ZWN0dXJlIHN1cHBvcnQiKQpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGFyY2gvYXJtL21hY2gtaW14L2Jv
b3QuYyB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYyBiL2FyY2gvYXJtL21hY2gtaW14L2Jvb3Qu
YwppbmRleCA2M2FmZGYxZWY0ZWQuLjFiMGJjY2I3ZmVkOCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0v
bWFjaC1pbXgvYm9vdC5jCisrKyBiL2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYwpAQCAtMjg1LDYg
KzI4NSw4IEBAIHZvaWQgaW14NTNfZ2V0X2Jvb3Rfc291cmNlKGVudW0gYm9vdHNvdXJjZSAqc3Jj
LCBpbnQgKmluc3RhbmNlKQogCWRlZmF1bHQ6CiAJCWlmIChpbXg1M19ib290c291cmNlX25hbmQo
Y2ZnMSkpCiAJCQkqc3JjID0gQk9PVFNPVVJDRV9OQU5EOworCQllbHNlCisJCQkqc3JjID0gQk9P
VFNPVVJDRV9VTktOT1dOOwogCQlicmVhazsKIAl9CiAKQEAgLTQ2NCw2ICs0NjYsOCBAQCB2b2lk
IGlteDZfZ2V0X2Jvb3Rfc291cmNlKGVudW0gYm9vdHNvdXJjZSAqc3JjLCBpbnQgKmluc3RhbmNl
KQogCWRlZmF1bHQ6CiAJCWlmIChpbXg1M19ib290c291cmNlX25hbmQoYm9vdG1vZGUpKQogCQkJ
KnNyYyA9IEJPT1RTT1VSQ0VfTkFORDsKKwkJZWxzZQorCQkJKnNyYyA9IEJPT1RTT1VSQ0VfVU5L
Tk9XTjsKIAkJYnJlYWs7CiAJfQogfQpAQCAtNTI2LDYgKzUzMCw3IEBAIHN0YXRpYyB2b2lkIF9f
aW14N19nZXRfYm9vdF9zb3VyY2UoZW51bSBib290c291cmNlICpzcmMsIGludCAqaW5zdGFuY2Us
CiAJCSpzcmMgPSBCT09UU09VUkNFX1NFUklBTDsKIAkJYnJlYWs7CiAJZGVmYXVsdDoKKwkJKnNy
YyA9IEJPT1RTT1VSQ0VfVU5LTk9XTjsKIAkJYnJlYWs7CiAJfQogfQpAQCAtNjI5LDYgKzYzNCw4
IEBAIHZvaWQgdmY2MTBfZ2V0X2Jvb3Rfc291cmNlKGVudW0gYm9vdHNvdXJjZSAqc3JjLCBpbnQg
Kmluc3RhbmNlKQogCWRlZmF1bHQ6CiAJCWlmIChpbXg1M19ib290c291cmNlX25hbmQoc2JtcjEp
KQogCQkJKnNyYyA9IEJPT1RTT1VSQ0VfTkFORDsKKwkJZWxzZQorCQkJKnNyYyA9IEJPT1RTT1VS
Q0VfVU5LTk9XTjsKIAkJYnJlYWs7CiAJfQogfQoKYmFzZS1jb21taXQ6IDM0NWVmNTlhYTBlYTFh
OTMxNjI5MTg3NDQ5ZjYzODc2NTAxNzUyY2QKLS0gCjIuMzYuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK

