Delivery-date: Tue, 21 Sep 2021 16:12:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSgVf-0001vK-CL
	for lore@lore.pengutronix.de; Tue, 21 Sep 2021 16:12:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSgVe-0006rP-BE
	for lore@pengutronix.de; Tue, 21 Sep 2021 16:12:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GfISIT9KobDSgxNO20XRIASiAZxVFf0CsgvIsVePq2M=; b=2Gx5ls1h9M0yqR
	ei+rmCDHKxgL9JkFb/nLyrbDNPrsc0AyXGcfHm34qoxaZeGnDtcvCthB33+RJGSLsGo2wIwfKsLBI
	jOBIsfM4HXq+WM7rE3y2kvh696qmvydsKnPi0eHcluMUbjHfdLDGsQFiPaXdxpdx383muaGHQUi43
	gwi66BdaIAcd1xM10tbbpfFFUgDfdGaid8I60CvRw0cOQyJLXY08maEic/WBQDoGOriA06rrXyZ3j
	imVBMfpkZWo5dQoJW4qYmb7zjCuUawIM2131DK3mLP4I67okmMJO6KaRNfqLGI3jevOfu9XOmZtSI
	lHj9Kab/j0RlgX5R0qNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSgTr-004kab-4D; Tue, 21 Sep 2021 14:10:43 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSgTm-004kYh-0b
 for barebox@lists.infradead.org; Tue, 21 Sep 2021 14:10:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1632233427; x=1634825427;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CD4FXiFqdT0Y0rzM51xhHnZojyZxQm0OYeFjpoMhpts=;
 b=lCKFYaZEiwhwDQ7nnhO9y8PhBaIOb1/Lej1ofULhHMYoMj7Ir/qH3hKpD2DGKpGO
 0rD5zD2m6zl+0WLYNtCbUSL80VP6PO85b5SVgmEVY+X8WyNYQE6chRM2GIzYslU0
 y5tQQeKoIePxi4UKY79O3q20p7LBQ7CfybExmhDPV2s=;
X-AuditID: c39127d2-c275470000001d24-41-6149e7d3e0bd
Received: from Diagnostix.phytec.de (Diagnostix.phytec.de [172.16.0.119])
 (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 78.1B.07460.3D7E9416;
 Tue, 21 Sep 2021 16:10:27 +0200 (CEST)
Received: from Berlix.phytec.de (172.16.0.117) by Diagnostix.phytec.de
 (172.16.0.119) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Tue, 21 Sep
 2021 16:10:27 +0200
Received: from Berlix.phytec.de ([fe80::6d58:38d4:5df2:e4ad]) by
 berlix.phytec.de ([fe80::6d58:38d4:5df2:e4ad%3]) with mapi id 15.01.2308.014; 
 Tue, 21 Sep 2021 16:10:27 +0200
From: Yunus Bas <Y.Bas@phytec.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 "sha@pengutronix.de" <sha@pengutronix.de>
Thread-Topic: CRC32 verification on NAND flash
Thread-Index: AQHXrvJtEhOkL4prukyQJH6AGgPETw==
Date: Tue, 21 Sep 2021 14:10:27 +0000
Message-ID: <3ea5144d940ac48701809c7e28061d76495a66fa.camel@phytec.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.116]
Content-ID: <6BB5EC927B7554469C23048941710C61@phytec.de>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOLMWRmVeSWpSXmKPExsWyRoChXPfyc89Eg0XXzC1OLO5ntni0eRar
 A5PH5iX1Hv1/DQKYorhsUlJzMstSi/TtErgy/q54wlzwQrpiVdt1xgbGHukuRk4OCQETiaWP
 5jN1MXJxCAmsZ5KYPXMmM4TzjFHi9frT7BDOJkaJBYf+ADkcHGwCihJXbuWDdIsI5EisvniQ
 BcQWFtCUmLHrNgtEXE+ic/4xZpByEHvx2TqQMIuAqsSvTduZQWxeATeJFxd/g5UzCshKbNhw
 HizOLCAusenZd1aI4wQkluyBiEsIiEq8fPwPKq4g0dbTyQQynhlo7fpd+hCtFhL/rx9khbAV
 JaZ0P2SHWCUocXLmE5YJjCKzkGyYhdA9C0n3LCTds5B0L2BkXcUolJuZnJ1alJmtV5BRWZKa
 rJeSuokRGBmHJ6pf2sHYN8fjECMTB+MhRgkOZiUR3tQnbolCvCmJlVWpRfnxRaU5qcWHGKU5
 WJTEee/3MCUKCaQnlqRmp6YWpBbBZJk4OKUaGJec265S/at4prNgSZ+zR03tYu1Yyx2mkc4a
 4smHpL9f5O8/EK62LjCzxK3c6WqeqWyFgOmmVzLGNbOnFARuEY0sjss1M5nY9ynQUJqt+e+d
 uytc7vTYv7JdzHtld0WJfkrgqXxx40J7OeGSFKPAl2lLV7zQ8n//ICA2dX2h3+UIvrd+orlK
 LMUZiYZazEXFiQA11PtYegIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_071038_401269_085CE70C 
