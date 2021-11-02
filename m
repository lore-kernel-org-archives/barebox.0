Delivery-date: Tue, 02 Nov 2021 10:06:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhpkf-0004yf-IM
	for lore@lore.pengutronix.de; Tue, 02 Nov 2021 10:06:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhpke-0000qd-LX
	for lore@pengutronix.de; Tue, 02 Nov 2021 10:06:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMTRwMRTVTJs2bDDgZdcpnblMyy0w53ZNWvFOIP1C7w=; b=UXZ6DIOoOAf77t
	2slhyEH4uDr/Y4RAAHodWmKbysU4VlmMuJruxL/NZKptJWQHu74ehyFySmNI42HKIBVsnBlMUL/nZ
	/VQMmV2I5StEQpMGgpEyLphTr2JtFDxgjSSqNtLS7OsBBeezvnTeJCCLB55Oa07NZkFpKFA4FO93p
	mpbnv4SCzpdOqYY48auPUNjFsBLeUA7xw0gaI6vUmQtUJNP/3WonrsQqc5tfNhwHdOQ7Ns9dT0aVJ
	hFnb98qFTpdl/XrAY5JDz6rQXwMpT8XC9ZvuzkZL1chvmXqE9v8mKc5vpRhjuc0TD7+eSPJKSbGG3
	DxxHGAz+RATkoPCsJoMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhpiz-00129Z-My; Tue, 02 Nov 2021 09:04:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhpiu-00127g-Hi
 for barebox@lists.infradead.org; Tue, 02 Nov 2021 09:04:54 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1mhpiq-0000OV-WC; Tue, 02 Nov 2021 10:04:49 +0100
