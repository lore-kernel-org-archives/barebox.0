Delivery-date: Fri, 19 Nov 2021 11:31:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo1BF-0002IW-Pe
	for lore@lore.pengutronix.de; Fri, 19 Nov 2021 11:31:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo1BE-0002Wq-Oy
	for lore@pengutronix.de; Fri, 19 Nov 2021 11:31:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gHccmnnWBgrSBiCpI9xALFE5gb6O+mgiE2Jb90W6fwE=; b=eInpX+7ZSvEvK4R6glnZ6BF+8+
	rkfvt/yLWr4WPyShKtdHrp89+vZxrbGQMc3j16pzTkhT88ZyS/MkRPG9hPDAaHC3DYNf4W7dvqEKf
	feWRHZHRkZe2CRAGiQTSk4Oq7nI1j8aLfaHe+0Xdz2PeACE79as5h5yec5CeMitl2/J3oXVmOVZ9g
	PooM1uJ5NkUTjGQqb2do2K5FxPkykN1TfTOUMGryMsLEfDDz8XHiJLLHGoF9yc3aJJPdvNHYVwk3t
	AACfiGhp42F8ykl3rKK9hJ+vU9mR1Acd3QaIaQ/KG4DAG7e7vCgK0kwE2/7oHJwJ93+apruMmVdoQ
	bpvn2HLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo19o-00A7Z0-AU; Fri, 19 Nov 2021 10:30:12 +0000
Received: from smtp120.iad3b.emailsrvr.com ([146.20.161.120])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo19i-00A7Y5-V0
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 10:30:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1637317803;
 bh=KWQUZpI6thEA3LwJDIc3byQrJDhrQdgl8ta7GUq2/yU=;
 h=Subject:To:From:Date:From;
 b=i6aPcgGJUrl413IiasbsMbV5DUBs7Pae7JT0ev/YI6DNVsqLRK3nbt7P4arEzMsoS
 8wCwnC055OmEITlcgKQ5ioWU2uU+vcpV7wpyfRlim4tzRZqOMfhtG1qb1lqKIHo0/L
 MYlCF9KJ/TIHHi9CPdV2eATpKDltCwhLmQH10L1k=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp16.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 97C70C00C5
 for <barebox@lists.infradead.org>; Fri, 19 Nov 2021 05:30:03 -0500 (EST)
To: barebox@lists.infradead.org
References: <62b76c10-a376-a2f5-5b21-fdda86db4a03@mev.co.uk>
 <20211119092916.GD5253@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <3bc9c94a-55b2-c7b3-0546-7959bb45219c@mev.co.uk>
