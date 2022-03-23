Delivery-date: Wed, 23 Mar 2022 08:49:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWvjt-003Q4D-E4
	for lore@lore.pengutronix.de; Wed, 23 Mar 2022 08:49:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWvjv-0007r9-Ks
	for lore@pengutronix.de; Wed, 23 Mar 2022 08:49:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00bpC3dSvfOdGv0VrqF/ictgagNozoL7k9E6OlVznxc=; b=ycyGCT78ydj2/p
	X3J+3he3qDqpgsiALVKasAlz+Y0Nd1Qii3/9R4ON4d8np34hyJbAEwp8TTUgtFYziIeXePFomvHFW
	+As94EMeeKZS07W3FDx0ZSBKYJrYCElxvihxXzcGPR9tRJ7w9uz2XCwUxX8f5rAmYhPreKqWSnMSx
	4dhEzOXx26vJk9phJJKeINV9sN/CFTMk5wtUI2qIyODNqi7EYs3Qbg0KWEIWHHKGdL5M+ram23ehD
	rspbAiQAspN/+XO1oEz4frm7IV5iJOoqdb5bAJzw7fpD0EtKm2dgp2XeNOpt4rPIq8M4a6Lv/Cyb5
	/hQahS7APxNhFleH5dRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWviE-00D1F7-Gj; Wed, 23 Mar 2022 07:47:22 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWvi9-00D1Ei-1v
 for barebox@lists.infradead.org; Wed, 23 Mar 2022 07:47:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1648021632;
 bh=YGKfDByKP6yAm15mXinOgwy3LG16pWCy0BDnXT9fqTs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Ovl5ETF9BkhRLAdVdrfApQ2lK2TjwqZOlysfh70ak+D/fb0Pl4bbIf5feNj+cILbb
 NfhLW+CqFUkXzNAaeimacucUfuAWF3eZ6P6EzL9QJS+w1IsfK5lc77c4LaQ/1z1yyq
 A3+BcKu/4hNDNgEqjL0Ivl9dpdnKQNWxgqEfaXHM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [157.180.227.93] ([157.180.227.93]) by web-mail.gmx.net
 (3c-app-gmx-bap36.server.lan [172.19.172.106]) (via HTTP); Wed, 23 Mar 2022
 08:47:12 +0100
MIME-Version: 1.0
Message-ID: <trinity-82311693-b8da-49e3-a71c-d577df7e4021-1648021632406@3c-app-gmx-bap36>
From: Frank Wunderlich <frank-w@public-files.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Wed, 23 Mar 2022 08:47:12 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <2620f87b-ec79-7184-cd8a-d29c39938001@pengutronix.de>
References: <6FA3446D-797C-4DA1-A2FA-BAC5B213A65A@public-files.de>
 <2620f87b-ec79-7184-cd8a-d29c39938001@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:CYW2aHuLopfiEQn3xL1lvBedqQfe6rydx/dVG3q03YsSOjOy0vVD5qQW5hQ+YDFPfuul3
 8ofvcMmqo1+cxXZMkGadlcCPdK6EiXefK7SGpDAVQOBZ6qST32qE9pGb8PweQkACwgnElBBgQxmC
 78JCXUV+3TlyZw5mpbJoi5Edw0kNUNgjGbvEoUGaa0YxhtHPU6NricjliS2GHiaZmGHlte46sVLu
 lr1mGQ+O2PRkkrQsWnKoCUEH1js1K2BrUGxfLCpCEyYE629prIF0Zw3e9mjCG2TKpIV75Xv8lREf
 MA=
X-UI-Out-Filterresults: notjunk:1;V03:K0:kchufidl5OM=:EH/qKY+iCjAlTmEqML1q/8
 10hCwzJN4sDQctsdLV7ZcaPD9+flH/Zh5yyaGSj1tGcE2zruiKdbtE87y79Cknbm7bFX9foB5
 G/RQz4bwhU49fso+ITWGbOPnKPJ4RwCOBzvhIlcUd4UxQFAvDbk7IPgoWmWsncKbma97B+KCG
 mFqjBmYJHtdeFaJe8xvXBLqTG7qabkMZvDFd7EyTlZRli+tuJlYS1AvV9S+rv+QyBXHNSR2+h
 flMz7d7hPqgFhRP8UcC55OWE4EChf0cBu73317fH+YOR2hOzbMWpbz3G/zHoXyJM/L+zSnP3b
 syYQ1dMdLeZjDa3Y95iGZvAYPbnvYSWBvK6HNCTwQS/jUHb4+Pxyv8xXQMeiIRCqCLfP7qvj/
 GJ4rsGryH4e/j1SX+t4ph8RU3R6ap0hS8tcBTaiHZeMzXArdEQUe3GjJZ2k+T0ehhv2EbOnqn
 +lkfSGwTkvEjK1LnOhCvnNiBXSzS3S4BKZWqL+PIgj6CmIN6nh0lQCFcDpA/YILZyv679o4/L
 AsGvy8tYhvR176GzWy/VSwDyxwFilW7CnEIpJklweGZJdrQJHS6PkltiOkPRYXo59Xewi4As6
 LypaPugJeMHtFtH/eR6C5h6Ijn/X5B6Svuf69u0whh2cOYtkKz+a2OVTg2ez7xtaSYfnM1wAi
 BSDT/QbpzmJ5wDaIQvjI32FfLiJz0tmIBzwW/sOnIu62KODEsZMSV7aE+pcm1U98eeLEcykq9
 FlO6t/XFphzmeLXHRkLJD1uJJ0IMsUwDxEOMAKPvFu9SdFiF+gWzpm5+VKHdNwawh8mAEYN2e
 2lA8obY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220323_004717_439013_68B64213 
