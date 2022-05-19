Delivery-date: Thu, 19 May 2022 10:13:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrbHP-001r3C-AA
	for lore@lore.pengutronix.de; Thu, 19 May 2022 10:13:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrbHO-0004iv-0O
	for lore@pengutronix.de; Thu, 19 May 2022 10:13:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVbhsSs25gMSXf61KiLOsDhlQHiavcDUFPR+z/oM2mI=; b=tPVeiormSPN3PT
	FcUklYQX9BNrUoMSKu+zw3E+FsDNq/hKvgPML73n4e5m/lNICccVC2rTbzX1U84m4s4yp3af4+AEm
	QOuBGbxEFBsAHdakO4Vn2c4K64SXf9WBxAg7gVcg/ebtUWX4PbzOCnRfacjlw02fptL5fKo+DjZvV
	YTwmMkv51EEVre73L0aWbCXoIIbdPjS2fcGXJI55Lbw/05u6nVtIevNeKf4Y+xA9VsleU01vw3wmu
	QenFTeynw10vQUPB10EKwpaZius/rkBOlbAxMZ8SdsKalpiuqZUaDY83HYFDzhkCvKv2vAP5VVekP
	FLkU8BBrkOwXPZjG+BPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrbFk-005iTQ-0U; Thu, 19 May 2022 08:11:24 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrbFf-005iSo-FD
 for barebox@lists.infradead.org; Thu, 19 May 2022 08:11:20 +0000
Received: by mail-pl1-x634.google.com with SMTP id i8so4102301plr.13
 for <barebox@lists.infradead.org>; Thu, 19 May 2022 01:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZHCfCizaRvY6rsrKsdiSG4W6CBKMdbzRg0i+7BIDz2o=;
 b=Av0xVW5QTZUERgyVix1nbd8dK/WMhKKRNKgfnou+NBxeud2rnIe66phVbM+1JGF7ds
 8XHpcl02qcyqpIovU7Wsj8rug+8WDwrAwE09tu6DUgEM/XqXaw00lb/nuej/sJCnFa5a
 AKmdO3T++nwINR274HohyvOg9lwvZ3AcZTQI/rrhw0KRZmy4kBzHPBoilSfa5quU+Ye8
 hDJTbKOPrLeSL9DgQThupYmNxci8BOk3QyqXPyQgDpUIs9h07dNp6ZbdvpbREXRyRoTQ
 1QUq5ix1f66DNLIWBPf1XW78gK5typQCrs2UQZgUg9PY2K3ZTyStsc4KPyE9w32Zru1n
 U92g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZHCfCizaRvY6rsrKsdiSG4W6CBKMdbzRg0i+7BIDz2o=;
 b=ZvxhPg04IqP+Ru8PjoqnMVL8KirXX03lgSrhIsL+sKwfM9c4cu++QVczOPJ63Y3y58
 5ww4zcoeXW6oMdjYMxnWMaYr+s16Hhw3e7hjZ/PKQ5rEKVEtjQ4zk4xScwQEWbqrLD+c
 9BX9hmGsIVauq3y6GDb1o+cm/jTC+Lm/ReKUpDnG4RW9QTTUR7Iy10jOemyJXnNBBpiQ
 EUK1BH7gQB+cK9l8vg5mQZyx3mW4PbBEbDnvPcNkJSfdQZud1Sf7w5UnECyH0kXMPwA1
 3Zyjcb40ltRRIICUcldQlO/9+AS8jHK1M1ysFG5Urj2v1N7t7eXxtucKufpLHNgqSO74
 uPPA==
X-Gm-Message-State: AOAM532yXA0KcBCfZbPB64HZUJF6C4WL6bWWz7FovwrjRQ2YCWeG+VZe
 5vO+8gOKFxhuw8hYH9nO3mjglIYHeWcdSFT4x/cs8R2hrPY=