X-CRM114-Status: GOOD (  18.74  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: CRC32 verification on NAND flash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gZXZlcnlvbmUsDQoNCkkgaGF2ZSBhIHF1ZXN0aW9uIHJlZ2FyZGluZyB0aGUgQmFyZWJv
eCBjaGVja3N1bSB2ZXJpZmljYXRpb24gb24gTkFORC0NCnBhcnRpdGlvbnMuIFRvIHZlcmlmaWNh
dGUgdGhhdCB0aGUgQmFyZWJveCBoYXMgYmVlbiBmbGFzaGVkIGNvcnJlY3RseSwNCndlIGRvIGEg
Y3JjMzIgY2hlY2sgb24gdGhlIG5hbmQuYmItcGFydGl0aW9uLiBUaGUgb2Zmc2V0cyBmb3IgdGhl
IHNsb3RzDQphcmUgZGVyaXZlZCBmcm9tIHRoZSBtYXggcGFydGl0aW9uLCBzbyB0aGF0IHRoZSBz
bG90cyBhcmUgZXF1YWxseQ0Kc2l6ZWQuIFRoZSBiYi1wYXJ0aXRpb25zIGFyZSBiYWRibG9jay1h
d2FyZSBwYXJ0aXRpb25zLCBtZWFuaW5nIHRoYXQNCnRoZSBiYWQtbWFya2VkIGJsb2NrcyBhcmUg
anVzdCBza2lwcGVkLiBUaGlzIG1lYW5zLCB0aGF0IHRoZSBvdmVyYWxsDQpzaXplIG9mIHRoZSBi
Yi1wYXJ0aXRpb24gYWxzbyBkZWNyZWFzZXMgcmVsYXRpdmUgdG8gdGhlIG51bWJlciBvZiBiYWQt
DQpibG9ja3MuIE91ciBwcm9ibGVtIGhlcmUgaXMsIGluIGNhc2UgYSBiYWRibG9jayBvY2N1cnMg
b24gYSBibG9jayBwcmlvcg0KdG8gdGhlIHNsb3RzLCB0aGUgb2Zmc2V0IHRvIHRoZSBzbG90cyB3
aGVyZSB0aGUgQmFyZWJveC1jb2RlIHJlc2lkZXMgaW4NCnRoZSBiYi1wYXJ0aXRpb24gYWxzbyBj
aGFuZ2VzLg0KDQpIZXJlIGFuIGV4YW1wbGU6DQpUaGUgc3RhcnRwYWdlIG9mIHNsb3QxIGlzIDB4
MjQwMDAwLiBUaGlzIGlzIHRoZSByZWFsIGFkZHJlc3MsIHdoZXJlDQpCYXJlYm94IGlzIGZsYXNo
ZWQgaW50byBhbmQgY2FuIGFsc28gYmUgZHVtcGVkIHVzaW5nIHRoZSBvcmlnaW5hbA0KbmFuZDAt
cGFydGl0aW9uLiBOb3csIHdoZW4gYSBiYWQtYmxvY2sgb2NjdXJzIHByaW9yIHRvIHRoZSBzdGFy
dHBhZ2Ugb2YNCnNsb3QxLCBsZXQncyB0YWtlIGZvciBleGFtcGxlIHRoZSBibG9jayBhdCAweDE0
MDAwMCwgdGhlbiBvZmZzZXQgb2YNCnNsb3QxIGNoYW5nZXMgYWxzbyBpbiB0aGUgbmFuZDAuYmIg
cGFydGl0aW9uLiBJbiB0aGUgb3JpZ2luYWwgcGFydGl0aW9uDQpuYW5kMCwgc2xvdDEgaXMgc3Rp
bGwgYXQgMHgyNDAwMDAsIGJ1dCBvbiBuYW5kMC5iYiwgc2xvdDEgaGFzIGJlZW4NCm1vdmVkIG9u
ZSBibG9jayBwcmlvciB0byB0aGUgb3JpZ2luYWwgb2Zmc2V0IGFuZCBjaGFuZ2VkIHRvIDB4MjIw
MDAwLg0KDQpUYWtpbmcgaW50byBhY2NvdW50IHRoYXQgd2l0aCB0aW1lIHRoZSBOQU5EIGNlbGxz
IHdpbGwgd29ybiBvdXQgYW5kDQpkZWdyYXRlIGV2ZW4gbW9yZSwgd2UgbmVlZCB0byBjYWxjdWxh
dGUgdGhlIG9mZnNldCBmb3IgZXZlcnkgYm9hcmQgdG8tDQpiZSB0ZXN0ZWQgYW5kIHBlcmZvcm0g
dGhlIGNyYzMyIGNoZWNrIGFmdGVyIHRoYXQuDQpVc2luZyB0aGUgb3JpZ2luYWwgbmFuZDAtcGFy
dGl0aW9uIGlzIGFsc28gb3V0IG9mIG9wdGlvbiwgc2luY2UgdGhlDQp2ZXJpZmljYXRpb24gd291
bGQgYWxzbyBmYWlsIHdoZW4gYSBiYWRibG9jayB3b3VsZCBvY2N1ciBzb21ld2hlcmUgaW4NCnRo
ZSBzbG90LWFyZWEgKGluIGNhc2Ugb2YgdGhlIGFib3ZlIGV4YW1wbGUsIDB4MjYwMDAwKS4NCg0K
SXMgdGhlcmUgYSBwcm9wZXIgd2F5IHRvIGRvIGEgY2hlY2tzdW0gdmVyaWZpY2F0aW9uIG9uIE5B
TkQtZmxhc2gsDQp3aGljaCBJJ20gbm90IGZhbWlsaWFyIHdpdGg/IENhbiB0aGUgc2l6ZSBvZiB0
aGUgcGFydGl0aW9ucyBiZSBzb21laG93DQpkZXRlcm1pbmVkIGR5bmFtaWNhbGx5PyBIb3cgZG8g
dGhlIGV4cGVydHMgaGFuZGxlIHRoaXM/DQoNClRoYW5rIHlvdSBpbiBhZHZhbmNlLg0KLS0gDQpX
aXRoIFJlZ2FyZHMsDQpZdW51cyBCYXMNCg0KLVNvZnR3YXJlIEVuZ2luZWVyLQ0KUEhZVEVDIE1l
c3N0ZWNobmlrIEdtYkgNClJvYmVydC1Lb2NoLVN0ci4gMzkNCjU1MTI5IE1haW56DQpHZXJtYW55
DQpUZWwuOiArNDkgKDApNjEzMSA5MjIxLcKgNDY2DQpXZWI6wqB3d3cucGh5dGVjLmRlDQoNClNp
ZSBmaW5kZW4gdW5zIGF1Y2ggYXVmOsKgRmFjZWJvb2sswqBMaW5rZWRJbizCoFhpbmcswqBZb3VU
dWJlDQoNClBIWVRFQyBNZXNzdGVjaG5payBHbWJIIHwgUm9iZXJ0LUtvY2gtU3RyLiAzOSB8IDU1
MTI5IE1haW56LCBHZXJtYW55DQpHZXNjaMOkZnRzZsO8aHJlcjogRGlwbC4tSW5nLiBNaWNoYWVs
IE1pdGV6a2ksIERpcGwuLUluZy4gQm9kbyBIdWJlciB8DQpIYW5kZWxzcmVnaXN0ZXIgTWFpbnog
SFJCIDQ2NTYgfCBGaW5hbnphbXQgTWFpbnogfCBTdC5Oci4gMjY2NTAwNjA4LCBERQ0KMTQ5MDU5
ODU1DQpUaGlzIEUtTWFpbCBtYXkgY29udGFpbiBjb25maWRlbnRpYWwgb3IgcHJpdmlsZWdlZCBp
bmZvcm1hdGlvbi4gSWYgeW91DQphcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQgKG9yIGhh
dmUgcmVjZWl2ZWQgdGhpcyBFLU1haWwgaW4gZXJyb3IpDQpwbGVhc2Ugbm90aWZ5IHRoZSBzZW5k
ZXIgaW1tZWRpYXRlbHkgYW5kIGRlc3Ryb3kgdGhpcyBFLU1haWwuIEFueQ0KdW5hdXRob3JpemVk
IGNvcHlpbmcsIGRpc2Nsb3N1cmUgb3IgZGlzdHJpYnV0aW9uIG9mIHRoZSBtYXRlcmlhbCBpbg0K
dGhpcyBFLU1haWwgaXMgc3RyaWN0bHkgZm9yYmlkZGVuLg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=

