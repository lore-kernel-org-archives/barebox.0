Delivery-date: Wed, 25 May 2022 10:26:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntmLT-008RQF-Qt
	for lore@lore.pengutronix.de; Wed, 25 May 2022 10:26:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntmLS-0005R3-JB
	for lore@pengutronix.de; Wed, 25 May 2022 10:26:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9lJO//O0QCbo36dxZ+doiIwdPDzCaSbo78QUj8N7yo=; b=xF47itKUMdZ7aQ
	1T/kI7cWLYHyVSlbt3nN1vGmISiE3qanQDF8A4dg8DXZsoZ5wL48fFKIbmfTaTr+ldohX+O2sh1BB
	zMW7qp/0t59nAs8wIm245B22hlt5oQt4oIa8o6bpSlWIMuSZe5rRj7UK2S2h9qfj0UPRewnsYD5Kk
	diKiLfbHomZ0wWGg/h8WfWF3NIvaEFuqBsajGXamTqBS2VcLBl/UrZW1ZodagwRD8O+dmNtyID56t
	wdjKoHnDcpdGDG8Z50cjkPArCpH9FJpPaYIq5PZLtS4Uob5NyHc2dFNKS9QWNsg3F3hcjH/LpFEjz
	UYBhSPYtPYbe2AKRSljA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntmJi-00ANot-7E; Wed, 25 May 2022 08:24:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntmBm-00AJEE-LC
 for barebox@lists.infradead.org; Wed, 25 May 2022 08:16:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ntmBj-0003Yt-1o; Wed, 25 May 2022 10:16:15 +0200
Message-ID: <1db17488-d759-712a-6014-8d2cde412474@pengutronix.de>
Date: Wed, 25 May 2022 10:16:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20220524073048.18467-1-eagle.alexander923@gmail.com>
 <76dbfceb-1651-2659-7209-2c37c3f8f7d5@pengutronix.de>
 <CAP1tNvQVWjG1=jsJRh-eCpHzUPOct1BysgXQy-MxDvYkHFY6wg@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvQVWjG1=jsJRh-eCpHzUPOct1BysgXQy-MxDvYkHFY6wg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220525_011618_742260_4A4DA233 
X-CRM114-Status: GOOD (  16.75  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: DTS: myir-x335x: Add GPIO aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMjUuMDUuMjIgMDg6MjcsIEFsZXhhbmRlciBTaGl5YW4gd3JvdGU6Cj4gSGVsbG8uCj4gCj4g
0LLRgiwgMjQg0LzQsNGPIDIwMjIg0LMuINCyIDE1OjI4LCBBaG1hZCBGYXRvdW0gPGEuZmF0b3Vt
QHBlbmd1dHJvbml4LmRlPjoKPj4gT24gMjQuMDUuMjIgMDk6MzAsIEFsZXhhbmRlciBTaGl5YW4g
d3JvdGU6Cj4+PiBGb3IgdGhlIGNvcnJlY3Qgd29yayBvZiBHUElPIGRyaXZlciwgd2UgbmVlZCB0
byBkZWZpbmUgYWxpYXNlcy4KPj4+IExldCdzIGFkZCB0aGVtIHRvIHRoZSBkZXZpY2V0cmVlLgo+
IC4uLgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9hbTMzNXgtbXlpcnRlY2gtbXlkLmR0
cyBiL2FyY2gvYXJtL2R0cy9hbTMzNXgtbXlpcnRlY2gtbXlkLmR0cwo+Pj4gaW5kZXggNmVjNjVl
NTMzZC4uMWVhMGYyYTQ0MCAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtL2R0cy9hbTMzNXgtbXlp
cnRlY2gtbXlkLmR0cwo+Pj4gKysrIGIvYXJjaC9hcm0vZHRzL2FtMzM1eC1teWlydGVjaC1teWQu
ZHRzCj4+PiBAQCAtNiw2ICs2LDEzIEBACj4+PiAgI2luY2x1ZGUgPGFybS9hbTMzNXgtbXlpcnRl
Y2gtbXlkLmR0cz4KPj4KPj4gT3RoZXIgYm9hcmRzIGRvICNpbmNsdWRlICJhbTMzeHguZHRzaSIs
IHdoaWNoIHRha2VzIGNhcmUgb2YgdGhlc2UKPj4gYWxpYXNlcy4gSXQncyBwcm9iYWJseSBiZXR0
ZXIgeW91IGluY2x1ZGUgdGhhdCB0b28uCj4gCj4gSW5jbHVkaW5nIHRoaXMgZmlsZSByZXN1bHRz
IGluIGFuIGVycm9yLgo+IAo+IENoYW5nZWQgdG86Cj4gI2luY2x1ZGUgImFtMzN4eC5kdHNpIgo+
ICNpbmNsdWRlIDxhcm0vYW0zMzV4LW15aXJ0ZWNoLW15ZC5kdHM+Cj4gCj4gT3V0cHV0Ogo+IERU
QyAgICAgYXJjaC9hcm0vZHRzL2FtMzM1eC1teWlydGVjaC1teWQuZHRiCj4gRXJyb3I6IC9ob21l
L0FSTS9iYXJlYm94L2R0cy9zcmMvYXJtL2FtMzM1eC1teWlydGVjaC1teWQuZHRzOjYuMS05IHN5
bnRheCBlcnJvcgo+IEZBVEFMIEVSUk9SOiBVbmFibGUgdG8gcGFyc2UgaW5wdXQgdHJlZQo+IAo+
IE1vc3QgbGlrZWx5IHRoaXMgaXMgdGhlIHJlc3VsdCBvZiBkb3VibGUgaW5jbHVzaW9uIG9mIHRo
ZSBmaWxlIGFybS9hbTMzeHguZHRzaSwKPiBmaXJzdCB0aW1lIGZyb20gImFtMzN4eC5kdHNpIiBh
bmQgc2Vjb25kIGZyb20gYXJtL2FtMzM1eC1teWlydGVjaC1teWQuZHRzLgoKSGksIHlvdSBuZWVk
IHRvIGluY2x1ZGUgaWYgYWZ0ZXIgdGhlIHVwc3RyZWFtIERULiBUaGF0J3Mgd2h5IGl0IGRvZXNu
J3QgaGF2ZQphIC9kdHMtdjEvOwoKQ2hlZXJzLApBaG1hZAoKPiAKCgotLSAKUGVuZ3V0cm9uaXgg
ZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDov
L3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAg
ICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGls
ZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1
IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

