Delivery-date: Fri, 12 Mar 2021 14:31:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKhtN-0004We-Ft
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 14:31:49 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKhtM-0000rY-Kz
	for lore@pengutronix.de; Fri, 12 Mar 2021 14:31:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/nQe9qVdafxgA8luYZw2Q+fog0VokSPSmjbD1qYNJ5g=; b=qccjLCRn/j7Pun
	NkGkxwntR94uPz13G4Cq6Y0wyvbVrLfZR+K4wvjGKlbiGfe9sMzSJuQy90s7wJABcj5Q0steX/mAF
	LVCgVxlnjG1LNWlMt/2rCuacV6xnt6d7s/A9rTgY82YRLa+w9ZQMAQaP84YabM67qoBfa7CG57nYl
	hZfz6z1BzZgVJZaGcVVKW9jxrgL2QmYp2ysPkc7I8IGYVzEl+mWGGcp0rghca4y248nvV/7V2r0Nu
	XWoUIuSfpjygQdKXkSyCBmTCwt8lNjgWQDzHS6lhfXozofWPcm1v83cCqes9xlivz78+qkaCOdQx4
	x4jO6DdJYi23vyxMyRiA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKhsT-00BXCt-AS; Fri, 12 Mar 2021 13:30:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKhsL-00BXBz-EZ
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 13:30:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lKhsJ-0000cu-VC; Fri, 12 Mar 2021 14:30:43 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lKhsJ-000835-Kh; Fri, 12 Mar 2021 14:30:43 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 12 Mar 2021 14:30:30 +0100
Message-Id: <20210312133030.521569-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_133045_530869_6170AC4B 
X-CRM114-Status: UNSURE (   7.71  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] bcm283X: Select OF clock providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

VGhpcyBtYWtlcyBhdmFpbGFibGUgdGhlIGZpeGVkIGNsb2NrIG5lZWRlZCBvbiBycGkzIGZvciBV
U0IuCgpVU0Igc3RvcHBlZCB3b3JraW5nIHdoZW4gdGhlIGR3YyBkcml2ZXIgc3RhcnRlZCB0byBy
ZXF1aXJlIGFuIG90ZyBjbG9jay4KCkZpeGVzOiBmNzNjYTcwMWJiODUgKCJ1c2I6IGR3YzI6IGFk
ZCBjbGsgZGVwZW5kZW5jeSBmb3IgcHJvYmUgdmlhIG9mdHJlZSIpClNpZ25lZC1vZmYtYnk6IFV3
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogYXJj
aC9hcm0vS2NvbmZpZyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vS2NvbmZpZyBiL2FyY2gvYXJtL0tjb25maWcKaW5kZXggYWIwYmYw
MzAxMzFjLi5mOWJlOWQ0MmVjZmYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL0tjb25maWcKKysrIGIv
YXJjaC9hcm0vS2NvbmZpZwpAQCAtNDQsNiArNDQsNyBAQCBjb25maWcgQVJDSF9CQ00yODNYCiAJ
c2VsZWN0IEdQSU9MSUIKIAlzZWxlY3QgQ0xLREVWX0xPT0tVUAogCXNlbGVjdCBDT01NT05fQ0xL
CisJc2VsZWN0IENPTU1PTl9DTEtfT0ZfUFJPVklERVIKIAlzZWxlY3QgQ0xPQ0tTT1VSQ0VfQkNN
MjgzWAogCXNlbGVjdCBBUk1fQU1CQQogCXNlbGVjdCBIQVNfREVCVUdfTEwKLS0gCjIuMzAuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3gg
bWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

