Delivery-date: Tue, 18 May 2021 11:18:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1livrn-0003dB-HW
	for lore@lore.pengutronix.de; Tue, 18 May 2021 11:18:19 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1livrm-00062a-LP
	for lore@pengutronix.de; Tue, 18 May 2021 11:18:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S3IrtVsB1zNSl3LSo3N8dDFzQydv6a07F0CJtNHBz1U=; b=CtcGGd8O7jKZ3a
	yPpU0r0WjUSPLKoB4lZ/LZ6GgGKxBLg1rIaky1psR4bXbHfslgvOoCbVJQ4MJQTNBbrklboXpCMse
	umyqPhypbhZXEpjZOlHOhbdYaCEfwKM1qEvI2oWHTZ+cCTTtIMLVSLAfe9lUHYiop7H0JyQFYwVOv
	vdyzawKKZtbSCqVDIQzdLxU39o38Skm3TPNr67Do22w7w3tSvmQtJ1ipBzByLRlmQpQyXgx3UBn8d
	3u6Ygl8r8zCIdGbZ46szUQnI0Dmq7/KI5wYJLsVle5i94OK1ZAClmOmyctJqXHecqMbNYxqvp/PKG
	EuPajAZ/29b4GVVKALXg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1livqY-0005rv-5S; Tue, 18 May 2021 09:17:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1livqR-0005rF-RB
 for barebox@desiato.infradead.org; Tue, 18 May 2021 09:16:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=6QX1KmRuWEtch0sYVR2jwHgGwxeAdpdmPqhIRqQEhaY=; b=oPdykWg8jKq1IXvsn/2q2h2vKO
 1+UGI/2YUdRy5Pl6gmg5yV434it7VlMnYhf3SxHLQVzja/csCGui2ut08+8xI2QYQJBhm3JqUeufY
 FthEyZiZL6ehtvCRnp2vIQp1thEETRG/mWiG/H0dLExDQvaDoYBtwLXWsPYzcqyVNrUBg9X3zPOQI
 RdHmwgOCIYsuJO6YqFIHiJhemdc3UzGNhaILtZrXQoahFMXt5fL9PmfNyGu4TumleSl3n1ymd6mQB
 cmDVmRqloeN+mlXpRsj+tmmG1gCb8/0QTBtXmVVI6Bj5eH9CB++Yt8jwjim3wr/ejbuniTHOgSrj2
 5QTHxILw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1livqP-00EV3q-DM
 for barebox@lists.infradead.org; Tue, 18 May 2021 09:16:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1livqM-0005oQ-4t; Tue, 18 May 2021 11:16:50 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1livqK-0001QZ-R9; Tue, 18 May 2021 11:16:48 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 18 May 2021 11:16:44 +0200
Message-Id: <20210518091644.2519581-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_021653_474970_A62E3586 
X-CRM114-Status: GOOD (  10.17  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arm/mvebu: sync barebox-arm-head.h to generic variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RW4gcGFzc2FudCB0aGlzIGFkZHMgc3VwcG9ydCBmb3IgUEJMX0JSRUFLLiBXaGlsZSB0aGVyZSBp
cyBubyA2NCBiaXQKc3VwcG9ydCBhdmFpbGFibGUgZm9yIG12ZWJ1LCBrZWVwaW5nIHRoZSBkaWZm
ZXJlbmNlIGJldHdlZW4KYXJjaC9hcm0vbWFjaC1tdmVidS9pbmNsdWRlL21hY2gvYmFyZWJveC1h
cm0taGVhZC5oIGFuZAphcmNoL2FybS9pbmNsdWRlL2FzbS9iYXJlYm94LWFybS1oZWFkLmggbWlu
aW1hbCBpcyBhIGdvb2QgdGhpbmcuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIC4uLi9pbmNsdWRlL21hY2gvYmFy
ZWJveC1hcm0taGVhZC5oICAgICAgICAgICB8IDI0ICsrKysrKysrKysrKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1t
dmVidS9pbmNsdWRlL21hY2gvYmFyZWJveC1hcm0taGVhZC5oIGIvYXJjaC9hcm0vbWFjaC1tdmVi
dS9pbmNsdWRlL21hY2gvYmFyZWJveC1hcm0taGVhZC5oCmluZGV4IDMwMzVmNDBkZGYzYi4uMTA2
NjM1ZTZmYzY0IDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLW12ZWJ1L2luY2x1ZGUvbWFjaC9i
YXJlYm94LWFybS1oZWFkLmgKKysrIGIvYXJjaC9hcm0vbWFjaC1tdmVidS9pbmNsdWRlL21hY2gv
YmFyZWJveC1hcm0taGVhZC5oCkBAIC00LDYgKzQsNyBAQAogc3RhdGljIGlubGluZSB2b2lkIF9f
YmFyZWJveF9hcm1faGVhZCh2b2lkKQogewogCV9fYXNtX18gX192b2xhdGlsZV9fICgKKyNpZmRl
ZiBDT05GSUdfQ1BVXzMyCiAjaWZkZWYgQ09ORklHX1RIVU1CMl9CQVJFQk9YCiAJCSIuYXJtXG4i
CiAJCSJhZHIgcjksIDFmICsgMVxuIgpAQCAtMjMsMTEgKzI0LDIzIEBAIHN0YXRpYyBpbmxpbmUg
dm9pZCBfX2JhcmVib3hfYXJtX2hlYWQodm9pZCkKIAkJIjE6IGIgMWJcbiIKIAkJIjE6IGIgMWJc
biIKIAkJIjE6IGIgMWJcbiIKKyNlbmRpZgorI2Vsc2UKKwkJImIgMmZcbiIKKwkJIm5vcFxuIgor
CQkibm9wXG4iCisJCSJub3BcbiIKKwkJIm5vcFxuIgorCQkibm9wXG4iCiAjZW5kaWYKIAkJIi5h
c2NpeiBcImJhcmVib3hcIlxuIgorI2lmZGVmIENPTkZJR19DUFVfMzIKIAkJIi53b3JkIF90ZXh0
XG4iCQkJCS8qIHRleHQgYmFzZS4gSWYgY29waWVkIHRoZXJlLAogCQkJCQkJCSAqIGJhcmVib3gg
Y2FuIHNraXAgcmVsb2NhdGlvbgogCQkJCQkJCSAqLworI2Vsc2UKKwkJIi53b3JkIDB4ZmZmZmZm
ZmZcbiIKKyNlbmRpZgogCQkiLndvcmQgX2JhcmVib3hfaW1hZ2Vfc2l6ZVxuIgkJLyogaW1hZ2Ug
c2l6ZSB0byBjb3B5ICovCiAKIAkJLyoKQEAgLTQyLDYgKzU1LDE3IEBAIHN0YXRpYyBpbmxpbmUg
dm9pZCBfX2JhcmVib3hfYXJtX2hlYWQodm9pZCkKIAkJIi53b3JkIDB4NTU1NTU1NTVcbiIKIAkJ
Ii5lbmRyXG4iCiAJCSIyOlxuIgorI2lmZGVmIENPTkZJR19QQkxfQlJFQUsKKyNpZmRlZiBDT05G
SUdfQ1BVX1Y4CisJCSJicmsgIzE3XG4iCisjZWxzZQorCQkiYmtwdCAjMTdcbiIKKyNlbmRpZgor
CQkibm9wXG4iCisjZWxzZQorCQkibm9wXG4iCisJCSJub3BcbiIKKyNlbmRpZgogCSk7CiB9CiAK
LS0gCjIuMzAuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

