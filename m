Delivery-date: Thu, 21 Apr 2022 09:59:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhRim-009vG7-11
	for lore@lore.pengutronix.de; Thu, 21 Apr 2022 09:59:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhRij-0003nv-5T
	for lore@pengutronix.de; Thu, 21 Apr 2022 09:59:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dV5PT0tNsmldGSahzCE1u5OH0KI/HDEfyjeZNL6BI88=; b=ntLe7jUOjEE6yM
	G4i/q8VVE311qfVUzAK0WxcOxBabkOSOR4Or3cVV6A70qt3QeDI9utcQ4Dw0fpkeG08crwOPAwng0
	5Sm/xK/Vtw5I8og09mAWUljmcYcyw0yn4qWVyU/+3XdLGMElHUuQ1vuujMt4pWC/CC5Sa1XgHi/VZ
	bvksDDOp9PKrU38sQGkFfNbngtcsYP1wj8HtPGQPdFtdaJ871Ed3FO3N1ludQHHqh/Lvm0IiqRpLG
	ao/QBdbY1Vh+eOnPs9w2Jh6VM7WB3K6lfiyOxQXMKFj9LwGNc9d5H5NvVr5dY6NokmgoSX9pnhYH9
	08CyqjlN0g/gas1f0+pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhRhL-00CFOa-El; Thu, 21 Apr 2022 07:57:55 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhRhD-00CFN4-WD
 for barebox@lists.infradead.org; Thu, 21 Apr 2022 07:57:49 +0000
Received: by mail-pg1-x52b.google.com with SMTP id k14so4036026pga.0
 for <barebox@lists.infradead.org>; Thu, 21 Apr 2022 00:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bZUCjOQiT1yjUnor7b1BALwIYgBeo1ZH83HdlRcuW1g=;
 b=Uk0W+g7xMgS55jJ5fEIVuTS/hhbdyAKWymgRzGty/lwWPr9MG4b6azJE3wgImOU8Ro
 6dWguOnWLmXq7mo64dHxEp/6urmgOGppe/nj2OojgqDfpaqoLZkKN4rvefVxzpgcAXc1
 u1G+x9fYj2m43hshbk/0kkITxdwXALTgMKbU43m8rR6+U5//NUx2+tNd8xZ0pPPMW5GU
 8JizEZPU/w7Os7f1w9Gc06f4gBI3Bynnv2mJ9dDUodJvu4cjdCynxFo0IN0seERlDb+F
 kVcjywdaMlkXT69xQI+pdfgLWI/24qOJQ2uIlb2IaFZJau12QijbLo7wxHeU0bGrt0g1
 dpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bZUCjOQiT1yjUnor7b1BALwIYgBeo1ZH83HdlRcuW1g=;
 b=lr9EAlNGK0pqlJ5Ax2P03bie1lD6VWY2yVJWVCz+vEpaBYCqjLE9hx7jL0PQfqlSkw
 QQX5RJEOarxZ4KJJfMG8WIiI033fHrw5izLcL/TZDxUUb6W9VxlwIN6jo1j4aH5vNF2r
 tEFiGjHJI/WIXlO3eGSrBxzf2QjuKjdSHnOXqNeWu6Qp1ahOwtbnkp/KPCAtAEwnooQT
 O3BluEjwvegnb4Es0ncc3lsxhDAdKwlX65P0ttrZE3kYiN+mCWbpM9tnHQlg1e/j6NPB
 B7ygjsBpid/0VnreyhT9HJ3nLA1PDtlAFKkO3/+RP+C8nDn3SetsZDbv9RqStAZGdnnx
 ss2A==
X-Gm-Message-State: AOAM532Aa9zIh4+ORshTLcbxCyd2PkSNZLn5dWMLYG+1EQOg+kIWUNXu
 sOAofVzeXWWyZJWvo2RdivZ9RmL3FUrMGzTLeQyvpcP8Epk+7Q==
X-Google-Smtp-Source: ABdhPJzQs/c3CX2bOmSXe2qgNXAZ2f4IHHAmkWegVSounwUW97dtK/4zs/x2QhuuLPzfOfOVMpA+ydBEKjYLfv4RDSc=
X-Received: by 2002:a05:6a00:1d19:b0:50a:3e40:d89f with SMTP id
 a25-20020a056a001d1900b0050a3e40d89fmr27403833pfx.61.1650527866432; Thu, 21
 Apr 2022 00:57:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220420095322.89880-1-eagle.alexander923@gmail.com>
 <20220421073546.GV4012@pengutronix.de>
In-Reply-To: <20220421073546.GV4012@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 21 Apr 2022 10:57:33 +0300
Message-ID: <CAP1tNvQOpnGwOUtHVTcxcMnv_GR=FNK3EuEFvBxDDcF-Fb9x3w@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_005748_096170_25815B81 
X-CRM114-Status: GOOD (  20.34  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: boards: Add support for MYIR MYD-AM335X Development
 Board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0YfRgiwgMjEg0LDQv9GALiAyMDIyINCzLiDQsiAxMDozNSwgU2FzY2hhIEhhdWVyIDxzaGFAcGVu
Z3V0cm9uaXguZGU+Ogo+Cj4gT24gV2VkLCBBcHIgMjAsIDIwMjIgYXQgMTI6NTM6MjJQTSArMDMw
MCwgQWxleGFuZGVyIFNoaXlhbiB3cm90ZToKPiA+IFRoZSBNWUQtQU0zMzVYIERldmVsb3BtZW50
IEJvYXJkIGRlc2lnbmVkIGJ5IE1ZSVIgaXMgYSBoaWdoLXBlcmZvcm1hbmNlCj4gPiBBUk0gRXZh
bHVhdGlvbiBNb2R1bGUgKEVWTSkgdXNpbmcgdGhlIE1ZQy1BTTMzNVggQ1BVIG1vZHVsZSBhcyB0
aGUgY29yZQo+ID4gY29udHJvbGxlciBib2FyZC4gSXQgaXMgYmFzZWQgb24gdXAgdG8gMUdIeiBU
ZXhhcyBJbnN0cnVtZW50cyAoVEkpCj4gPiBTaXRhcmEgQU0zMzV4IGZhbWlseSBvZiBBUk0gQ29y
dGV4LUE4IE1pY3JvcHJvY2Vzc29ycyAoTVBVcykgdGhhdCBkZWxpdmVyCj4gPiBoaWdoIERNSVBz
IGF0IGEgbG93IGNvc3Qgd2hpbGUgYWxzbyBkZWxpdmVyaW5nIG9wdGlvbmFsIDNEIGdyYXBoaWNz
Cj4gPiBhY2NlbGVyYXRpb24gYW5kIGtleSBwZXJpcGhlcmFscy4KPiA+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBBbGV4YW5kZXIgU2hpeWFuIDxlYWdsZS5hbGV4YW5kZXI5MjNAZ21haWwuY29tPgouLi4K
PiA+ICtzdGF0aWMgc3RydWN0IG9tYXBfYmFyZWJveF9wYXJ0IG15aXJfYmFyZWJveF9wYXJ0ID0g
ewo+ID4gKyAgICAgLm5hbmRfb2Zmc2V0ID0gU1pfMTI4SywKPiA+ICsgICAgIC5uYW5kX3NpemUg
PSBTWl81MTJLLAo+ID4gK307Cj4KPiBJc24ndCB0aGlzIGEgYml0IHRvbyBzbWFsbD8gUHV0dGlu
ZyBhIGJhcmVib3ggaW50byAxMjhrIHNlZW1zIHZlcnkKPiBhbWJpY291cy4KClRoZSBib290IGlt
YWdlIChNTE8pIHNob3VsZCBub3QgZXhjZWVkIDEyOCBLQiBpbiBzaXplLApzbyBJIHRoaW5rIHRo
aXMgc2hvdWxkIGJlIGVub3VnaC4KSW4gYW55IGNhc2UgdGhpcyBzaXplIGlzIGFscmVhZHkgc3Bl
Y2lmaWVkIGZvciB0aGUgYm9vdCBwYXJ0aXRpb24KaW4ga2VybmVsIERUUyBmb3IgdGhpcyBib2Fy
ZC4gOikKCi4uLgo+ID4gKysrIGIvYXJjaC9hcm0vYm9hcmRzL215aXJ0ZWNoLXgzMzV4L2RlZmF1
bHRlbnYtbXlpcnRlY2gteDMzNXgvbnYvbGludXguYm9vdGFyZ3MuY29uc29sZQo+ID4gQEAgLTAs
MCArMSBAQAo+ID4gK2NvbnNvbGU9dHR5UzAsMTE1MjAwbjggZWFybHlwcmludGsKPgo+IFRoZSBj
b25zb2xlPSBwYXJ0IHNob3VsZG4ndCBiZSBuZWVkZWQuIGJhcmVib3ggc2hvdWxkIGFkZCBhIGNv
bnNvbGU9Cj4gcGFyYW1ldGVyIG1hdGNoaW5nIHRoZSBjdXJyZW50IGJhcmVib3ggY29uc29sZSBh
dXRvbWF0aWNhbGx5Lgo+Cj4gSSB3b3VsZG4ndCBhZGQgdGhlIGVhcmx5cHJpbnRrIGJ5IGRlZmF1
bHQuIEl0IG1pZ2h0IGJyZWFrIGJvb3Rpbmcgd2hlbgo+IHRoZSBrZXJuZWwgaXMgbm90IGV4YWN0
bHkgY29uZmlndXJlZCBmb3IgeW91ciBib2FyZC4gQW55d2F5LCB0aGF0J3MKPiBwZXJzb25hbCB0
YXN0ZS4KCk9LLgoKLi4uCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vY29uZmlncy9teWlydGVj
aF9hbTMzNXhfbXlkX2RlZmNvbmZpZyBiL2FyY2gvYXJtL2NvbmZpZ3MvbXlpcnRlY2hfYW0zMzV4
X215ZF9kZWZjb25maWcKPgo+IERvIHlvdSBuZWVkIHRoaXMgY29uZmlnPyBJIHJhdGhlciBwcmVm
ZXIgdG8gYWRkIHRoZSBib2FyZCB0byBzb21lCj4gZXhpc3RpbmcgY29uZmlnLCBvbWFwX2RlZmNv
bmZpZyBpbiB0aGlzIGNhc2UuCgpPSy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK

