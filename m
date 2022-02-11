Delivery-date: Fri, 11 Feb 2022 16:25:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIXnr-00Cv6U-MU
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 16:25:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIXnq-0004DI-4L
	for lore@pengutronix.de; Fri, 11 Feb 2022 16:25:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0GMXGqUZWSxB7NXO/IY5N7PqWCSPEnQjATgqdT/LI70=; b=aeZ5UwUhcEzlCl
	Fnwj8r86eEqKvgoI79ZE8FKeOiYPJbg8hasa0OM0I67x0x1HgDA2IXPaDvuipCkbT0ekbSWEQhXq6
	Rx1fv/E+Cbx8v58WYx/JXYq7eLwOYYkNe8IWZ70rA+7Q0MieiXMdAp4b7N+steG2ovO97rr3SBHHj
	iBHfLdqbS2J/D1H2OJvtLhVZnSvUENg6njBPKb5WnjpPJAky7nxzwckGUcN0Z3sbpgmeX6Xws8Nyd
	5aQsZyGW/iYN4Nu8s2QKjnsvrjl2LIPluFOhuPfbI+dkAQN8HVWVGGGjLDyqE98NuEgGoLBCKZTmw
	fMCNoG2N50EWgOHXmrFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIXmD-007npZ-K9; Fri, 11 Feb 2022 15:24:01 +0000
Received: from ns2.calserver.eu ([138.201.22.106])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIXm4-007nm3-2U
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 15:23:56 +0000
Received: from [127.0.0.1] (helo=poczta.cal.pl)
 by ns2.calserver.eu with esmtpa (Exim 4.93.0.4)
 (envelope-from <wodev@progra.biz.pl>) id 1nIXly-0007go-A9
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 16:23:46 +0100
MIME-Version: 1.0
Date: Fri, 11 Feb 2022 16:23:46 +0100
From: wodev@progra.biz.pl
To: barebox@lists.infradead.org
Message-ID: <1bee39a15fd98b399a28fbf8fed363da@progra.biz.pl>
X-Sender: wodev@progra.biz.pl
User-Agent: Roundcube Webmail/1.3.6
X-Authenticated-Id: wodev@progra.biz.pl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_072352_324670_15915589 
X-CRM114-Status: UNSURE (   7.21  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: ubiattach reserves too many BEBs for each volume attached
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SWYgdGhlcmUgaXMgbW9yZSB0aGFuIG9uZSB2b2x1bWUgb24gdGhlIGRldmljZSwgdWJpYXR0YWNo
IHJlc2VydmVzIAphbW91bnQgb2YgQkVCcyBhcyBmb3IgdGhlIHdob2xlIGRldmljZSwgZWFjaCB0
aW1lLiBTbWFsbCB2b2x1bWVzIGNhbiBiZSAKY292ZXJlZCBtYWlubHkgYnkgcmVzZXJ2ZWQgYmxv
Y2tzIG9uIGJpZyBkZXZpY2VzLgpXaXRoIHRoaXMgdGhlIGFtb3VudCBvZiBCRUJzIGlzIHByb3Bv
cnRpb25hbCB0byB0aGUgdm9sdW1lIHNpemUuCgotLS0KICBkcml2ZXJzL210ZC91YmkvYnVpbGQu
YyB8IDIgKy0KICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC91YmkvYnVpbGQuYyBiL2RyaXZlcnMvbXRkL3ViaS9i
dWlsZC5jCmluZGV4IDk0YjQyMzEuLjU0ZTE2ZjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRkL3Vi
aS9idWlsZC5jCisrKyBiL2RyaXZlcnMvbXRkL3ViaS9idWlsZC5jCkBAIC0yMzcsNyArMjM3LDcg
QEAgc3RhdGljIGludCBnZXRfYmFkX3BlYl9saW1pdChjb25zdCBzdHJ1Y3QgdWJpX2RldmljZSAK
KnViaSwgaW50IG1heF9iZWJfcGVyMTAyNCkKICAJZWxzZQogIAkJZGV2aWNlX3NpemUgPSB1Ymkt
Pm10ZC0+c2l6ZTsKCi0JZGV2aWNlX3BlYnMgPSBtdGRfZGl2X2J5X2ViKGRldmljZV9zaXplLCB1
YmktPm10ZCk7CisJZGV2aWNlX3BlYnMgPSBtdGRfZGl2X2J5X2ViKHViaS0+bXRkLT5zaXplLCB1
YmktPm10ZCk7CiAgCWxpbWl0ID0gbXVsdF9mcmFjKGRldmljZV9wZWJzLCBtYXhfYmViX3BlcjEw
MjQsIDEwMjQpOwoKICAJLyogUm91bmQgaXQgdXAgKi8KLS0gCjIuMzUuMQoKUmVnYXJkcywKTWlj
aGHFggoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFy
ZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

