Delivery-date: Fri, 07 May 2021 19:53:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf4fl-00052Z-RN
	for lore@lore.pengutronix.de; Fri, 07 May 2021 19:53:57 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf4fk-0001fL-Iu
	for lore@pengutronix.de; Fri, 07 May 2021 19:53:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P07omTKKPohShetjAmGRuIzxfypHvXEEjuuwM1AABnM=; b=G5D/Ky6OyZ1TSZBwuzNjvlkZ7
	L65c52rX56B0UCJRy2jDb6g9A7IanHy6m5E13cnBIo6mkhkIT7USYLpg9yUnMGokiI1iLfzaiGUtI
	ZhOztlGorb6Wur7JoMeIkY/VBPUxeaSlf2Jj+l+codHz0ZEleHJYUzhVDrKLNViH5EgqHdZItmFML
	6OcutMcBBTWbHShRObdFOA/2/BKvRNWNrPH1rEh0SflyKYEWLrBhMvMI54S/eifMif9iT/lAVQv7p
	Uve2cr7uDQbzZQ5c3tK7/gBZVqNcTqEiZnr4E7OJVfzLzywARlN0LiGUiEZVz7YeBudde2Guc6pIM
	/5wDUL5+Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf4er-007ih5-D8; Fri, 07 May 2021 17:53:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf4em-007igl-Ao
 for barebox@desiato.infradead.org; Fri, 07 May 2021 17:52:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=oils9taIm6JybRHTfvujpmSzagxwp9fEr2FHeyFovmU=; b=2u0+T1klWlFWtE8PCiOsgGmVAz
 9tldiLZIn+FNj3IZeVrfJuJT9vhfjVq9zl66lH/BR0GCst8g3adURZ72isU26thlG5WEyfX2pLuiS
 N7cBZkExdIDB9GVsN10uhMd1AAE4yNCsFjcLZq2rqhAJD6LJ+GNQPfi8yR3J/TXYWTsBEA8vmu/z6
 AWAJZlrl8lcPnbF7+CZfnEZ0OY260CDpDpdvlFq/DqJam2TnFaynrQNACifUS8CXeLSvTPl+XZuPg
 7qIGCqD459KfODPSoDw+p750PBbY56d1bdkV6dIWijIvRxcP4fw7kxCGOyOptuPL3g81MHeHfhxK+
 TY7nISZA==;
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf4ej-0073NX-57
 for barebox@lists.infradead.org; Fri, 07 May 2021 17:52:54 +0000
Received: by mail-lj1-x22e.google.com with SMTP id a36so12602326ljq.8
 for <barebox@lists.infradead.org>; Fri, 07 May 2021 10:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oils9taIm6JybRHTfvujpmSzagxwp9fEr2FHeyFovmU=;
 b=fOXUJZlZp7h2KjOkm5AzM2cGUJDtnxrEpQWFK4XpgF9fEsMGF/l3ACcrlKc2ACX+Ec
 yR6BXDGaGwQaoIeUM6dREfLdENIENnH/Wu4Auze6QH97t8a+GchzzVYLVy6d7CGw0jQ/
 YnfC8XKXgmLHA/1yPOm+5lo7ZmiurflkyK/4rfMW/VEs+hdyBN7TSoectPiFRgtx4OQg
 j5kMVELlUjX64oDhjelK7oUIUMRiYmItefD4of18ozv3i239ZOkPQ1NZh2MZxhqqvFJ6
 4ibxSFcpNlIZOgxHnGGpGlELAbVxPcFbYIJrL29Q8SQHfqOxxVunjutIvaRjKNgonTmV
 tm+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oils9taIm6JybRHTfvujpmSzagxwp9fEr2FHeyFovmU=;
 b=B2+uahmBkljc7/NfxPYIy2IdH80kqEbjV73vU+g3Dj9nfZNO5rKW1pQhncGL8Lt8hK
 U898vzEwQIPrKS/6IPJEKQ7RLXTGMnGPM9RGPU5eV63RjnYG20OsG7+zIcEpQaAGTMSf
 JNQvviWPgWamy4cGM7l+0RQHAiLyMAW3w6H5u37TBuUBaA8LTUnYlnDcExY5AjmJM2CJ
 PFEpuTnBBQOqOpcO0QBkX8ziN86L5OF3pnG1Brpm72te8JTv4vNHXCrUUAaUuRsljJFW
 bPyVx+EfgmVPyftw93qU2ZOFN6+ZXd8E1E6WOxh/A+93nyysiHDyipC4cq6/NMLc7G5q
 8twA==
X-Gm-Message-State: AOAM531olalAJHaWD7NsCDmFHnPK7+G7km9lk0Jv5lTShA+cDrTYDXmt
 TOcIFRTfSuZE/GoCF6Q+Ib75slR4QqwWcw==
X-Google-Smtp-Source: ABdhPJxiXlft+0qV5bQtlX+EEm2cboenJQfZl5YLAsFunLDp9OK6imtW0GTqjePycMm8sV15QN/XRg==
X-Received: by 2002:a2e:a0c7:: with SMTP id f7mr8702434ljm.13.1620409971416;
 Fri, 07 May 2021 10:52:51 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id x19sm1420968lfa.22.2021.05.07.10.52.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 May 2021 10:52:50 -0700 (PDT)
Date: Fri, 7 May 2021 20:52:49 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210507205249.bff9c677e81494c210205ac4@gmail.com>
In-Reply-To: <28074d89-492c-48ac-d93e-103092e073cd@pengutronix.de>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
 <20210506220834.223350-3-antonynpavlov@gmail.com>
 <c1791cb3-2837-eb3e-aa58-9d1eb2a3d7b5@pengutronix.de>
 <20210507172527.cf80cf7cb749560d2e8200cd@gmail.com>
 <28074d89-492c-48ac-d93e-103092e073cd@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_105253_238814_F4AC8281 
X-CRM114-Status: GOOD (  32.53  )
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
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 02/11] RISC-V: make RISCV_SBI and RISCV_M_MODE
 explicitly mutually exclusive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gRnJpLCA3IE1heSAyMDIxIDE2OjQ0OjI0ICswMjAwCkFobWFkIEZhdG91bSA8YS5mYXRvdW1A