X-CRM114-Status: GOOD (  23.38  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Aw: Re: Board code with 2 dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkKCnRoYW5rcyBmb3IgeW91ciBmYXN0IGFuZCBkZXRhaWxlZCBhbnN3ZXIuCmFmYWlrIHZlbmRv
ciBoYXZlIG5vdCBjaGFuZ2VkIHRoZSBzYXJhZGMtZGV0ZWN0aW9uIChiZWNhdXNlIHYwMCB3YXMg
bm90IHB1YmxpYyksIHNvIHYwMCBoYXMgc2FtZSB2YWx1ZSBhcyB2MS4wIGFuZCBpIGNhbm5vdCBk
ZXRlY3QgZGlmZmVyZW5jZSB0aGVyZS4gTWF5YmUgdGhlcmUgaXMgYW5vdGhlciB3YXkgdG8gZGV0
ZWN0IChtYXliZSBiYXNlZCBvbiBnbWFjIG9yIGFueSBoYXJkd2FyZS1jaGFuZ2UpLCBidXQgZm9y
IG5vdyBpIHVzZWQgbGFzdCBvcHRpb24geW91J3ZlIG1lbnRpb25lZCAoc2Vjb25kIGVudHJ5IGZ1
bmN0aW9uKS4KCkhhdmUgaXQgaW1wbGVtZW50ZWQgbGlrZSBrb250cm9uLXNhbXg2aSAoYm90aCBk
dHMgY3VycmVudGx5IHNhbWUpLCBpdCBjb21waWxlcywgY2FuIHlvdSB0YWtlIGEgcXVpY2sgbG9v
ayBpZiBpIGRpZCBpdCByaWdodD8KCmh0dHBzOi8vZ2l0aHViLmNvbS9mcmFuay13L2JhcmVib3gt
cjJwcm8vY29tbWl0L2RlYWY3YThlZWQ3NTc1ZTM1YzE3ODA3YWEwYTQzMjM2MzEyMmIwMzMKCnRo
aXMgaXMgbm90IGludGVuZGVkIHRvIGJlIHVwc3RyZWFtZWQsIGJ1dCBmb3IgbWUgdG8gZml4IHVw
c3RyZWFtIHdpdGggdjEgY29uZmlnICh3aGVuIGkgZ2V0IHRoZSBib2FyZCkgYW5kIHN0aWxsIHVz
aW5nIHYwMCBib2FyZC4KCnJlZ2FyZHMgRnJhbmsKCgo+IEdlc2VuZGV0OiBEaWVuc3RhZywgMjIu
IE3DpHJ6IDIwMjIgdW0gMTg6MzQgVWhyCj4gVm9uOiAiQWhtYWQgRmF0b3VtIiA8YS5mYXRvdW1A
cGVuZ3V0cm9uaXguZGU+Cj4gQW46IGZyYW5rLXdAcHVibGljLWZpbGVzLmRlLCBiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBCZXRyZWZmOiBSZTogQm9hcmQgY29kZSB3aXRoIDIgZHRzCj4K
PiBIZWxsbyBGcmFuaywKPiAKPiBPbiAyMi4wMy4yMiAxODoyMywgRnJhbmsgV3VuZGVybGljaCB3
cm90ZToKPiA+IEhpLAo+ID4gCj4gPiBJIGdldCBpbmZvcm1hdGlvbiB0aGF0IG5ldyBoYXJkd2Fy
ZSByZXZpc2lvbiBvZiBicGktcjIgcHJvIGhhcyBzb21lIGRpZmZlcmVuY2VzIHRvIHRoZSB2ZXJz
aW9uIGkgdXBzdHJlYW1lZC4gSXMgaXQgcG9zc2libGUgdG8gYWRkIGEgbmV3IGR0cyBhbmQgdXNl
IHNhbWUgYm9hcmQgY29kZT8KPiA+IAo+ID4gSG93IGNhbiBpIGNob29zZSBiZXR3ZWVuIHRoZSAy
IGR0cyBvbiBidWlsZCAoa2NvbmZpZyBvcHRpb24pPwo+IAo+IEluIGFueSBjYXNlLCBkb24ndCBh
ZGQgYSBuZXcgS2NvbmZpZyBvcHRpb24uIFRoZSBleGlzdGluZyBvbmUgc3VmZmljZXMuCj4gCj4g
PiBBZmFpayB0aGUgbmFtZSBvZiBkdGIgaXMgaGFyZGNvZGVkIGluIGxvd2xldmVsLmMgWzFdCj4g
PiAKPiA+IERpZmZlcmVuY2VzIGFyZSBpb2RvbWFpbnMgKG5vdCBkZWZpbmVkIGluIGJhcmVib3gs
YnV0IGxpbnV4KSBhbmQgZ21hYy1jb25maWcgKGdtYWNzIHN3YXBwZWQgYW5kIGRpZmZlcmVudCBz
ZXR0aW5ncykuCj4gPiAKPiA+IEN1cnJlbnRseSBpIGhhdmUgbm90IHlldCB0aGUgbmV3IGJvYXJk
IGZvciB0ZXN0aW5nLGJ1dCB0aGVuIGkgd2FudCB0byBzZW5kIHBhdGNoZXMgZm9yIGxpbnV4IGFu
ZCBiYXJlYm94Lgo+ID4gCj4gPiBbMV0gaHR0cHM6Ly9naXQucGVuZ3V0cm9uaXguZGUvY2dpdC9i
YXJlYm94L3RyZWUvYXJjaC9hcm0vYm9hcmRzL3JvY2tjaGlwLXJrMzU2OC1icGktcjJwcm8vbG93
bGV2ZWwuYyNuMjQKPiAKPiBJcyBpdCBwb3NzaWJsZSB0byBkZXRlY3Qgd2hpY2ggYm9hcmQgaXMg
YmVpbmcgdXNlZD8KPiBJZiBzbywgYmVzdCBwcmFjdGljZSBpcyB0byBoYXZlIGJhcmVib3ggdGhl
IHNhbWUgaW1hZ2UgZm9yIGJvdGgKPiBhbmQgZGV0ZWN0IGJvYXJkIHR5cGUgYXQgcnVudGltZS4K
PiBIZXJlJ3MgYW4gZXhhbXBsZSBkb2luZyBpdCBpbiBsb3dsZXZlbC5jOgo+IGFyY2gvYXJtL2Jv
YXJkcy9zdG0zMm1wMTV4eC1ka3gvbG93bGV2ZWwuYwo+IAo+IElmIHlvdSBuZWVkIG1vcmUgYmFy
ZWJveCBpbmZyYXN0cnVjdHVyZSB0aGFuIHdoYXQncyBhdmFpbGFibGUgaW4gdGhlIGJvb3Rsb2Fk
ZXIKPiB0byBkZXRlY3QgYm9hcmQgdHlwZSwgeW91IGNvdWxkIGUuZy4gcmV3cml0ZSBnbWFjLWNv
bmZpZyBpbiBiYXJlYm94IGJvYXJkIGNvZGUKPiBhZnRlciBkZXRlY3Rpb24uCj4gCj4gSWYgdGhl
cmUgaXMgbm8gd2F5IHRvIGR5bmFtaWNhbGx5IGRldGVjdCB3aGljaCBib2FyZCB2YXJpYW50IGJh
cmVib3ggaXMgcnVubmluZwo+IG9uLCBqdXN0IGR1cGxpY2F0ZSB0aGUgZW50cnkgcG9pbnQgaW4g
dGhlIHNhbWUgZmlsZSBhbmQgY2hhbmdlIGp1c3QgdGhlIGRldmljZQo+IHRyZWUuIFRoZW4gZXh0
ZW5kIGltYWdlcy9NYWtlZmlsZS5yb2NrY2hpcCB0byByZWZlcmVuY2UgdGhlIG5ldyBlbnRyeSBw
b2ludAo+IGFuZCBiYXJlYm94IGJ1aWxkIHdpbGwgZ2VuZXJhdGUgYW4gaW1hZ2UgZm9yIGVhY2gg
Ym9hcmQuIFNlZSBmb3IgZXhhbXBsZToKPiAKPiBhcmNoL2FybS9ib2FyZHMva29udHJvbi1zYW14
NmkvbG93bGV2ZWwuYwo+IAo+IAo+IENoZWVycywKPiBBaG1hZAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK

