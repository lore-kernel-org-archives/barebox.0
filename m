Delivery-date: Tue, 22 Jun 2021 18:20:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvj84-0006yR-Rl
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 18:20:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvj83-0005fG-Pt
	for lore@pengutronix.de; Tue, 22 Jun 2021 18:20:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ItmN1mAqowCYSlB1ocJrUYlmdYpygubPjVU2mAVC4MU=; b=ua1PzIdXrLu4sH
	XlBYt1YCFk0FiSamPGjmyaYzRgaWq+nAJeyh+sx95aav2kRW0tGK6G0hl9mOHZzLgUG9FFqL2dN/F
	DdH5jwN9VxB6qrZhxUz1BoLG3zVXwnanilGJ6ddNlfLuOnTTqoXZWFc3WXVvlS64sUyzppFeRfSd7
	p2GvwxqMmbNcsmVUMoRVp//h2dVOfPxo+m6snkvqyDbty8pR37u88gvEaLc8X330WT2+41uNQ4gUw
	ECCl1G7DsYbsSfeReL39dZ9g92MZidVshyWwv+ECV4iB1xcZBjFbqSFaguSyjIr84sdS3UbNLaRLl
	QogqtIpvRGKm/iJ4NvvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvj6U-007sFx-UO; Tue, 22 Jun 2021 16:18:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvj6P-007sFL-Gq
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 16:18:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lvj6L-0005QK-Fv; Tue, 22 Jun 2021 18:18:13 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lvj6L-0006kO-6U; Tue, 22 Jun 2021 18:18:13 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Jun 2021 18:18:11 +0200
Message-Id: <20210622161811.146333-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_091817_605547_ACA0F5A2 
X-CRM114-Status: GOOD (  11.12  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] w1: Replace license and copyright boilerplate by SPDX
 identifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Q29udmVydHMgdGhlIGZpbGVzIHRoYXQgbGljZW5zZWNoZWNrIGNhbiBkZXRlcm1pbmUgdG8gYmUg
