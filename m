Delivery-date: Tue, 27 Jul 2021 09:17:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8HKu-0003f6-82
	for lore@lore.pengutronix.de; Tue, 27 Jul 2021 09:17:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8HKt-0000pL-2S
	for lore@pengutronix.de; Tue, 27 Jul 2021 09:17:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=++SZMUSDY+KJ58ih0xzYVH6eo7cIoV/za/8+HvATTmw=; b=aRQaZiH4DjEyoMTmITylCm+UTh
	HHEN1QhSe2wd3GQYoizKwVu2+ZByn36Zz2MhGQ3tOex7xFdC2nk6oK7SkzR/ShmuFrww+zfAy8ro2
	5eVALi1FqWtHI9qGXTnCTIFiTiYvd+0xbSvYzZZhjx6pZf9umt6cVFOnFbrUw7qQVnvAbzLDqoWOk
	jtf9Pe4t87lMHwbz6XZj/wMJRl/U6N1DzNmTIU1OabysUx9Uv+yETqF7Uq61tGHbzvFOB/IsCcwLx
	Q6xkXcJS8Gmz0++h8rdZ86gaps4Jp2gvSFIMaC+IzBU2wudNWcw41Vyg6cBCUla4peHGf+k1zkhR3
	5PsJFP1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8HIn-00Dlxp-2I; Tue, 27 Jul 2021 07:14:57 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8FWb-00DPCR-Cg
 for barebox@lists.infradead.org; Tue, 27 Jul 2021 05:21:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2paiM8AOx4drN+PA7DmcpVHAArh1R32tGAjJFhTwUDw=; b=JiDsGN+w24H5nVEYWyBKZO5qX7
 MgI+d8aL+cpmD9aUCWVz9xwSqkafpe4D7wdqOoN73AaWGB+EYPyNSbMTUcdunC2Z6kC4JHr4taTzO
 McdhhlJfBZQO8aGH/d55LWbhhFsxPht6VykVir9wuCNVAMWEP4Ssx2XaPQd7lG4oBWqQuZOuFKk6i
 EQw4fbWbzF6XFyzTdxS9OfXwWq5Yz/Swjiu6xYnRfw9z8xrzt5GMWq3aNLhC7GpXNyHMnrOx553xi
 6+JEr7JwXntDeHO/cJGQfjH+FY2RZddd9ktelSBp9UysI6/dswVlzaHLe5BXVf+WTIk+ZeKpg2kyD
 6OxwaCtQ==;
Received: from [89.212.21.243] (port=56572 helo=[192.168.69.215])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1m8FWJ-00Ga6T-W5
 for barebox@lists.infradead.org; Tue, 27 Jul 2021 07:20:56 +0200
