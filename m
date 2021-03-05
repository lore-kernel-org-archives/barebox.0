Delivery-date: Fri, 05 Mar 2021 21:25:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIH0r-0003Bh-Pw
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 21:25:29 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIH0r-0005FZ-0X
	for lore@pengutronix.de; Fri, 05 Mar 2021 21:25:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UyGXHKmBgXXuTeepfkowfay+Ky9tU2wjhXbC623csxI=; b=CtWZbmrRDm7wJLeDZQ/o7t/Qb
	anHmVAVJhR1DirDZA/sbqgv7K55KRzjEY4MIgSMCFqyKNkZgpHYu/J3QG8Rqwqo989vMXgYI4K5vP
	2gbKXlNrXc9pJlUtA3WPat9536ErwFaEH2c7kxWJovm2RAe7dzYAKMkI/uhSE/SoN/zDCH99Mi10V
	OOvQD8VdxX7EaknLM5fMXwfJEGMQtWtdcMxZMmPaqY8KJ7srviNH0zYhg6DKirvzUJ4kojiFN47ai
	rH0BQBfNdA+MkIo6LtHkpkbj+PiwwLfaae+wJPEAMEPmyZz4sLm+Qkpm8S+ZPkybxKbfnIHGNcUAr
	M3HFW3siA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIGzc-00GMIt-SY; Fri, 05 Mar 2021 20:24:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIGzP-00GMFL-5Y
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 20:24:02 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lIGzO-00056i-Ds; Fri, 05 Mar 2021 21:23:58 +0100
To: =?UTF-8?Q?S=c3=a9bastien_Merle?= <sebastien.merle@stritzinger.com>,
 barebox@lists.infradead.org