cGVuZ3V0cm9uaXguZGU+IHdyb3RlOgoKSGkgQWhtYWQgIQoKPiBIZWxsbyBBbnRvbnksCj4gCj4g
T24gMDcuMDUuMjEgMTY6MjUsIEFudG9ueSBQYXZsb3Ygd3JvdGU6Cj4gPj4gSSB3b3VsZCByZWFs
bHkgbGlrZSB0byBoYXZlIGEgcmlzY3Z7MzIsNjR9X2RlZmNvbmZpZyB0aGF0IGNhbiBqdXN0IGJ1
aWxkIGFsbCBib2FyZHMKPiA+PiBhdCBvbmNlLiBEbyB5b3Uga25vdyBpZiB0aGlzIGNvdWxkIGJl
IGR5bmFtaWNhbGx5IGRldGVybWluZWQ/Cj4gPiAKPiA+IEF0IHRoZSBtb21lbnQgSSBoYXZlIG5v
dCBhbnN3ZXIuCj4gPiBJJ2xsIHRyeSB0byBpbnZlc3RpZ2F0ZSBkeW5hbWljIG1vZGUgZGV0ZXJt
aW5hdGlvbiwgaXQncyB2ZXJ5IGF0dHJhY3RpdmUgaWRlYS4KPiA+IAo+ID4gT24gdGhlIG90aGVy
IGhhbmQgY29tcGlsZSB0aW1lIG1vZGUgc2VsZWN0aW9uIGlzIG5vdCB0aGUgc2hvdyBzdG9wcGVy
IGZvcgo+ID4gIm9uZSBkZWZjb25maWcgdG8gYnVpbGQgdGhlbSBhbGwiOiB3ZSBoYXZlIHRvIG1h
a2UgU1RBQ0tfU0laRSBhbmQgTUFMTE9DX1NJWkUKPiA+IHBlci1ib2FyZCBwYXJhbWV0ZXJzIG5v
dCBwZXItZGVmY29uZmlnIHBhcmFtZXRlcnMgbGlrZSBub3cuCj4gPiAKPiA+IElmIHdlIGNvdWxk
IG1ha2UgU1RBQ0tfU0laRSBhbmQgTUFMTE9DX1NJWkUgcGVyLWJvYXJkIGNvbXBpbGUtdGltZSBw
YXJhbWV0ZXJzIHRoZW4KPiA+IHdlIGNhbiBtYWtlIFJJU0MtViBtb2RlIHBlci1ib2FyZCBjb21w
aWxlLXRpbWUgcGFyYW1ldGVyIHRvby4gSXMgdGhpcyBzb2x1dGlvbgo+ID4gYWNjZXB0YWJsZT8K
PiAKPiBNQUxMT0NfU0laRSBjYW4gYmUgc2V0IGFzIDAgYW5kIGJhcmVib3ggd2lsbCBkZXRlcm1p
bmUgaXQgYmFzZWQgb24KPiBtZW1iYXNlICsgbWVtc2l6ZSB0aGF0IGFyZSBzZXQgYnkgUEJMLgo+
IAo+IFNUQUNLX1NJWkUgbXVzdCBiZSBzZXQgcGVyIEtjb25maWcsIGJ1dCBJIHRoaW5rIGV2ZW4g
YSBnZW5lcm91cyBkZWZhdWx0IHN0YWNrCj4gc2l6ZSBzaG91bGQgYWNjb21tb2RhdGUgYWxsIHRh
cmdldHMuCj4gCj4gSWYgd2UgZG8gdGhlIHNhbWUgZm9yIFJJU0MtViBtb2RlIHRoYXQgd291bGQg
cHJvYmFibHkgbWVhbiBoYXZpbmcKPiB0d28gZnVuY3Rpb25zIGJhcmVib3hfcmlzY3ZfbWFjaGlu
ZV9lbnRyeSgpIGFuZCBiYXJlYm94X3Jpc2N2X3N1cGVydmlzb3JfZW50cnkoKQo+IGluIFBCTCB0
aGF0IHRha2UgY2FyZSB0byBwYXNzIHRoZSBjb3JyZWN0IGluZm8gdG8gYmFyZWJveCBwcm9wZXIu
Cj4gCj4gQXBwYXJlbnRseSwgeW91IGNhbiBkZXRlcm1pbmUgbW9kZSBpZiB5b3UgY2F0Y2ggZXhj
ZXB0aW9uczoKPiBodHRwczovL2ZvcnVtcy5zaWZpdmUuY29tL3QvaG93LXRvLWRldGVybWluZS10
aGUtY3VycmVudC1leGVjdXRpb24tcHJpdmlsZWdlLW1vZGUvMjgyMwoKSG1tLCBhbnN3ZXIgaXMg
bW9zdGx5IG5lZ2F0aXZlOgoKPDwKICBSSVNDLVYgZGVsaWJlcmF0ZWx5IGRvZXNu4oCZdCBtYWtl
IGl0IGVhc3kgZm9yIGNvZGUgdG8gZGlzY292ZXIKICB3aGF0IG1vZGUgaXQgaXMgcnVubmluZyBp
dCBiZWNhdXNlIHRoaXMgaXMgYSB2aXJ0dWFsaXNhdGlvbiBob2xlLgogIEFzIGEgZ2VuZXJhbCBw
cmluY2lwbGUsIGNvZGUgc2hvdWxkIGJlIGRlc2lnbmVkIGZvciBhbmQgaW1wbGljaXRseQogIGtu
b3cgd2hhdCBtb2RlIGl0IHdpbGwgcnVuIGluLiAKPj4KCj4gV2UgZG9uJ3QgeWV0IGluc3RhbGwg
ZXhjZXB0aW9uIGhhbmRsZXJzIGluIGJhcmVib3gsIGJ1dCBJIGFtIGZpbmUgd2l0aCB1c2luZwo+
IGRpZmZlcmVudCBQQkwgY29tbW9uIGNvZGUgZW50cnkgZnVuY3Rpb25zLgo+IAo+IFdoYXQgZG8g
eW91IHRoaW5rPwoKSSB0aGluayB0aGF0IGFkZGluZyBleGNlcHRpb24gaGFuZGxpbmcgdG8gYmFy
ZWJveCB3b3VsZCBiZSB2ZXJ5IGhhbmR5LgpBdCB0aGUgbW9tZW50IGJhcmVib3ggc29tZXRpbWVz
IGhhbmdzIGR1cmluZyBteSBleHBlcmltZW50cyB3aXRob3V0IGFueSBlcnJvciBtZXNzYWdlLgpF
dmVuIHdpdGggYSBzaW1wbGUgZXhjZXB0aW9uIGhhbmRsZXIgdGhhdCBqdXN0IHByaW50cyBvdXQg
ZXBjLCBzdGF0dXMgYW5kIGNhdXNlIHJlZ2lzdGVycwpJIGhhdmUgbXVjaCBtb3JlIGluZm9ybWF0
aW9uIG9uIGhhbmcgcmVhc29uLgoKLS0gCkJlc3QgcmVnYXJkcywKwqAgQW50b255IFBhdmxvdgoK
IAo+ID4gCj4gPj4+ICsKPiA+Pj4gIHNvdXJjZSAiYXJjaC9yaXNjdi9LY29uZmlnLnNvY3MiCj4g
Pj4+ICAKPiA+Pj4gIGNvbmZpZyBDUFVfU1VQUE9SVFNfMzJCSVRfS0VSTkVMCj4gPj4+IEBAIC05
NywxNCArMTA5LDQgQEAgY29uZmlnIE5NT05fSEVMUAo+ID4+PiAgCSAgU2F5IHllcyBoZXJlIHRv
IGdldCB0aGUgbm1vbiBjb21tYW5kcyBtZXNzYWdlIG9uCj4gPj4+ICAJICBldmVyeSBubW9uIHN0
YXJ0Lgo+ID4+PiAgCj4gPj4+IC0jIHNldCBpZiB3ZSBydW4gaW4gbWFjaGluZSBtb2RlLCBjbGVh
cmVkIGlmIHdlIHJ1biBpbiBzdXBlcnZpc29yIG1vZGUKPiA+Pj4gLWNvbmZpZyBSSVNDVl9NX01P
REUKPiA+Pj4gLQlib29sCj4gPj4+IC0KPiA+Pj4gLSMgc2V0IGlmIHdlIGFyZSBydW5uaW5nIGlu
IFMtbW9kZSBhbmQgY2FuIHVzZSBTQkkgY2FsbHMKPiA+Pj4gLWNvbmZpZyBSSVNDVl9TQkkKPiA+
Pj4gLQlib29sCj4gPj4+IC0JZGVwZW5kcyBvbiAhUklTQ1ZfTV9NT0RFCj4gPj4+IC0JZGVmYXVs
dCB5Cj4gPj4+IC0KPiA+Pj4gIGVuZG1lbnUKPiA+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3Yv
S2NvbmZpZy5zb2NzIGIvYXJjaC9yaXNjdi9LY29uZmlnLnNvY3MKPiA+Pj4gaW5kZXggYzY4NzU3
MzhkMC4uZjc2Nzk0MmYzNCAxMDA2NDQKPiA+Pj4gLS0tIGEvYXJjaC9yaXNjdi9LY29uZmlnLnNv
Y3MKPiA+Pj4gKysrIGIvYXJjaC9yaXNjdi9LY29uZmlnLnNvY3MKPiA+Pj4gQEAgLTMsMTAgKzMs
MTAgQEAgbWVudSAiU29DIHNlbGVjdGlvbiIKPiA+Pj4gIGNvbmZpZyBTT0NfRVJJWk8KPiA+Pj4g
IAlib29sICJFcml6byBTb0MiCj4gPj4+ICAJZGVwZW5kcyBvbiBBUkNIX1JWMzJJCj4gPj4+ICsJ
ZGVwZW5kcyBvbiBSSVNDVl9NX01PREUKPiA+Pj4gIAlzZWxlY3QgSEFTX0FTTV9ERUJVR19MTAo+
ID4+PiAgCXNlbGVjdCBIQVNfTk1PTgo+ID4+PiAgCXNlbGVjdCBVU0VfQ09NUFJFU1NFRF9EVEIK
PiA+Pj4gLQlzZWxlY3QgUklTQ1ZfTV9NT0RFCj4gPj4+ICAJc2VsZWN0IFJJU0NWX1RJTUVSCj4g
Pj4+ICAKPiA+Pj4gIGNvbmZpZyBCT0FSRF9FUklaT19HRU5FUklDCj4gPj4+IEBAIC0xNSw2ICsx
NSw3IEBAIGNvbmZpZyBCT0FSRF9FUklaT19HRU5FUklDCj4gPj4+ICAKPiA+Pj4gIGNvbmZpZyBT
T0NfVklSVAo+ID4+PiAgCWJvb2wgIlFFTVUgVmlydCBNYWNoaW5lIgo+ID4+PiArCWRlcGVuZHMg
b24gUklTQ1ZfU0JJCj4gPj4+ICAJc2VsZWN0IEJPQVJEX1JJU0NWX0dFTkVSSUNfRFQKPiA+Pj4g
IAlzZWxlY3QgQ0xJTlRfVElNRVIKPiA+Pj4gIAloZWxwCj4gPj4+IEBAIC0yMyw2ICsyNCw3IEBA
IGNvbmZpZyBTT0NfVklSVAo+ID4+PiAgCj4gPj4+ICBjb25maWcgU09DX1NJRklWRQo+ID4+PiAg
CWJvb2wgIlNpRml2ZSBTb0NzIgo+ID4+PiArCWRlcGVuZHMgb24gUklTQ1ZfU0JJCj4gPj4+ICAJ
c2VsZWN0IENMS19TSUZJVkUKPiA+Pj4gIAlzZWxlY3QgQ0xLX1NJRklWRV9QUkNJCj4gPj4+ICAJ
c2VsZWN0IFJJU0NWX1RJTUVSCj4gPj4+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2NvbmZpZ3Mv
ZXJpem9fZ2VuZXJpY19kZWZjb25maWcgYi9hcmNoL3Jpc2N2L2NvbmZpZ3MvZXJpem9fZ2VuZXJp
Y19kZWZjb25maWcKPiA+Pj4gaW5kZXggMjQ3YTE3OTEzMC4uMTYxNjhlZWY2NiAxMDA2NDQKPiA+
Pj4gLS0tIGEvYXJjaC9yaXNjdi9jb25maWdzL2VyaXpvX2dlbmVyaWNfZGVmY29uZmlnCj4gPj4+
ICsrKyBiL2FyY2gvcmlzY3YvY29uZmlncy9lcml6b19nZW5lcmljX2RlZmNvbmZpZwo+ID4+PiBA
QCAtMSwzICsxLDQgQEAKPiA+Pj4gK0NPTkZJR19SSVNDVl9NX01PREU9eQo+ID4+PiAgQ09ORklH
X1NPQ19FUklaTz15Cj4gPj4+ICAjIENPTkZJR19HTE9CQUxWQVIgaXMgbm90IHNldAo+ID4+PiAg
Q09ORklHX1NUQUNLX1NJWkU9MHgyMDAwMAo+ID4+Pgo+ID4+Cj4gPj4gLS0gCj4gPj4gUGVuZ3V0
cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwKPiA+PiBTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAg
ICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAo+ID4+IDMxMTM3IEhpbGRlc2hlaW0s
IEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8
Cj4gPj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAg
ICs0OS01MTIxLTIwNjkxNy01NTU1IHwKPiA+IAo+ID4gCj4gCj4gLS0gCj4gUGVuZ3V0cm9uaXgg
ZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwKPiBTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRw
Oi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAo+IDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAg
ICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8Cj4gQW10c2dlcmlj
aHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkx
Ny01NTU1IHwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