bGljZW5zZWQgdW5kZXIKR1BMLTIuMC1vbmx5IG9yIEdQTC0yLjAtb3ItbGF0ZXIgYW5kIGFsc28g
Y29udmVydCB0aGVpciBjb3B5cmlnaHQKc3RhdGVtZW50cyB0byBTUERYLgoKU2lnbmVkLW9mZi1i
eTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0t
CiBkcml2ZXJzL3cxL21hc3RlcnMvdzEtZ3Bpby5jICB8IDE1ICsrKysrLS0tLS0tLS0tLQogZHJp
dmVycy93MS9zbGF2ZXMvdzFfZHMyNDMxLmMgfCAxMCArKysrLS0tLS0tCiBkcml2ZXJzL3cxL3Ns
YXZlcy93MV9kczI0MzMuYyB8IDEyICsrKystLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAxMyBp
bnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3cxL21h
c3RlcnMvdzEtZ3Bpby5jIGIvZHJpdmVycy93MS9tYXN0ZXJzL3cxLWdwaW8uYwppbmRleCA5MTYw
MjdlYTg3YjIuLjhmMmY3NzJjNmUxNyAxMDA2NDQKLS0tIGEvZHJpdmVycy93MS9tYXN0ZXJzL3cx
LWdwaW8uYworKysgYi9kcml2ZXJzL3cxL21hc3RlcnMvdzEtZ3Bpby5jCkBAIC0xLDEzICsxLDgg
QEAKLS8qCi0gKiB3MS1ncGlvIC0gR1BJTyB3MSBidXMgbWFzdGVyIGRyaXZlcgotICoKLSAqIENv
cHlyaWdodCAoQykgMjAwNyBWaWxsZSBTeXJqYWxhIDxzeXJqYWxhQHNjaS5maT4KLSAqIENvcHly
aWdodCAoYykgMjAxMiBKZWFuLUNocmlzdG9waGUgUExBR05JT0wtVklMTEFSRCA8cGxhZ25pb2pA
amNyb3NvZnQuY29tPgotICoKLSAqIFRoaXMgcHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJlOyB5b3Ug
Y2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3IgbW9kaWZ5Ci0gKiBpdCB1bmRlciB0aGUgdGVybXMg
b2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIHZlcnNpb24gMgotICogYXMgcHVibGlz
aGVkIGJ5IHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb24uCi0gKi8KKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKKy8vIFNQRFgtRmlsZUNvcHlyaWdodFRleHQ6IDIw
MDcgVmlsbGUgU3lyamFsYSA8c3lyamFsYUBzY2kuZmk+CisvLyBTUERYLUZpbGVDb3B5cmlnaHRU
ZXh0OiAyMDEyIEplYW4tQ2hyaXN0b3BoZSBQTEFHTklPTC1WSUxMQVJEIDxwbGFnbmlvakBqY3Jv
c29mdC5jb20+CisKKy8qIHcxLWdwaW8gLSBHUElPIHcxIGJ1cyBtYXN0ZXIgZHJpdmVyICovCiAK
ICNpbmNsdWRlIDxjb21tb24uaD4KICNpbmNsdWRlIDxpbml0Lmg+CmRpZmYgLS1naXQgYS9kcml2
ZXJzL3cxL3NsYXZlcy93MV9kczI0MzEuYyBiL2RyaXZlcnMvdzEvc2xhdmVzL3cxX2RzMjQzMS5j
CmluZGV4IGFiMmNlZmZhNDI0NC4uOWE1ZjZiNWRhZTYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3cx
L3NsYXZlcy93MV9kczI0MzEuYworKysgYi9kcml2ZXJzL3cxL3NsYXZlcy93MV9kczI0MzEuYwpA
QCAtMSwxMyArMSwxMSBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25s
eQorLy8gU1BEWC1GaWxlQ29weXJpZ2h0VGV4dDogMjAwOCBCZXJuaGFyZCBXZWlyaWNoIDxiZXJu
aGFyZC53ZWlyaWNoQHJpZWRlbC5uZXQ+CisvLyBTUERYLUZpbGVDb3B5cmlnaHRUZXh0OiAyMDEy
IEplYW4tQ2hyaXN0b3BoZSBQTEFHTklPTC1WSUxMQVJEIDxwbGFnbmlvakBqY3Jvc29mdC5jb20+
CisKIC8qCiAgKiB3MV9kczI0MzEuYyAtIHcxIGZhbWlseSAyZCAoRFMyNDMxKSBkcml2ZXIKICAq
Ci0gKiBDb3B5cmlnaHQgKGMpIDIwMDggQmVybmhhcmQgV2VpcmljaCA8YmVybmhhcmQud2Vpcmlj
aEByaWVkZWwubmV0PgotICogQ29weXJpZ2h0IChjKSAyMDEyIEplYW4tQ2hyaXN0b3BoZSBQTEFH
TklPTC1WSUxMQVJEIDxwbGFnbmlvakBqY3Jvc29mdC5jb20+Ci0gKgogICogSGVhdmlseSBpbnNw
aXJlZCBieSB3MV9EUzI0MzMgZHJpdmVyIGZyb20gQmVuIEdhcmRuZXIgPGJnYXJkbmVyQHdhYnRl
Yy5jb20+Ci0gKgotICogVGhpcyBzb3VyY2UgY29kZSBpcyBsaWNlbnNlZCB1bmRlciB0aGUgR05V
IEdlbmVyYWwgUHVibGljIExpY2Vuc2UsCi0gKiBWZXJzaW9uIDIuIFNlZSB0aGUgZmlsZSBDT1BZ
SU5HIGZvciBtb3JlIGRldGFpbHMuCiAgKi8KIAogI2luY2x1ZGUgPGluaXQuaD4KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvdzEvc2xhdmVzL3cxX2RzMjQzMy5jIGIvZHJpdmVycy93MS9zbGF2ZXMvdzFf
ZHMyNDMzLmMKaW5kZXggYjI0ZmI1YjNiNWMzLi4wZTYyNjUzMGRiMmQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvdzEvc2xhdmVzL3cxX2RzMjQzMy5jCisrKyBiL2RyaXZlcnMvdzEvc2xhdmVzL3cxX2Rz
MjQzMy5jCkBAIC0xLDExICsxLDcgQEAKLS8qCi0gKgl3MV9kczI0MzMuYyAtIHcxIGZhbWlseSAy
MyAoRFMyNDMzKSBkcml2ZXIKLSAqCi0gKiBDb3B5cmlnaHQgKGMpIDIwMDUgQmVuIEdhcmRuZXIg
PGJnYXJkbmVyQHdhYnRlYy5jb20+Ci0gKgotICogVGhpcyBzb3VyY2UgY29kZSBpcyBsaWNlbnNl
ZCB1bmRlciB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UsCi0gKiBWZXJzaW9uIDIuIFNl
ZSB0aGUgZmlsZSBDT1BZSU5HIGZvciBtb3JlIGRldGFpbHMuCi0gKi8KKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKKy8vIFNQRFgtRmlsZUNvcHlyaWdodFRleHQ6IDIw
MDUgQmVuIEdhcmRuZXIgPGJnYXJkbmVyQHdhYnRlYy5jb20+CisKKy8qIHcxX2RzMjQzMy5jIC0g
dzEgZmFtaWx5IDIzIChEUzI0MzMpIGRyaXZlciAqLwogCiAjaW5jbHVkZSA8aW5pdC5oPgogI2lu
Y2x1ZGUgIi4uL3cxLmgiCi0tIAoyLjMwLjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==

