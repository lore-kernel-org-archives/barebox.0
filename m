Delivery-date: Fri, 03 Dec 2021 19:56:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mtDiy-0003Z4-Nh
	for lore@lore.pengutronix.de; Fri, 03 Dec 2021 19:56:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mtDix-0005ZZ-Ob
	for lore@pengutronix.de; Fri, 03 Dec 2021 19:56:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4rCh59Ly+SC5SYi+WB3AR7cfz10B0G0Lk3WwAeL44LM=; b=mhksuquCRSNc0xvNPu+1aNDA5/
	q3h+Q3s1SUzjVLG6lhAM84sAlaXEeQmurc2MUZQIf1sL8gGNAfUFwrqPEM3r6d6A0AhuQwv1i6a2K
	YqsJn9YTi4/EjQPkflylN/YAwPPmrAUqvys2edOzVKVUe+Y5qXDoOY5w17NE9Bzb0g4KlOVKwpW96
	BbXo87Dh2OV/92kUHTwRcjoHXYRJURw1qKw0U6PqDxC5XEVIyi6vT0eqwhNFXWVeDRt4LHfQmwqUX
	fe56wjSuChIqsvAFtgRPjF71gGDgG/lA+cdmaTMVH7DrieTYtRsO3kS+tR/QGgBplcTxnPTpFMrDF
	Bpg8sffg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtDhI-00GnuY-Fk; Fri, 03 Dec 2021 18:54:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtDh5-00Gnqb-F7
 for barebox@lists.infradead.org; Fri, 03 Dec 2021 18:54:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mtDh2-00055n-Fn; Fri, 03 Dec 2021 19:54:00 +0100
To: barebox@lists.infradead.org, Marc Reilly <marc@cpdesign.com.au>
References: <20211203185154.388145-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7bf2e775-02d7-ef03-2559-0e939fb78937@pengutronix.de>
Date: Fri, 3 Dec 2021 19:53:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211203185154.388145-1-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211203_105403_528680_7B86F3F2 
X-CRM114-Status: GOOD (  22.73  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] Revert "ARM: beaglebone: init MPU speed to 800Mhz"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gTWFyYywKCk9uIDAzLjEyLjIxIDE5OjUxLCBBaG1hZCBGYXRvdW0gd3JvdGU6Cj4gQ29t
bWl0IDEzMGM3ZDY3MTVlOSAoIkFSTTogYmVhZ2xlYm9uZTogaW5pdCBNUFUgc3BlZWQgdG8gODAw
TWh6IikgY2F1c2VzCj4gd2FybSByZWJvb3QgZnJvbSB3aXRoaW4gTGludXggdjUuMTQuMCB0byBu
byBsb25nZXIgc3VjY2VlZC4KPiBiYXJlYm94IE1MTyBpcyBlbnRlcmVkLCBidXQgaGFuZ3MuIFJl
c2V0IGZyb20gd2l0aGluIGJhcmVib3ggaXMKPiB1bmFmZmVjdGVkLgo+IFRoaXMgY2FuIGJlIHJl
cHJvZHVjZWQgdXNpbmcgRGlzdHJvS2l0IDk0OWM1ZWYyYjlhNiAoInY3YTogYmFyZWJveDoKPiB2
ZXJzaW9uIGJ1bXAgdjIwMjEuMDguMCDihpIgdjIwMjEuMTEuMCIpIG9uIGEgQmVhZ2xlYm9uZSBC
bGFjay4KPiBVbnRpbCB0aGF0J3MgZmlndXJlZCBvdXQsIHJldmVydCB0aGUgY29tbWl0OyBmdW5j
dGlvbmFsIHJlYm9vdCBpcyBtb3JlCj4gaW1wb3J0YW50IHRoYW4gdGhlIHF1aWNrZXIgYm9vdCB1
cC4KPiAKPiBUaGlzIHJldmVydHMgY29tbWl0IDEzMGM3ZDY3MTVlOTMyYTFlMGIzZTAyNmZlYTk3
ZjcwMGFiMzNlYTkuCgpJIHNlbmQgYSByZXZlcnQsIHNvIGJhcmVib3ggdjIwMjEuMTIuMCBjYW4g
c2hpcCB3aXRoIHRoZSByZWdyZXNzaW9uIGZpeGVkLgpXb3VsZCBiZSBncmVhdCBpZiB5b3UgY291
bGQgdGFrZSBhIGxvb2sgdG8gc2VlIHdoYXQgbmVlZHMgdG8gYmUgZG9uZQpkaWZmZXJlbnRseSB0
byByZWluc3RhdGUgdGhlIGNsb2NrIGZyZXF1ZW5jeSBpbmNyZWFzZS4KCkNoZWVycywKQWhtYWQK
Cj4gCj4gRml4ZXM6IDEzMGM3ZDY3MTVlOSAoIkFSTTogYmVhZ2xlYm9uZTogaW5pdCBNUFUgc3Bl
ZWQgdG8gODAwTWh6IikKPiBSZXBvcnRlZC1ieTogYXJ3aWUgIyBJUkMKPiBDYzogTWFyYyBSZWls
bHkgPG1hcmNAY3BkZXNpZ24uY29tLmF1Pgo+IFNpZ25lZC1vZmYtYnk6IEFobWFkIEZhdG91bSA8
YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gIGFyY2gvYXJtL2JvYXJkcy9iZWFnbGVi
b25lL2xvd2xldmVsLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib2FyZHMvYmVhZ2xlYm9u
ZS9sb3dsZXZlbC5jIGIvYXJjaC9hcm0vYm9hcmRzL2JlYWdsZWJvbmUvbG93bGV2ZWwuYwo+IGlu
ZGV4IDMxMjExNDQ4ZjVlOC4uOTFkMTQzZTQxNTBiIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jv
YXJkcy9iZWFnbGVib25lL2xvd2xldmVsLmMKPiArKysgYi9hcmNoL2FybS9ib2FyZHMvYmVhZ2xl
Ym9uZS9sb3dsZXZlbC5jCj4gQEAgLTEyNiw3ICsxMjYsNyBAQCBzdGF0aWMgbm9pbmxpbmUgaW50
IGJlYWdsZWJvbmVfc3JhbV9pbml0KHZvaWQpCj4gIAo+ICAJLyogU2V0dXAgdGhlIFBMTHMgYW5k
IHRoZSBjbG9ja3MgZm9yIHRoZSBwZXJpcGhlcmFscyAqLwo+ICAJaWYgKGlzX2JlYWdsZWJvbmVf
YmxhY2soKSkgewo+IC0JCWFtMzN4eF9wbGxfaW5pdChNUFVQTExfTV84MDAsIEREUlBMTF9NXzQw
MCk7Cj4gKwkJYW0zM3h4X3BsbF9pbml0KE1QVVBMTF9NXzUwMCwgRERSUExMX01fNDAwKTsKPiAg
CQlhbTMzNXhfc2RyYW1faW5pdCgweDE4QiwgJmRkcjNfY21kX2N0cmwsICZkZHIzX3JlZ3MsCj4g
IAkJCQkmZGRyM19kYXRhKTsKPiAgCX0gZWxzZSB7Cj4gCgoKLS0gClBlbmd1dHJvbml4IGUuSy4g
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cu
cGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAg
ICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hl
aW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