X-Google-Smtp-Source: ABdhPJwaQfh4QHijRLxjUwpEAqHKPn5C6ZFlkBp9LviKaTOGbvCdgzD/qkDbt1GzaApM3JtUNWIGnhuaIEkWj+6JJbE=
X-Received: by 2002:a17:90a:3b07:b0:1de:b43f:f976 with SMTP id
 d7-20020a17090a3b0700b001deb43ff976mr4576675pjc.192.1652947878062; Thu, 19
 May 2022 01:11:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220518125852.GS25578@pengutronix.de>
In-Reply-To: <20220518125852.GS25578@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 19 May 2022 11:11:06 +0300
Message-ID: <CAP1tNvT6RpQ5P4ZX4z0cObdOxL0ZBw9y_N9MSQv_9vB1NpTfPA@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_011119_561942_DC4FEB22 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: v2022.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0YHRgCwgMTgg0LzQsNGPIDIwMjIg0LMuINCyIDE2OjAwLCBTYXNjaGEgSGF1ZXIgPHNoYUBwZW5n
dXRyb25peC5kZT46Cj4gSGkgQWxsLAo+IGJhcmVib3gtMjAyMi4wNS4wIGlzIG91dC4KCkhlbGxv
LgpBZnRlciB1cGRhdGluZyB0byB0aGUgbmV3IHZlcnNpb24sIEkgZm91bmQgZXJyb3JzLi4uClRo
aXMgaXMgcHJvYmFibHkgdGhlIHJlc3VsdCBvZiB0aGUgImdwaW86IGFsbG9jYXRlIGR5bmFtaWMg
Z3BpbwpudW1iZXJzIHRvcCBkb3duIiBwYXRjaC4KSW4gdGhlIGdwaW9jaGlwX2ZpbmRfYmFzZSBm
dW5jdGlvbiwgaXQgc2VlbXMgdG8gbWUgdGhhdCB3ZSBzaG91bGQKY2hhbmdlIHRoZSBhbGdvcml0
aG0KaWYgdGhlIGNoaXAgZXhpc3RzLCBzdWNoIGFzOgppZiAoIWNoaXApIHsKICAuLi4KfSBlbHNl
IHsKICBzcGFyZSA9IDA7CiAgaSs9IGNoaXAtPm5ncGlvIC0gMTsgLy8gU2hvdWxkIGJlOiBpIC09
IGNoaXAtPm5ncGlvIC0gMTsgPz8/Cn0KVGhhbmtzIQoKYmFyZWJveCAyMDIyLjA1LjAtMDA1MDYt
ZzFlZDE3Yjc0MmVkZSAjNTkgVGh1IE1heSAxOSAwOTowMzoyNyBNU0sgMjAyMgpCb2FyZDogTWVn
YS1NaWxhcyBJbmZvcm1lci9TcGlkZXIgQU0zMzV4CmNwc3ctbWRpbyA0YTEwMTAwMC5tZGlvQDEw
MDAub2Y6IGRldGVjdGVkIHBoeSBtYXNrIDB4MTAKbWRpb19idXM6IG1paWJ1czA6IHByb2JlZApl
dGgwOiBnb3QgcHJlc2V0IE1BQyBhZGRyZXNzOiBkMDowMzplYjplZjpjMjphNgppMmMtb21hcCA0
NGUwYjAwMC5pMmNAMC5vZjogYnVzIDAgcmV2MC4xMSBhdCA0MDAga0h6Cm9tYXAtaHNtbWMgNDgw
NjAwMDAubW1jQDAub2Y6IHJlZ2lzdGVyZWQgYXMgbW1jMApvbWFwX3dkdCA0NGUzNTAwMC53ZHRA
MC5vZjogT01BUCBXYXRjaGRvZyBUaW1lciBSZXYgMHgwMQp1bmFibGUgdG8gaGFuZGxlIHBhZ2lu
ZyByZXF1ZXN0IGF0IGFkZHJlc3MgMHgzZTBkMDAwOApwYyA6IFs8OGZlMmIyMDg+XSAgICBsciA6
IFs8OGZlMmJmM2Y+XQpzcCA6IDhmZmVmZjQwICBpcCA6IDAwMDAwMDAwICBmcCA6IDAwMDNmNGY0
CnIxMDogMDAxN2E0ZDggIHI5IDogOGZlN2Q2MjggIHI4IDogMDAwMDAwMDAKcjcgOiA4N2Y1OWNk
MCAgcjYgOiAwMDAwMDAwMCAgcjUgOiA4N2Y1YWZiYyAgcjQgOiAzZTBkMDAwMApyMyA6IDAwMDAw
MTBjICByMiA6IDAwMDAwMDAxICByMSA6IDg3ZWZmMDQ4ICByMCA6IDAwMDAwMDA4CkZsYWdzOiBu
emN2ICBJUlFzIG9mZiAgRklRcyBvbiAgTW9kZSBTVkNfMzIKV0FSTklORzogWzw4ZmUyYjIwOD5d
IChncGlvY2hpcF9hZGQrMHg4MC8weDI5NCkgZnJvbSBbPDhmZTJiZjNmPl0KKHBjYTk1M3hfcHJv
YmUrMHgxMWIvMHgxNTgpCldBUk5JTkc6IFs8OGZlMmJmM2Y+XSAocGNhOTUzeF9wcm9iZSsweDEx
Yi8weDE1OCkgZnJvbSBbPDhmZTBhOTAxPl0KKGRldmljZV9wcm9iZSsweDJkLzB4YWMpCldBUk5J
Tkc6IFs8OGZlMGE5MDE+XSAoZGV2aWNlX3Byb2JlKzB4MmQvMHhhYykgZnJvbSBbPDhmZTBhOWE3
Pl0KKG1hdGNoKzB4MjcvMHgyYykKV0FSTklORzogWzw4ZmUwYTlhNz5dIChtYXRjaCsweDI3LzB4
MmMpIGZyb20gWzw4ZmUwYWNmMz5dCihyZWdpc3Rlcl9kcml2ZXIrMHg2Yi8weDg4KQpXQVJOSU5H
OiBbPDhmZTBhY2YzPl0gKHJlZ2lzdGVyX2RyaXZlcisweDZiLzB4ODgpIGZyb20gWzw4ZmUwMGYw
OT5dCihzdGFydF9iYXJlYm94KzB4MzUvMHg2YykKV0FSTklORzogWzw4ZmUwMGYwOT5dIChzdGFy
dF9iYXJlYm94KzB4MzUvMHg2YykgZnJvbSBbPDhmZTQ2YWE3Pl0KKGJhcmVib3hfbm9uX3BibF9z
dGFydCsweDEyNy8weDE2YykKV0FSTklORzogWzw4ZmU0NmFhNz5dIChiYXJlYm94X25vbl9wYmxf
c3RhcnQrMHgxMjcvMHgxNmMpIGZyb20KWzw4ZmUwMDAwNT5dIChfX2JhcmVfaW5pdF9zdGFydCsw
eDEvMHhjKQpXQVJOSU5HOiBbPDhmZTQ4MmRkPl0gKHVud2luZF9iYWNrdHJhY2UrMHgxLzB4Nzgp
IGZyb20gWzw4ZmUwMTIzNT5dCihwYW5pYysweDFkLzB4MjApCldBUk5JTkc6IFs8OGZlMDEyMzU+
XSAocGFuaWMrMHgxZC8weDIwKSBmcm9tIFs8OGZlNDYzMjM+XQooZG9fZXhjZXB0aW9uKzB4Zi8w
eDE0KQpXQVJOSU5HOiBbPDhmZTQ2MzIzPl0gKGRvX2V4Y2VwdGlvbisweGYvMHgxNCkgZnJvbSBb
PDhmZTQ2MzkxPl0KKGRvX2RhdGFfYWJvcnQrMHgyMS8weDM0KQpXQVJOSU5HOiBbPDhmZTQ2Mzkx
Pl0gKGRvX2RhdGFfYWJvcnQrMHgyMS8weDM0KSBmcm9tIFs8OGZlNDYwZDQ+XQooZG9fYWJvcnRf
NisweDQ4LzB4NTQpCiMjIyBFUlJPUiAjIyMgUGxlYXNlIFJFU0VUIHRoZSBib2FyZCAjIyMKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFp
bGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