Date: Fri, 19 Nov 2021 10:30:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211119092916.GD5253@pengutronix.de>
Content-Language: en-GB
X-Classification-ID: 91cca802-6617-467c-8004-890434c7f576-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_023007_189376_1A755919 
X-CRM114-Status: GOOD (  22.47  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Build failures with CC=arm-linux-gnueabihf-gcc-11
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgTWljaGFlbCwKCk9uIDE5LzExLzIwMjEgMDk6MjksIE1pY2hhZWwgT2xicmljaCB3cm90ZToK
PiBPbiBUaHUsIE5vdiAxOCwgMjAyMSBhdCAwMzozMjowNFBNICswMDAwLCBJYW4gQWJib3R0IHdy
b3RlOgo+PiBIaSwKPj4KPj4gTXkgRGViaWFuICJ0ZXN0aW5nIiBidWlsZCBzeXN0ZW0gdXBkYXRl
ZCB0aGUgZGVmYXVsdCB2ZXJzaW9uIG9mCj4+IGFybS1saW51eC1nbnVlYWJpaGYtZ2NjIGZyb20g
MTAueCB0byAxMS54LiAgQnVpbGRpbmcgYmFyZWJveCBpbiB0aHVtYi0yIG1vZGUKPj4gZm9yIGFu
IEFSTXY3IChpdCdzIGEgU29DRlBHQSkgd2l0aCB0aGlzIGNvbXBpbGVyIGZhaWxzIHdpdGggYXNz
ZW1ibGVyIGVycm9ycwo+PiBzdWNoIGFzOgo+Pgo+PiAgICBDQyAgICAgIGNvbW1vbi9zdGF0ZS9z
dGF0ZV92YXJpYWJsZXMubwo+PiB7c3RhbmRhcmQgaW5wdXR9OiBBc3NlbWJsZXIgbWVzc2FnZXM6
Cj4+IHtzdGFuZGFyZCBpbnB1dH06MTUzNTogRXJyb3I6IHNlbGVjdGVkIHByb2Nlc3NvciBkb2Vz
IG5vdCBzdXBwb3J0IGByZXYKPj4gcjMscjMnIGluIFRodW1iIG1vZGUKPj4ge3N0YW5kYXJkIGlu
cHV0fToxNTc2OiBFcnJvcjogc2VsZWN0ZWQgcHJvY2Vzc29yIGRvZXMgbm90IHN1cHBvcnQgYHJl
dgo+PiByMyxyMycgaW4gVGh1bWIgbW9kZQo+Pgo+PiBCdWlsZGluZyBpbiB2ZXJib3NlIG1vZGUg
KFY9MSkgc2hvd3MgdGhhdCAibWFrZSIgaGFzIHNlbGVjdGVkIHRoZSBjb21waWxlCj4+IGZsYWdz
IGAtbWFyY2g9YXJtdjV0IC1XYSwtbWFyY2g9YXJtdjctYWAgaW5zdGVhZCBvZiB0aGUgdXN1YWwK
Pj4gYC1tYXJjaD1hcm12Ny1hYC4KPj4KPj4gTG9va2luZyBhIGxpdHRsZSBkZWVwZXIsIGFsbCBv
ZiB0aGUgZm9sbG93aW5nIGxpbmVzIGluICJhcmNoL2FybS9NYWtlZmlsZSIKPj4gYXJlIGZhaWxp
bmcgdG8gc2VsZWN0IHRoZSBmaXJzdCBvcHRpb24gYW5kIGRlZmF1bHRpbmcgdG8gdGhlIHNlY29u
ZCBvcHRpb24KPj4gKGlmIGFueSk6Cj4gCj4gSXQgcHJvYmFibHkgaXMgYWRkZWQgZnJvbSBoZXJl
Ogo+IAo+IGFyY2gtJChDT05GSUdfQ1BVXzMydjcpCQk6PS1EX19MSU5VWF9BUk1fQVJDSF9fPTcg
JChjYWxsIGNjLW9wdGlvbiwtbWFyY2g9YXJtdjctYSwtbWFyY2g9YXJtdjV0IC1XYSQoY29tbWEp
LW1hcmNoPWFybXY3LWEpCj4gCj4gVGhlIGNoZWNrIGZvciAtbWFyY2g9YXJtdjctYSBmYWlscyBm
b3Igc29tZSByZWFzb24gc28gdGhlIGZhbGxiYWNrIGlzIHVzZWQuCgpZZXMsIEkgc2hvd2VkIHRo
ZSBleGFjdCBmYWlsdXJlIHJlc3VsdGluZyBmcm9tIHRoZSBjYy1vcHRpb24gY2FsbCAKZnVydGhl
ciBkb3duIG15IGVtYWlsOgoKY2MxOiBlcnJvcjog4oCYLW1mbG9hdC1hYmk9aGFyZOKAmTogc2Vs
ZWN0ZWQgYXJjaGl0ZWN0dXJlIGxhY2tzIGFuIEZQVQoKPiBJJ3ZlIHNlZW4gdGhpcyB3aGVuIEND
IGlzIGEgd3JhcHBlciBhbmQgYWxyZWFkeSBhZGRzIC1tY3B1PS4uLiB0byB0aGUKPiBjb21tYW5k
bGluZS4gSW4gdGhhdCBjYXNlIGdjYyBub3cgY29tcGxhaW5zIGFib3V0IHRoZSBjb21iaW5hdGlv
biBhbmQgdGhlCj4gY2hlY2sgZmFpbHMuCgpJbiBteSBjYXNlLCBDQyB3YXMgc2V0IGJ5IHRoaXMg
ImJ1aWxkLnNoIiBzY3JpcHQ6CgojISAvYmluL3NoCiAKClNSQz0iLi4vYmFyZWJveC1kZTAtbmFu
by1zb2MiIAoKQVJDSD0iYXJtIgpDUk9TU19DT01QSUxFPWFybS1saW51eC1nbnVlYWJpaGYtCkND
PSckKENST1NTX0NPTVBJTEUpZ2NjLTExJwoKbWFrZSAtQyAiJFNSQyIgTz1gcHdkYCBBUkNIPSIk
QVJDSCIgQ1JPU1NfQ09NUElMRT0iJENST1NTX0NPTVBJTEUiIApDQz0iJENDIiAkKgoKCnNvIGFm
dGVyIGV4cGFuc2lvbiwgQ0M9YXJtLWxpbnV4LWdudWVhYmloZi1nY2MtMTEKCj4gCj4gTWljaGFl
bAoKQ2hlZXJzLCBJYW4uCgo+IAo+PiBhcmNoLSQoQ09ORklHX0NQVV82NHY4KQkJOj0gLURfX0xJ
TlVYX0FSTV9BUkNIX189OCAkKGNhbGwKPj4gY2Mtb3B0aW9uLC1tYXJjaD1hcm12OC1hKQo+PiBh
cmNoLSQoQ09ORklHX0NQVV8zMnY3KQkJOj0tRF9fTElOVVhfQVJNX0FSQ0hfXz03ICQoY2FsbAo+
PiBjYy1vcHRpb24sLW1hcmNoPWFybXY3LWEsLW1hcmNoPWFybXY1dCAtV2EkKGNvbW1hKS1tYXJj
aD1hcm12Ny1hKQo+PiBhcmNoLSQoQ09ORklHX0NQVV8zMnY2KQkJOj0tRF9fTElOVVhfQVJNX0FS
Q0hfXz02ICQoY2FsbAo+PiBjYy1vcHRpb24sLW1hcmNoPWFybXY2LC1tYXJjaD1hcm12NXQgLVdh
JChjb21tYSktbWFyY2g9YXJtdjYpCj4+IGFyY2gtJChDT05GSUdfQ1BVXzMydjUpCQk6PS1EX19M
SU5VWF9BUk1fQVJDSF9fPTUgJChjYWxsCj4+IGNjLW9wdGlvbiwtbWFyY2g9YXJtdjV0ZSwtbWFy
Y2g9YXJtdjR0KQo+Pgo+PiBUaGUgZXJyb3IgZnJvbSB0aGUgY29tcGlsZXIgaXM6Cj4+Cj4+IGNj
MTogZXJyb3I6IOKAmC1tZmxvYXQtYWJpPWhhcmTigJk6IHNlbGVjdGVkIGFyY2hpdGVjdHVyZSBs
YWNrcyBhbiBGUFUKPj4KPj4gKE5vdGU6IHRoZSBlcnJvciBpcyBvbmx5IHNob3duIGFmdGVyIHR3
ZWFraW5nIHRoZSBgdHJ5LXJ1bmAgY29tbWFuZCBpbgo+PiAic2NyaXB0cy9LYnVpbGQuaW5jbHVk
ZSIgc28gdGhhdCBpdCBkb2VzIG5vdCBzZW5kIGVycm9yIG91dHB1dCB0bwo+PiAiL2Rldi9udWxs
Ii4pCj4+Cj4+IFRoYXQgZXJyb3Igc2VlbXMgdG8gYmUgYSBjaGFuZ2UgaW4gYmVoYXZpb3VyIGJl
dHdlZW4gR0NDIDEwLnggYW5kIEdDQyAxMS54Lgo+Pgo+PiBBdCB0aGUgcG9pbnQgaW4gdGhlIE1h
a2VmaWxlIHRoYXQgdGhlIGVycm9yIG9jY3VycywgdGhlIGAtbXNvZnQtZmxvYXRgCj4+IG9wdGlv
biBoYXMgbm90IGJlZW4gYWRkZWQgdG8gYEtCVUlMRF9DUFBGTEFHU2AgeWV0LiBUaGF0IGlzIGRv
bmUgZnVydGhlcgo+PiBkb3duIHRoZSBNYWtlZmlsZSBleGNlcHQgZm9yIGBDT05GSUdfQ1BVX1Y4
YC4gIEkgZ3Vlc3MgaXQgbmVlZHMgdG8gYmUgYWRkZWQKPj4gc29tZXdoZXJlIGJlZm9yZSBwcm9i
bGVtYXRpYyBsaW5lcyBpbiB0aGUgTWFrZWZpbGUuICBJJ20gbm90IHN1cmUgaWYKPj4gYC1tc29m
dC1mbG9hdGAgaXMgYWxzbyBuZWVkZWQgZm9yIDY0LWJpdCBBUk12OCwgYnV0IHRoZSBlcnJvciBz
dWdnZXN0cyBpdCBpcwo+PiByZXF1aXJlZCB0aGVyZSB0b28uCj4gCgoKLS0gCi09KCBJYW4gQWJi
b3R0IDxhYmJvdHRpQG1ldi5jby51az4gfHwgTUVWIEx0ZC4gaXMgYSBjb21wYW55ICApPS0KLT0o
IHJlZ2lzdGVyZWQgaW4gRW5nbGFuZCAmIFdhbGVzLiAgUmVnZC4gbnVtYmVyOiAwMjg2MjI2OC4g
ICk9LQotPSggUmVnZC4gYWRkci46IFMxMSAmIDEyIEJ1aWxkaW5nIDY3LCBFdXJvcGEgQnVzaW5l
c3MgUGFyaywgKT0tCi09KCBCaXJkIEhhbGwgTGFuZSwgU1RPQ0tQT1JULCBTSzMgMFhBLCBVSy4g
fHwgd3d3Lm1ldi5jby51ayApPS0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