To: barebox@lists.infradead.org
References: <4e1aa199-a5fa-2ad5-80cb-ef3cf86fd174@norik.com>
From: Andrej Picej <andrej.picej@norik.com>
Message-ID: <e1659342-6028-b76a-9445-4f96d3c54c8b@norik.com>
Date: Tue, 27 Jul 2021 07:20:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <4e1aa199-a5fa-2ad5-80cb-ef3cf86fd174@norik.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210726_222105_830847_98C7669B 
X-CRM114-Status: GOOD (  25.17  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Not successful if statements returning error code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SnVzdCBzYXcgdGhhdCBJIGZvcmdvdCB0byBtZW50aW9uIHRoZSBtYWluIHJlYXNvbiwgd2h5IHRo
aXMgaXMgaW1wb3J0YW50LgpXZSBoYXZlIGEgY291cGxlIG9mIGJvb3Qgc2NyaXB0cyB3aGljaCBl
bmQgd2l0aCBpZiBzdGF0ZW1lbnRzLiBJZiAKY29uZGl0aW9ucyBvZiB0aGVzZSBpZiBzdGF0ZW1l
bnRzIGFyZSBub3QgbWV0IHRoZW4gdGhlIGJvb3Qgc2NyaXB0IApyZXR1cm5zIGVycm9yIGNvZGUg
YW5kIHRoZSBib290aW5nIHByb2Nlc3MgaXMgYnJva2VuOgoKPiBSdW5uaW5nIHNjcmlwdCAnL2Vu
di9ib290L21tYycgZmFpbGVkOiBlcnJvciAtMQo+IEJvb3RpbmcgZW50cnkgJ21tYycgZmFpbGVk
Cj4gTm90aGluZyBib290YWJsZSBmb3VuZAoKQlIsCkFuZHJlagoKT24gMjMuIDA3LiAyMSAxMjox
OCwgQW5kcmVqIFBpY2VqIHdyb3RlOgo+IEhpIGFsbCwKPiAKPiBJIGhhdmUgYSBxdWVzdGlvbiBh
Ym91dCBIdXNoIHNoZWxsIGFuZCB0aGUgdXNlIG9mIGl0cyBjb25kaXRpb25hbCAKPiBzdGF0ZW1l
bnRzLgo+IFdlIGhhdmUgY29tZSB1cG9uIGFuIGludGVyZXN0aW5nIGJlaGF2aW91ciB3aXRoIGl0
cyByZXR1cm4gdmFsdWVzLgo+IAo+IElmIHRoZSBjb25kaXRpb24gb2YgdGhlIGlmIHN0YXRlbWVu
dCBpcyBub3QgdHJ1ZSB0aGVuIHRoZSByZXR1cm4gdmFsdWUgCj4gaXMgMSAoZXJyb3IgY29kZSks
IGFuZCBpZiB0aGUgY29uZGl0aW9uIGlzIHRydWUgdGhlIHJldHVybiB2YWx1ZSBpcyAwIAo+IChz
dWNjZXNzKS4KPiAKPiBTaW1wbGUgdGVzdDoKPj4gIyEvYmluL3NoCj4+IGlmIFsgMCAtZ3QgMSBd
OyB0aGVuCj4+IMKgIGVjaG8gIjAgZ3QgMSwgUmV0OiAkPyIKPj4gZmkKPj4gZWNobyAiUmV0OiAk
PyIKPj4KPj4gaWYgWyAyIC1ndCAxIF07IHRoZW4KPj4gwqAgZWNobyAiMiBndCAxLCBSZXQ6ICQ/
Igo+PiBmaQo+PiBlY2hvICJSZXQ6ICQ/Igo+IAo+IE91dHB1dDoKPj4gUmV0OiAxCj4+IDIgZ3Qg
MSwgUmV0OiAwCj4+IFJldDogMAo+IAo+IFRoaXMgbWVhbnMgdGhhdCBpZiwgZm9yIGV4YW1wbGUg
dGhlIGZpcnN0IGlmIHN0YXRlbWVudCAod2hlcmUgY29uZGl0aW9uIAo+IGlzIG5vdCBtZXQpIHdv
dWxkIGJlIGF0IHRoZSBlbmQgb2YgYSBzY3JpcHQgdGhlIHJldHVybiB2YWx1ZSBvZiB0aGF0IAo+
IHdob2xlIHNjcmlwdCB3b3VsZCBiZSAxIChlcnJvciBjb2RlKS4KPiBJIGRvbid0IHRoaW5rIHRo
aXMgZm9sbG93cyBzdGFuZGFyZCBzaGVsbCBiZWhhdmlvdXIuIElmIGlmIHN0YXRlbWVudCAKPiBj
b25kaXRpb24gaXMgbm90IG1ldCB0aGlzIGRvZXNuJ3QgbWVhbiB0aGF0IHRoZSByZXR1cm4gdmFs
dWUgc2hvdWxkIGJlIAo+IGFuIGVycm9yIGNvZGUsIHJpZ2h0Pwo+IFVzaW5nIG90aGVyIHNoZWxs
cyAoYmFzaCBmb3IgZXhhbXBsZSkgd2UgY2FuIHNlZSB0aGF0IHRoZSByZXR1cm5lZCB2YWx1ZSAK
PiBpbiBib3RoIGNhc2VzIGlzIDAsIHdoaWNoIGlzIGV4cGVjdGVkIChJTU8pLgo+IAo+IFRoaXMg
YmVoYXZpb3VyIGlzIG5vdCBuZXcgdG8gdGhlIEh1c2ggb3IgYmFyZWJveCBhcyBJIGNvdWxkIHJl
cHJvZHVjZSBpdCAKPiBvbiB2YXJpb3VzIHByZXZpb3VzIGJhcmVib3ggdmVyc2lvbnMgKDIwMTMu
MDguMCwgMjAxNy4xMi4wIGFuZCAyMDE5LjExLjApLgo+IAo+IE9mIGNvdXJzZSwgdGhpcyBwcm9i
bGVtIGNhbiBiZSBlYXNpbHkgYXZvaWRlZCBpZiBhdCB0aGUgZW5kIG9mIGV2ZXJ5IAo+IHNjcmlw
dCB3ZSB1c2UgZXhwbGljaXQgZXhpdCAwLiBUaGlzIGlzIGRvYWJsZSwgYnV0IGEgbGl0dGxlIGFu
bm95aW5nLgo+IAo+IEFsdGhvdWdoIHRoaXMgaXMgbm90IGEgZGVhbC1icmVha2VyIGZvciB1cywg
SSB3YXMgd29uZGVyaW5nIHdoYXQgaXMgdGhlIAo+IHJlYXNvbiBiZWhpbmQgdGhpcz8gSG93IGRv
IHlvdSBnZXQgYXJvdW5kIHRoaXMgYW5kIGFyZSB0aGVyZSBhbnkgcGxhbnMgCj4gdG8gZml4L21v
ZGlmeSB0aGlzIGluIHRoZSBmdXR1cmUgc28gaXQgZm9sbG93cyB0aGUgYmVoYXZpb3VyIG9mIG90
aGVyIAo+IHNoZWxscz8KPiAKPiBUaGFuayB5b3UgZm9yIHlvdXIgYW5zd2VyLgo+IAo+IEJlc3Qg
cmVnYXJkcywKPiBBbmRyZWoKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IGJhcmVib3ggbWFpbGluZyBsaXN0Cj4gYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

