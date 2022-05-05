Delivery-date: Thu, 05 May 2022 10:11:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWZq-002V0F-Bx
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:11:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWZo-0001N2-V4
	for lore@pengutronix.de; Thu, 05 May 2022 10:11:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Itgf7EyJHT8UhVeaVc0nUbhE6/B1sVuHEmAJM2KOf0o=; b=28VyxrRaOj8uuI
	XYd0vCDb60C3eWB437y4Z+Rl1ODjuo5GbyAeckE1cNl6EYG1VjhOLmux+Ui5eOmBl8S6vzaUwxQag
	9Sk7hnCjiBqK8xuK4+VQBDPNHx5Ri85By3rCy6RjSXtpLLB36+nf56zy6qL5TWLhh5/ezp9+FZQZI
	/Np3OULz7piuKFl4R699kT1Bhjrf+vAd8ekaHY36Sr4bvGIH+O+X/xGjJcbpbyC3pmsAQYXrMy4Fm
	PQIG0UiDWAkIcZnfwuWJ3/58MXt++c6PMk6SENStMVbdcoX8V7ZRv4W2occ4TTU5dCS9vwEo8N7N+
	Sw6KSFXv4dbHIwFvROUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWYY-00Eaec-Ud; Thu, 05 May 2022 08:09:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWYV-00EadI-2Y
 for barebox@bombadil.infradead.org; Thu, 05 May 2022 08:09:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=naD33+2Q4XlLQp248XVi9dLsCed7eoQDykVGcBvwdvA=; b=f+TDBFCdaeGWFAGmFByKdLZ9ml
 dMq2QpE6besX6f8k8UxqIn//ft022qjI0F+krtgUltVAKjGawL8xEdVHMGs+4xxcZC1EbWF2dHwZ0
 qYNSEZT+KnV0Fs/ncCJZkEMeDLBYEE+hx1B4V3xo9kSp5E0lsSTKiI+kYnwe5M1X0d1YXoOm5lQ6f
 DA/vMJPAYMQFY2pGxhpFfHFK9wDAkJveEMG8vlC7rOuekALFCLHEZLwLlQVsCV1tveB4Ec9fWbsaV
 7WfyS8ZDlpiKuKXEHdpSDETOJ3MotfRRBkxQTqNhgYjWUDscs+yRZrGvlNjiuUcAtCjw6dlr9W68e
 ftrnHGhg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWYP-00BJez-Cx
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:09:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nmWYN-00016s-7F; Thu, 05 May 2022 10:09:39 +0200
Message-ID: <fffb99c6-ba2d-3351-95be-e47f45167da6@pengutronix.de>
Date: Thu, 5 May 2022 10:09:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220505073604.15065-1-eagle.alexander923@gmail.com>
 <bedf227d86c89860639018eab462773f1a7267de.camel@pengutronix.de>
 <CAP1tNvRryE7UTtD2ejCLB5zt-uYVnW4qp2to7qDf+88cGG2Y0g@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvRryE7UTtD2ejCLB5zt-uYVnW4qp2to7qDf+88cGG2Y0g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_090941_727142_1382E7AC 
X-CRM114-Status: GOOD (  14.45  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: OMAP: debug_ll: Use Kconfig UART base address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMDUuMDUuMjIgMTA6MDEsIEFsZXhhbmRlciBTaGl5YW4gd3JvdGU6Cj4g0YfRgiwgNSDQvNCw
0Y8gMjAyMiDQsy4g0LIgMTA6NTUsIEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRl
PjoKPj4gQW0gRG9ubmVyc3RhZywgZGVtIDA1LjA1LjIwMjIgdW0gMTA6MzYgKzAzMDAgc2Nocmll
YiBBbGV4YW5kZXIgU2hpeWFuOgo+Pj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIFNoaXlhbiA8
ZWFnbGUuYWxleGFuZGVyOTIzQGdtYWlsLmNvbT4KPj4gSXMgdGhpcyByZWFsbHkgYSBjaGFuZ2Ug
aW4gdGhlIHJpZ2h0IGRpcmVjdGlvbj8gVGhlIHdheSBpdCBpcyBjdXJyZW50bHkKPj4gZG9uZSBz
ZWVtcyB0byBtaXggd2VsbCB3aXRoIG92ZXJhbGwgbXVsdGktaW1hZ2UgdGhlbWUgb2YgQmFyZWJv
eC4gQnkKPj4gdXNpbmcgYSBLY29uZmlnIGZvciB0aGF0LCB0aGUgc2V0dGluZyB3aWxsIG1vc3Qg
bGlrZWx5IGJlIHdyb25nIGZvciBhCj4+IHN1YnNldCBvZiBib2FyZHMgaW4gYSBtdWx0aS1pbWFn
ZSBidWlsZC4KPiAKPiBTYW1lIGFzIFBVVENfTEwsIHJpZ2h0Pwo+IAo+IEFjdHVhbGx5IHRoZSBk
ZWJ1ZyBjb2RlIGlzIGFscmVhZHkgd3Jvbmcgd2hlbiB3ZSBjcmVhdGUgbXVsdGlwbGUKPiBpbWFn
ZXMgd2l0aCBkaWZmZXJlbnQgVUFSVHMuCgpUaGVyZSBpcyBwYmxfc2V0X3B1dGMoKSwgd2hpY2gg
Y2FuIGJlIGNhbGxlZCBhZnRlciByZWxvY2F0aW9uCmZvciB1c2UgYnkgdGhlIFBCTCBjb25zb2xl
IGFuZCBpcyBtdWx0aS1pbWFnZSBmcmllbmRseS4KCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBiYXJlYm94IG1haWxpbmcgbGlzdAo+IGJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAoKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIg
U3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRl
LyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTog
KzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAg
ICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=