References: <FC8C25F4-6D97-4F8C-83C0-7A1E112FCACC@stritzinger.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <207d6013-6071-d7d8-8a21-3a98c155be40@pengutronix.de>
Date: Fri, 5 Mar 2021 21:23:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <FC8C25F4-6D97-4F8C-83C0-7A1E112FCACC@stritzinger.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_202400_099378_78A42C17 
X-CRM114-Status: GOOD (  28.33  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: A/B boot on PhyCORE iMX6 with U-Boot env
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gU8OpYmFzdGllbiwKCk9uIDA1LjAzLjIxIDE4OjMwLCBTw6liYXN0aWVuIE1lcmxlIHdy
b3RlOgo+IEZpcnN0LCBJIGFtIGEgbmV3YmllIHRvIHRoaXMgYW5kIGlmIEkgc2hvdWxkIHVzZSBh
bm90aGVyIGNoYW5uZWwgdG8gYXNrIHRoZXNlIHF1ZXN0aW9ucywgcGxlYXNlIGZvcmdpdmUgbWUg
YW5kIHJlZGlyZWN0IG1lIHRvIHRoZSBwcm9wZXIgcGxhY2UuCgpIZXJlIGlzIG9rLgoKPiBJIGFt
IHRyeWluZyB0byBzZXR1cCBBL0IgYm9vdCBvbiBhIGEgcGh5Q09SRSBpbXg2IGJvYXJkIHdpdGgg
YmFyZWJveCBmcm9tIEVNTUMuIFRvIHRlc3QgdGhlIHN0YXRlIGZyYW1ld29yayBJIGFkZGVkIEJh
cmVib3jigJlzIGlteDZ1bC1waHl0ZWMtc3RhdGUuZHRzaSB0byBteSBkZXZpY2UgdHJlZS4gCj4g
IAo+IEkgYW0gY29uZnVzZWQgYWJvdXQgdGhlICZlZXByb20gbm9kZSBpbiBpbXg2dWwtcGh5dGVj
LXN0YXRlLmR0c2kgdXNlZCBmb3IgdGhlIHN0YXRlIGJhY2tlbmQsIHdoYXQgaXMgdGhpcyBkZWZp
bmluZyA/IElzIHRoaXMgcmVhbGx5IHN0b3JpbmcgdGhlIHN0YXRlIGluIHRoZSBFTU1DID8KClRo
ZSBzdGF0ZSBub2RlIGhhcyBhIGJhY2tlbmQgcHJvcGVydHksIHdoaWNoIHBvaW50cyBhdCBhIHBh
cnRpdGlvbiB3aXRoaW4gRUVQUk9NLgpZb3UgY2FuIGhhdmUgc3RhdGUgaW4gZU1NQyBhcyB3ZWxs
IGlmIHlvdXIgcHJlZmVyLCBidXQgRUVQUk9NIHdvcmtzIHdlbGwgdG9vLgoKKE5vdGUgdGhhdCBv
bGRlciBMaW51eCB2ZXJzaW9ucyBtaWdodCBub3QgbGlrZSBwYXJ0aXRpb25zIHdpdGhpbiBlTU1D
IGRldmljZXMuCiBJZiB5b3UgaGF2ZSBwcm9ibGVtcywgeW91IGNhbiBjaGVycnktcGljayAwNDQ1
ZWZhY2VjNyAoIm52bWVtOiBjb3JlOiBza2lwIGNoaWxkCiBub2RlcyBub3QgbWF0Y2hpbmcgYmlu
ZGluZyIpKQogCj4gV2Ugd291bGQgcmF0aGVyIHVzZSBVLUJvb3QgZW52LCBhcyBvdXIgZmlybXdh
cmUgY3JlYXRpb24gdG9vbHMgb25seSBzdXBwb3J0IHRoYXQgZm9yIG5vdy4KCkFzIG1lbnRpb25l
ZCBvbiBJUkMsIHRoaXMgaXMgYSBiYWQgaWRlYS4gQmV0dGVyIGhhdmUgeW91ciBpbWFnZSB1cGRh
dGVyCnVzZSBkdC11dGlscycgYmFyZWJveC1zdGF0ZSB1dGlsaXR5LiBTZWUgaG93IFJBVUMgZG9l
cyBpdCBmb3IgYW4gZXhhbXBsZS4KCj4gVG8gc2V0dXAgbXkgZmlybXdhcmUgdXBkYXRlIEkgbmVl
ZCB0byBkZWZpbmUgdGhlIG9mZnNldCBvZiBiYXJlYm94LCBiYXJlYm94IGVudmlyb25tZW50IGFu
ZCBVLUJvb3QgZW52aXJvbm1lbnQgYnV0IEkgY2Fu4oCZdCBmaW5kIHdoYXQgb2Zmc2V0cyBJIHNo
b3VsZCB1c2Ugc28gbm90aGluZyBjbGFzaC4gSG93IGNvdWxkIEkgZmlndXJlIG91dCB0aGVzZSBv
ZmZzZXRzID8KClRoZXkgYXJlIGFsbCBmaXhlZC1wYXJ0aXRpb25zLCBzbyB5b3Ugc3BlY2lmeSB0
aGVtIGluIHRoZSBkZXZpY2UgdHJlZS4KCj4gVGhlIGlkZWEgd2FzIHRvIGFkZCBhIFUtQm9vdCBl
bnZpcm9ubWVudCBhbmQgdXNlIGEgc2NyaXB0IHRvIGJvb3QgQSBvciBCIGluIGZ1bmN0aW9uIG9m
IHRoZSBVLUJvb3QgdmFyaWFibGVzLiBJcyBpdCBldmVuIHBvc3NpYmxlID8KClBvc3NpYmxlLCB5
ZXMuIEdvb2QgaWRlYT8gcHJvYmFibHkgbm90LgoKPiBJZiBpdCBpcyBwb3NzaWJsZSwgZG8gSSBu
ZWVkIHRvIGFkZCBhIHBhcnRpdGlvbiBvZiB0aGUgRU1NQyBpbiBteSBkZXZpY2UgdHJlZSBhcyBz
aG93biBpbiBodHRwczovL3d3dy5iYXJlYm94Lm9yZy9kb2MvbGF0ZXN0L2RldmljZXRyZWUvYmlu
ZGluZ3MvYmFyZWJveC9iYXJlYm94LHVib290LWVudmlyb25tZW50Lmh0bWwgPwoKYXJjaC9hcm0v
ZHRzIGhhcyBvbmUgZXhhbXBsZSBvZiB1c2luZyBpdC4gSXQgd2FzIHVzZWQgZm9yIG1pZ3JhdGlu
ZyBmcm9tIFUtQm9vdCB0byBiYXJlYm94LgoKPiBJIHdvdWxkIGJlIGdyYXRlZnVsIGZvciBhbnkg
cG9pbnRlcnMgdG8gZG9jdW1lbnRhdGlvbiBvciBleGFtcGxlcyB0byBzZXR1cCBBL0IgYm9vdCBv
biBzaW1pbGFyIHBsYXRmb3JtICh3aXRob3V0IHlvY3RvKS4KPiAKPiBUaGFuayB5b3UgdmVyeSBt
dWNoIGZvciB5b3VyIHRpbWUuCgpDaGVlcnMsCkFobWFkCgo+IAo+IEJlc3QgcmVnYXJkcywKPiBT
ZWJhc3RpZW4gTWVybGUsCj4gUGVlciBTdHJpdHppbmdlciBHbWJILgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWlsaW5nIGxpc3QK
PiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKPiAKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1
ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1
dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAg
fCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBI
UkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

