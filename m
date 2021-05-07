Delivery-date: Fri, 07 May 2021 20:09:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf4ux-00054g-CW
	for lore@lore.pengutronix.de; Fri, 07 May 2021 20:09:39 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf4uw-00038e-Gq
	for lore@pengutronix.de; Fri, 07 May 2021 20:09:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KxVQ4uLIAilUxkyB8BybZTqlFlRf9BnvyLFiOvYHU2U=; b=mVaYwYkovmWSmk7jbJkk/e94B
	Qd2W+fNwHohIQ2dqb0gydrvn45H8r8NN2lyKRu/ulxenSvK8kdOL/xWuxEM4xIdWXxE7DoedA76nS
	H/C/Z6Sg/UvQC6rPxDO91WrTQ9mRmSvC1doezQ5CytKIKX9gbKPmZgzzlNI7ltAWzV4fWdZ/fO2wT
	eyTpn61/2qnDP9EwWo23kYCd9tSLX9I1MqGwbZ2Igk/+2xGvrVXPFCq3Xgl53KB1nXD3cVDxwb4F7
	QKy5Tm0K9qX868tJUvHoU40vwOObhkqKTCMboUzJB3u5DPLCK+mUl730aSJd9pbZr4WMTPflVmbw6
	scjczci+Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf4uG-007kSB-Bh; Fri, 07 May 2021 18:08:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf4uD-007kS4-0R
 for barebox@desiato.infradead.org; Fri, 07 May 2021 18:08:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=k/7eGIKwhjQoPE+1eH0teemospjh9MXW86V+yc9bVEc=; b=df+BdKIN8KXqxTphqtE+4rqQhX
 qY4LGWV/H4pQ35VfN7BaSHtlNE6LozT+z8S8GXzW275fLQjeJ56Pe38Ez8L9IugpCXyrnEljla2u9
 ccocZUmOaZSdhADY9MN47Ui9eIgM8/y3/+yaXJT//cZKGqeCGaldhJnfH07F2Avr3PtoqoY5DZmko
 IOglnhjPm2aDc9xGQMbypOE27b3MHpIckflFF2I+mqbp2EJOL+vB7DJBSb5l0hJu/hMJwWz1SxALT
 lM+9YWqKoJOVpECuKxxE0lPOyo04XbKSieMwhl8BFxIhgWLehBfr3RGgjec5mmQQSmy9xAVAiUjgU
 /9faT05w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf4uA-0073ve-4X
 for barebox@lists.infradead.org; Fri, 07 May 2021 18:08:51 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lf4u8-00035Z-R9; Fri, 07 May 2021 20:08:48 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>,
 Rouven Czerwinski <rcz@pengutronix.de>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
 <20210506220834.223350-3-antonynpavlov@gmail.com>
 <c1791cb3-2837-eb3e-aa58-9d1eb2a3d7b5@pengutronix.de>
 <20210507172527.cf80cf7cb749560d2e8200cd@gmail.com>
 <28074d89-492c-48ac-d93e-103092e073cd@pengutronix.de>
 <20210507205249.bff9c677e81494c210205ac4@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0a6bd853-6f84-b699-a1d1-1b1a18ad50cb@pengutronix.de>
Date: Fri, 7 May 2021 20:08:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210507205249.bff9c677e81494c210205ac4@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_110850_207563_BFDDDBE7 
X-CRM114-Status: GOOD (  25.43  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 02/11] RISC-V: make RISCV_SBI and RISCV_M_MODE
 explicitly mutually exclusive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksCgpPbiAwNy4wNS4yMSAxOTo1MiwgQW50b255IFBhdmxvdiB3cm90ZToKPiBPbiBGcmksIDcg
