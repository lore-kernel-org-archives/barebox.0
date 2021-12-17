Delivery-date: Fri, 17 Dec 2021 14:09:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myCzL-009TGC-Pt
	for lore@lore.pengutronix.de; Fri, 17 Dec 2021 14:09:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myCzK-0004aW-Fs
	for lore@pengutronix.de; Fri, 17 Dec 2021 14:09:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XvDACpk4eNt6l3M+jJTQ8l/ENgFzoqMMQ5b6RYyIHfg=; b=RztYayPqAdWuH1awUuP3lb8XVa
	Pzvtc53pvWcYgVTWfcPU4mXpyQd+AgY+A5CYY13L6CDZ4UajtScLSGyNh079BUotJE5dkDbk0U99w
	NcNcK4Y65snf6KCFjulX4Sazm5A3foLCoFEEE6JAuGee8cjxQzC8KS9wWGjaNADgDEuClhHQmr3Tw
	HbfzjiwZSVjzAX1RtMXrlEiaGftX9FME+s1eF+zrP65BL3VnfuMjaipsaryv0FXXW41Z7PjE3/SuF
	MPi67aknsh6jCnx6hOAGBa5ukI76JCqkdZAnNy7PpuxF965U+Ll8FtymEzlE73LhWRDviIO77jL83
	D3q9YXnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myCy0-00AIZ0-Uj; Fri, 17 Dec 2021 13:08:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myCxw-00AIYQ-5W
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 13:08:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1myCxt-0004Q2-Ve; Fri, 17 Dec 2021 14:08:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
 <c4ae26b8698992ad37f201101795b1bb@inside-m2m.de>
 <53bdfd89-f363-5cec-4cb1-417c25c90eaf@pengutronix.de>
 <297b3425baa118783dccb6446900fbfa@inside-m2m.de>
 <cf1e6cf6a51dc13ec5275d94e18d23c1@inside-m2m.de>
 <ef8a2a82-91f5-5401-a564-a0ab20da4772@pengutronix.de>
 <YbyGBHs1YWVcgE5X@Hephaistos>
Message-ID: <68358567-7665-bd5c-00fe-b410b4ec2518@pengutronix.de>
Date: Fri, 17 Dec 2021 14:08:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YbyGBHs1YWVcgE5X@Hephaistos>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_050804_235069_15AA17C5 
X-CRM114-Status: GOOD (  22.81  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksCgpPbiAxNy4xMi4yMSAxMzo0MywgS29uc3RhbnRpbiBLbGV0c2Noa2Ugd3JvdGU6Cj4gSGkg
Oi0pCj4gCj4gT24gRnJpLCBEZWMgMTcsIDIwMjEgYXQgMTA6NDY6NDJBTSArMDEwMCwgQWhtYWQg
RmF0b3VtIHdyb3RlOgo+ICAKPj4gSXQgd2FzIGJhY2twb3J0ZWQgdG8gc3RhYmxlIGluIHY1LjEw
LjIwLiBCYWNrcG9ydCBjb21taXQgaXMgNjYzYTE4MjcxLgo+IAo+IFNvcnJ5IG15IGdpdC9nb29n
bGUtZm9vIGlzIHVuc3VmZmljaWVudCwgaG93IGRvIEkgZ2V0IG15IGhhbmRzIG9uIHRoaXMKPiBj
b21taXQ/CgogIGdpdCByZW1vdGUgYWRkIHN0YWJsZSBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIv
c2NtL2xpbnV4L2tlcm5lbC9naXQvc3RhYmxlL2xpbnV4LmdpdAogIGdpdCBmZXRjaCBzdGFibGUg
LS10YWdzCiAgZ2l0IGNoZXJyeS1waWNrIDY2M2ExODI3MQoKT3IganVzdCB1cGRhdGUgdG8gYSBt
b3JlIHJlY2VudCBrZXJuZWwgcmVsZWFzZS4KCj4gU28sIGp1c3QgdG8gYmUgc2h1cmUgZm9yIHRo
ZSBzdGF0ZSBPRiBwYXJ0aXRpb24gcGxhY2VkIGFmdGVyIHRoZSBNQlIgYmVmb3JlIDFzdAo+IE1C
UiBwYXJ0aXRpb246Cj4gCj4gSWYgSSBoYXZlIDFzdCBwYXJ0aXRpb24ncyBzdGFydCBzZWN0b3Ig
YmVpbmcgMjA0OCBJIGhhZmUgcGxlbnR5IG9mIHJvb20KPiBiZWZvcmUgdGhpcyBhZnRlciB0aGUg
TUJSLgo+IAo+IFRoZSBiYXJlYm94IHN0YXRlIE9GIHBhcnRpdGlvbiBzaG91bGQgYmUgaW4gdGhl
cmUgYW5kIEkgY291bGQgcGxhY2UgaXQKPiBhdAo+IAo+IHJlZyA9IDwweDMwMCAweGZmZmZmPgo+
Cj4gYmVjYXVzZSB0aGUgTUJSIGVuZHMgYXQgMHgxZmYgYW5kIHRoZSAxc3QgcGFydGl0aW9uIHN0
YXJ0cyBhdAo+IHNlY3RvciAyMDQ4ICggMjA0OCo1MTJieXRlPTFNQj0weDEwMDAwKSwgaXMgdGhh
dCBjb3JyZWN0LCBpcyB0aGUgcmVnCj4gYWRkcmVzc2luZyBkb25lIHRoaXMgd2F5PwoKTm9wZS4g
b2Zmc2V0KDB4MzAwKSArIHNpemUoMHhmZmZmZikgPiAweDEwMDAwLCBzbyBpdCBvdmVybGFwcyBN
QlIgcGFydGl0aW9uLgoKSWYgeW91IHJlYWxseSB3YW50IGFuIE9GIHBhcnRpdGlvbiBzdGFydGlu
ZyBhdCBieXRlIG9mZnNldCAweDMwMCBhbmQgZW5kaW5nCmF0IDB4ZmZmZmZmIGluY2x1ZHNpdmUs
IHlvdSdkIGRvCgogIHJlZyA9IDwweDMwMCAweGZmZDAwPjsKCj4gT2YgY291cnNlIGEgbGVuZ3Ro
IG9mIDB4ZmZmZmYgaXMgZmFyIHRvbyBtdWNoLAo+IGp1c3QgdG8gZ2V0IGEgcGljdHVyZS4gQWxz
byB0byB0cmFuc2ZlciB0aGlzIHRvIGFuIE9GIHBhcnRpdGlvbiBpbiBhIE1CUgo+IHBhcnRpdGlv
bi4KPiAKPiBUaGUgY29udGFpbmVyIHBhcnRpdGlvbiByZWcgPSA8MHhjMDAwMCAweDQwMDAwPiBp
biBpbXg2cWRsLXBydGk2cS1lbW1jLmR0c2kgc2VlbXMKPiB0byBiZSBkaXJlY3RseSBnb2luZyB0
byBiZWxvdyBhIE1CUiBwYXJ0aXRvbiBzdGFydGluZyBhdCAyMDQ4dGggc2VjdG9yCj4gd2l0aCBz
aXplIDI1NmtCLCBjb3JyZWN0PyAgCgpDb3VsZCBiZS4gWW91J2QgaGF2ZSB0byBrbm93IGhvdyB0
aGUgb24tZGlzayBwYXJ0aXRpb24gdGFibGUgbG9va3MgbGlrZSwKYnV0IEknZCBndWVzcyB0aGF0
IHBhcnRpdGlvbnMgYXJlIGFsaWduZWQgdG8gMU0gYm91bmRhcmllcyBhbmQgdGhpcyBpcwphcyB5
b3UgZGVzY3JpYmUgZGlyZWN0bHkgYmVuZWF0aCBpdC4KCkNoZWVycywKQWhtYWQKIAo+IFRoYW5r
cyBmb3IgeW91ciBwYXRpZW5jZSEKPiAKPiBSZWdhcmRzCj4gS29uc3RhbnRpbgo+IAo+IElOU0lE
RSBNMk0gR21iSAo+IEtvbnN0YW50aW4gS2xldHNjaGtlCj4gQmVyZW5ib3N0ZWxlciBTdHJhw59l
IDc2IEIKPiAzMDgyMyBHYXJic2VuCj4gCj4gVGVsZWZvbjogKzQ5ICgwKSA1MTM3IDkwOTUwMTM2
Cj4gTW9iaWw6ICs0OSAoMCkgMTUxIDE1MjU2MjM4Cj4gRmF4OiArNDkgKDApIDUxMzcgOTA5NTAx
MAo+IAo+IGtvbnN0YW50aW4ua2xldHNjaGtlQGluc2lkZS1tMm0uZGUKPiBodHRwOi8vd3d3Lmlu
c2lkZS1tMm0uZGUKPiAKPiBHZXNjaMOkZnRzZsO8aHJ1bmc6IE1pY2hhZWwgRW1tZXJ0LCBJbmdv
IEhhYXNlLCBEci4gRnJlZCBLw7ZuZW1hbm4sIERlcmVrIFVobGlnCj4gSFJCOiAxMTEyMDQsIEFH
IEhhbm5vdmVyCj4gCj4gCgoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIu
IDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8
CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDkt
NTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAg
ICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==