Received: from pza by lupine with local (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1mhpiq-0043Hi-7d; Tue, 02 Nov 2021 10:04:48 +0100
Message-ID: <0ede56d957c0bb05ac4aa16e80669e406a9e6ac6.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>, Philipp Zabel <pza@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org, Ian
 Abbott <abbotti@mev.co.uk>
Date: Tue, 02 Nov 2021 10:04:48 +0100
In-Reply-To: <20211102080651.GY25698@pengutronix.de>
References: <20211101175207.2160779-1-a.fatoum@pengutronix.de>
 <20211102080651.GY25698@pengutronix.de>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_020452_622038_48C95F9F 
X-CRM114-Status: GOOD (  23.57  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] mci: dw_mmc: make reset control optional again
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gVHVlLCAyMDIxLTExLTAyIGF0IDA5OjA2ICswMTAwLCBTYXNjaGEgSGF1ZXIgd3JvdGU6Cj4g
T24gTW9uLCBOb3YgMDEsIDIwMjEgYXQgMDY6NTI6MDdQTSArMDEwMCwgQWhtYWQgRmF0b3VtIHdy
b3RlOgo+ID4gQXMgZG9jdW1lbnRlZCBpbiA5MGJkZjFlNWQxZTQgKCJtY2k6IGR3X21tYzogbWF0
Y2ggYWdhaW5zdCBTdGFyRml2ZSBNTUMKPiA+IGNvbXBhdGlibGVzIiksIGl0IHdhcyBpbnRlbmRl
ZCBmb3IgdGhlIHJlc2V0IHRvIHJlbWFpbiBvcHRpb25hbCBhcyB0bwo+ID4gbm90IGJyZWFrIGV4
aXN0aW5nIHVzZXJzLiBVbmZvcnR1bmF0ZWx5LCBteSBsYXRlciBhM2NmMzI0NTkzZWEKPiA+ICgi
bWNpOiBkd19tbWM6IGFkZCBvcHRpb25hbCByZXNldCBsaW5lIikgZGlkbid0IGhlZWQgdGhhdCBh
bmQgbWFkZSBpdAo+ID4gcmVxdWlyZWQsIGJyZWFraW5nIFNvQ0ZQR0EgRFctTU1DIHVzZSBhcyBh
IHJlc3VsdC4KPiA+IAo+ID4gUmV2ZXJ0IHRoYXQgbGluZSB0byBmaXggdGhlIHJlZ3Jlc3Npb24u
Cj4gPiAKPiA+IEZpeGVzOiBhM2NmMzI0NTkzZWEgKCJtY2k6IGR3X21tYzogYWRkIG9wdGlvbmFs
IHJlc2V0IGxpbmUiKQo+ID4gUmVwb3J0ZWQtYnk6IElhbiBBYmJvdHQgPGFiYm90dGlAbWV2LmNv
LnVrPgo+ID4gU2lnbmVkLW9mZi1ieTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25p
eC5kZT4KPiA+IC0tLQo+ID4gwqBkcml2ZXJzL21jaS9kd19tbWMuYyB8IDIgKy0KPiA+IMKgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21jaS9kd19tbWMuYyBiL2RyaXZlcnMvbWNpL2R3X21tYy5jCj4gPiBp
bmRleCBiNDAyMDkwYWIzY2IuLjg2YzRmNDNlODhmNSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
bWNpL2R3X21tYy5jCj4gPiArKysgYi9kcml2ZXJzL21jaS9kd19tbWMuYwo+ID4gQEAgLTU3Miw3
ICs1NzIsNyBAQCBzdGF0aWMgaW50IGR3X21tY19wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikK
PiA+IMKgCj4gPiAKPiA+IMKgCXJzdCA9IHJlc2V0X2NvbnRyb2xfZ2V0KGRldiwgInJlc2V0Iik7
Cj4gCj4gUGhpbGlwcCwgdGhlIHJlc2V0IGJpbmRpbmcgbGlzdHMgdGhlIHJlc2V0LW5hbWVzIHBy
b3BlcnR5IGFzIG9wdGlvbmFsLgo+IFdoYXQncyB0aGUgZXhwZWN0ZWQgYmVoYXZpb3VyIG9mIHRo
ZSByZXNldF9jb250cm9sX2dldCgpIGFib3ZlIHdoZW4gdGhlCj4gcmVzZXQtbmFtZXMgcHJvcGVy
dHkgaXMgbm90IHByZXNlbnQgaW4gdGhlIGRldmljZSB0cmVlPyBTaG91bGQgaXQgcmV0dXJuCj4g
YW4gZXJyb3Igb3Igc2hvdWxkIGl0IHJldHVybiB0aGUgdW5uYW1lZCByZXNldCBjb250cm9sPwoK
SSdkIGV4cGVjdCBpdCB0byByZXR1cm4gLUVOT0VOVC4KClRoZSBjb21tb24gcmVzZXQgYmluZGlu
ZyBvbmx5IGhhcyByZXNldC1uYW1lcyBvcHRpb25hbCBmb3IgdGhlIHNpbmdsZS0KcmVzZXQgY2Fz
ZSAtIGJ1dCB0aGF0IHNob3VsZCBiZSByZXF1ZXN0ZWQgd2l0aCByZXNldF9jb250cm9sX2dldChk
ZXYsCk5VTEwpIGJ5IHRoZSBkcml2ZXIuCklmIHRoZSBkZXZpY2Ugc3BlY2lmaWMgYmluZGluZyBz
cGVjaWZpZXMgYSByZXNldC1uYW1lcyBwcm9wZXJ0aXksIGl0CnNob3VsZCBlaXRoZXIgYmUgcmVx
dWlyZWQsIG9yIHRoZSByZXNldHMgcHJvcGVydHkgc2hvdWxkIGJlIG9wdGlvbmFsIGFzCndlbGws
IHdpdGggZWl0aGVyIGJvdGggb3Igbm9uZSBwcmVzZW50IGluIHRoZSBkZXZpY2UgdHJlZS4KCklu
IHRoZSBrZXJuZWwgdGhlcmUncyBhbHNvIHJlc2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsXy4uLiB2
YXJpYW50cyB0aGF0CnJldHVybiBOVUxMIGluc3RlYWQgb2YgLUVOT0VOVCB0byBzaW1wbGlmeSB0
aGUgb3B0aW9uYWwgcmVzZXQgY2FzZS4KCkkgdGhpbmsgdGhlIGlzc3VlIGhlcmUgbWF5IGJlIHRo
YXQgYmFyZWJveCBvZl9yZXNldF9jb250cm9sX2dldCgpIGlzCm1pc3NpbmcgM2Q4MTIxNmZkZTQ2
ICgicmVzZXQ6IEZpeCBvZl9yZXNldF9jb250cm9sX2dldCgpIGZvciBjb25zaXN0ZW50CnJldHVy
biB2YWx1ZXMiKSBbMV0uIFRoZSBkcml2ZXIgc2hvdWxkIHRoZW4gaWdub3JlIHRoZSAtRU5PRU5U
IGVycm9yLgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMTQ0MTEyMTMxMS0zMTYy
OC0xLWdpdC1zZW5kLWVtYWlsLWFsYmV1QGZyZWUuZnIvCgpyZWdhcmRzClBoaWxpcHAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGlu
ZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