TWF5IDIwMjEgMTY6NDQ6MjQgKzAyMDAKPiBBaG1hZCBGYXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJv
bml4LmRlPiB3cm90ZToKPiAKPiBIaSBBaG1hZCAhCj4gCj4+IEhlbGxvIEFudG9ueSwKPj4KPj4g
T24gMDcuMDUuMjEgMTY6MjUsIEFudG9ueSBQYXZsb3Ygd3JvdGU6Cj4+Pj4gSSB3b3VsZCByZWFs
bHkgbGlrZSB0byBoYXZlIGEgcmlzY3Z7MzIsNjR9X2RlZmNvbmZpZyB0aGF0IGNhbiBqdXN0IGJ1
aWxkIGFsbCBib2FyZHMKPj4+PiBhdCBvbmNlLiBEbyB5b3Uga25vdyBpZiB0aGlzIGNvdWxkIGJl
IGR5bmFtaWNhbGx5IGRldGVybWluZWQ/Cj4+Pgo+Pj4gQXQgdGhlIG1vbWVudCBJIGhhdmUgbm90
IGFuc3dlci4KPj4+IEknbGwgdHJ5IHRvIGludmVzdGlnYXRlIGR5bmFtaWMgbW9kZSBkZXRlcm1p
bmF0aW9uLCBpdCdzIHZlcnkgYXR0cmFjdGl2ZSBpZGVhLgo+Pj4KPj4+IE9uIHRoZSBvdGhlciBo
YW5kIGNvbXBpbGUgdGltZSBtb2RlIHNlbGVjdGlvbiBpcyBub3QgdGhlIHNob3cgc3RvcHBlciBm
b3IKPj4+ICJvbmUgZGVmY29uZmlnIHRvIGJ1aWxkIHRoZW0gYWxsIjogd2UgaGF2ZSB0byBtYWtl
IFNUQUNLX1NJWkUgYW5kIE1BTExPQ19TSVpFCj4+PiBwZXItYm9hcmQgcGFyYW1ldGVycyBub3Qg
cGVyLWRlZmNvbmZpZyBwYXJhbWV0ZXJzIGxpa2Ugbm93Lgo+Pj4KPj4+IElmIHdlIGNvdWxkIG1h
a2UgU1RBQ0tfU0laRSBhbmQgTUFMTE9DX1NJWkUgcGVyLWJvYXJkIGNvbXBpbGUtdGltZSBwYXJh
bWV0ZXJzIHRoZW4KPj4+IHdlIGNhbiBtYWtlIFJJU0MtViBtb2RlIHBlci1ib2FyZCBjb21waWxl
LXRpbWUgcGFyYW1ldGVyIHRvby4gSXMgdGhpcyBzb2x1dGlvbgo+Pj4gYWNjZXB0YWJsZT8KPj4K
Pj4gTUFMTE9DX1NJWkUgY2FuIGJlIHNldCBhcyAwIGFuZCBiYXJlYm94IHdpbGwgZGV0ZXJtaW5l
IGl0IGJhc2VkIG9uCj4+IG1lbWJhc2UgKyBtZW1zaXplIHRoYXQgYXJlIHNldCBieSBQQkwuCj4+
Cj4+IFNUQUNLX1NJWkUgbXVzdCBiZSBzZXQgcGVyIEtjb25maWcsIGJ1dCBJIHRoaW5rIGV2ZW4g
YSBnZW5lcm91cyBkZWZhdWx0IHN0YWNrCj4+IHNpemUgc2hvdWxkIGFjY29tbW9kYXRlIGFsbCB0
YXJnZXRzLgo+Pgo+PiBJZiB3ZSBkbyB0aGUgc2FtZSBmb3IgUklTQy1WIG1vZGUgdGhhdCB3b3Vs
ZCBwcm9iYWJseSBtZWFuIGhhdmluZwo+PiB0d28gZnVuY3Rpb25zIGJhcmVib3hfcmlzY3ZfbWFj
aGluZV9lbnRyeSgpIGFuZCBiYXJlYm94X3Jpc2N2X3N1cGVydmlzb3JfZW50cnkoKQo+PiBpbiBQ
QkwgdGhhdCB0YWtlIGNhcmUgdG8gcGFzcyB0aGUgY29ycmVjdCBpbmZvIHRvIGJhcmVib3ggcHJv
cGVyLgo+Pgo+PiBBcHBhcmVudGx5LCB5b3UgY2FuIGRldGVybWluZSBtb2RlIGlmIHlvdSBjYXRj
aCBleGNlcHRpb25zOgo+PiBodHRwczovL2ZvcnVtcy5zaWZpdmUuY29tL3QvaG93LXRvLWRldGVy
bWluZS10aGUtY3VycmVudC1leGVjdXRpb24tcHJpdmlsZWdlLW1vZGUvMjgyMwo+IAo+IEhtbSwg
YW5zd2VyIGlzIG1vc3RseSBuZWdhdGl2ZToKPiAKPiA8PAo+ICAgUklTQy1WIGRlbGliZXJhdGVs
eSBkb2VzbuKAmXQgbWFrZSBpdCBlYXN5IGZvciBjb2RlIHRvIGRpc2NvdmVyCj4gICB3aGF0IG1v
ZGUgaXQgaXMgcnVubmluZyBpdCBiZWNhdXNlIHRoaXMgaXMgYSB2aXJ0dWFsaXNhdGlvbiBob2xl
Lgo+ICAgQXMgYSBnZW5lcmFsIHByaW5jaXBsZSwgY29kZSBzaG91bGQgYmUgZGVzaWduZWQgZm9y
IGFuZCBpbXBsaWNpdGx5Cj4gICBrbm93IHdoYXQgbW9kZSBpdCB3aWxsIHJ1biBpbi4gCj4+Pgo+
IAo+PiBXZSBkb24ndCB5ZXQgaW5zdGFsbCBleGNlcHRpb24gaGFuZGxlcnMgaW4gYmFyZWJveCwg
YnV0IEkgYW0gZmluZSB3aXRoIHVzaW5nCj4+IGRpZmZlcmVudCBQQkwgY29tbW9uIGNvZGUgZW50
cnkgZnVuY3Rpb25zLgo+Pgo+PiBXaGF0IGRvIHlvdSB0aGluaz8KPiAKPiBJIHRoaW5rIHRoYXQg
YWRkaW5nIGV4Y2VwdGlvbiBoYW5kbGluZyB0byBiYXJlYm94IHdvdWxkIGJlIHZlcnkgaGFuZHku
Cj4gQXQgdGhlIG1vbWVudCBiYXJlYm94IHNvbWV0aW1lcyBoYW5ncyBkdXJpbmcgbXkgZXhwZXJp
bWVudHMgd2l0aG91dCBhbnkgZXJyb3IgbWVzc2FnZS4KPiBFdmVuIHdpdGggYSBzaW1wbGUgZXhj
ZXB0aW9uIGhhbmRsZXIgdGhhdCBqdXN0IHByaW50cyBvdXQgZXBjLCBzdGF0dXMgYW5kIGNhdXNl
IHJlZ2lzdGVycwo+IEkgaGF2ZSBtdWNoIG1vcmUgaW5mb3JtYXRpb24gb24gaGFuZyByZWFzb24u
CgpFeGNlcHRpb24gaGFuZGxpbmcgd291bGQgYmUgdXNlZnVsLCBubyBkb3VidC4gUm91dmVuIGlz
IGxvb2tpbmcKaW50byBhZGRpbmcgdGhhdC4KCkkgd2FzIGFza2luZyBhYm91dCB3aGF0IHlvdSB0
aGluayBhYm91dCBhZGRpbmcgYmFyZWJveF9yaXNjdl9tYWNoaW5lX2VudHJ5KCkKYW5kIGJhcmVi
b3hfcmlzY3Zfc3VwZXJ2aXNvcl9lbnRyeSgpLCBzbyBQQkwgZW50cnkgcG9pbnRzIGNhbiBkZWNp
ZGUgZm9yCnRoZW1zZWx2ZXMgd2hhdCBtb2RlIHRoZSByZXN0IG9mIGJhcmVib3ggc2hvdWxkIGdl
dCB3aGVuIHJpc2N2X21vZGUoKSBpcwpjYWxsZWQuIEknbGwgQ0MgeW91IG9uIHRoZSBzZXJpZXMu
CgpDaGVlcnMsCkFobWFkCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4g
MjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwK
MzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01
MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAg
ICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK

