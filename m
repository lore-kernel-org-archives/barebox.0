Delivery-date: Wed, 02 Aug 2023 12:51:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qR9Rm-003OlT-WD
	for lore@lore.pengutronix.de; Wed, 02 Aug 2023 12:51:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qR9Rl-0007Ce-09
	for lore@pengutronix.de; Wed, 02 Aug 2023 12:51:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=obdCeaYMtKbpMKoQ/0ghpkaILrtXkwvyD7zhZ7/hQew=; b=xuwSMEEuCsLOQvEyVpPT7Dj1ih
	NzwRIG9edMoUqZO79qRZm+O+z/vTvJeFnwQDW5ofHRPLaY53sJ/r+UeITp4V/8K1/6yi/AHpHO+RW
	ZittfBJwPG+CNWQbHE6WAVlmplk0YIrtNabgY2YrWcUUTP2fwX4xV3u3hNz8rm9xm/tg78GkMXX6V
	x+bUbHknx82//zdOpFIF1gK3qDm68dvDcReeRiDl09Yk7bCpYwAMvKpM4/MAZmQL5lbfM6m2xV2EJ
	BD3YlG47Q6LNsxUlcb/0Kp7PYP0NU61xe8w2/xFgkUt8EJoePwDX1lFILowG/bBdw3pd/H6CV4bqi
	88vuSRdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR9QW-004dDN-36;
	Wed, 02 Aug 2023 10:50:00 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR9QU-004dCs-0N
	for barebox@lists.infradead.org;
	Wed, 02 Aug 2023 10:49:59 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b95d5ee18dso103204701fa.1
        for <barebox@lists.infradead.org>; Wed, 02 Aug 2023 03:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690973395; x=1691578195;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=obdCeaYMtKbpMKoQ/0ghpkaILrtXkwvyD7zhZ7/hQew=;
        b=libEiX8wW/jTX5XqeaB8xvi9XcaxcXUtxnX+ziQeTV4V3QJtIZk2uzksPdd/QrvYZi
         MK2AIcZVtkrfXFHjQtPRDoiVkGYpV5mM5iLZ1NY6C1jap0xINxy5plQIhMDFNrSxpz1a
         tAl2J5AZBTph7XwEAuSNfh3ld6YNLoHmj2gkW5wp16lcj4YkT3FAne1e+4ezUdQNLTXI
         1GXvHoY+1byAouvTOyftqaEtBZnqmV6nE78WP5yPLf4QZ3eYvyqRskdCP/B5/aXlNU5A
         sGtag8mwfmYJxrXXVQaz+0u4OFnxN8wst9TvgviXIPEwqrJoJAUHeD1KvShfVvgiUmnT
         tFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690973395; x=1691578195;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=obdCeaYMtKbpMKoQ/0ghpkaILrtXkwvyD7zhZ7/hQew=;
        b=Z8MxqjJVTM6MHDTsvFRbQjF5wsaM/lrJivtdY9zs28Eo5eDj2SFwQG7LgOR2NHY0Zo
         8IHZwPhFBAJtliqMaV/u62Fyl8fZv21BR5QxYGY8SVvQx49ZZYT4WzgPgUj05cQ/sApk
         rlmIHNySDVid+QtozTaux4LxoYQz47rYg8uMkL+66sgdedbnIztybFaXe+OOWvE53Pat
         yph5KdoB8Da/3cJzc6yAmFSMbeRxurSLMIuf6D+w/yxfdi7mJzR18ZM69Pr95WvL1BC5
         mK6B1quiDjhqG+SgG58UkVWoFiZU4pQ78UYQIs//pfEue2pwQ4CIA0gvWNZZ93KCGSQ8
         VRxQ==
X-Gm-Message-State: ABy/qLa2Zsn7Jajrct1vQGxfq2oHJ5OLzuMHBsWxbLiUQ6sdreQIuJ9E
	nSeqsNjv9qWQIm17KDxVm4cv9OZ/y1c=
X-Google-Smtp-Source: APBJJlE3mU3oRp8LKieUZxHiIC9/3HBf1l9Nwdm9pLKY/BK9CJjojbmLjz2sNPxs01MAhlImQ4slFg==
X-Received: by 2002:a2e:80c5:0:b0:2b9:e623:c2d8 with SMTP id r5-20020a2e80c5000000b002b9e623c2d8mr4441371ljg.44.1690973395371;
        Wed, 02 Aug 2023 03:49:55 -0700 (PDT)
Received: from lifebook.fritz.box (p200300da67420000613116fa53eba4c2.dip0.t-ipconnect.de. [2003:da:6742:0:6131:16fa:53eb:a4c2])
        by smtp.gmail.com with ESMTPSA id ke16-20020a17090798f000b00989027eb30asm8882659ejc.158.2023.08.02.03.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Aug 2023 03:49:55 -0700 (PDT)
Message-ID: <6bbc80679a4a24710e779989c6bcc4ab8278122f.camel@gmail.com>
From: Denis Osterland-Heim <denis.osterland@gmail.com>
To: barebox@lists.infradead.org
Cc: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
Date: Wed, 02 Aug 2023 12:49:54 +0200
In-Reply-To: <20230801104417.8941-1-denis.osterland@gmail.com>
References: <20230801104417.8941-1-denis.osterland@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_034958_176799_9F9EE9C1 
X-CRM114-Status: GOOD (  14.45  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] raspi: support to read vc values via dt-2nd boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogRGVuaXMgT1NURVJMQU5ELUhFSU0gPGRlbmlzLm9zdGVybGFuZEBkaWVobC5jb20+CgpJ
biBjYXNlIG9mIGJvb3QgdmlhIGR0LTJuZCBwYmwgZG9lcyBub3QgY29weSBkdGIsIGJlY2F1c2Ug
aXQgaXMgbm90CmV4ZWN1dGVkLiBXaXRoIHRoaXMgcGF0Y2ggdGhlIHZhbHVlcyB3ZXJlIHJlYWQg
YW5kIHJlZ2lzdGVyZWQgYXMKZml4LXVwcy4gSXQgYWxzbyBhZGRzIGEgaW5pZiBmdW5jdGlvbiB0
aGF0IG9ubHkgZml4LXVwcyB0aGUgZXRoZXJuZXQKTUFDIGFkZHJlc3MuCgpTaWduZWQtb2ZmLWJ5
OiBEZW5pcyBPU1RFUkxBTkQtSEVJTSA8ZGVuaXMub3N0ZXJsYW5kQGRpZWhsLmNvbT4KLS0tCsKg
YXJjaC9hcm0vYm9hcmRzL3Jhc3BiZXJyeS1waS9ycGktY29tbW9uLmMgfCAzMiArKysrKysrKysr
KysrKy0tLS0tLS0tLQrCoDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib2FyZHMvcmFzcGJlcnJ5LXBpL3JwaS1j
b21tb24uYwpiL2FyY2gvYXJtL2JvYXJkcy9yYXNwYmVycnktcGkvcnBpLWNvbW1vbi5jCmluZGV4
IDU2ZTdlZWJkNjEuLjJmNTI1ZTdkNzAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJkcy9yYXNw
YmVycnktcGkvcnBpLWNvbW1vbi5jCisrKyBiL2FyY2gvYXJtL2JvYXJkcy9yYXNwYmVycnktcGkv
cnBpLWNvbW1vbi5jCkBAIC0xMTAsNiArMTEwLDEyIEBAIHN0YXRpYyB2b2lkIHJwaV9hZGRfbGVk
KHZvaWQpCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGVkX3NldF90cmlnZ2VyKExF
RF9UUklHR0VSX0hFQVJUQkVBVCwgJmwtPmxlZCk7CsKgfQrCoAorc3RhdGljIGludCBycGlfZXRo
X2luaXQoc3RydWN0IHJwaV9wcml2ICpwcml2KQoreworwqDCoMKgwqDCoMKgwqBycGlfc2V0X3Vz
YmV0aGFkZHIoKTsKK8KgwqDCoMKgwqDCoMKgcmV0dXJuIDA7Cit9CisKwqBzdGF0aWMgaW50IHJw
aV9iX2luaXQoc3RydWN0IHJwaV9wcml2ICpwcml2KQrCoHsKwqDCoMKgwqDCoMKgwqDCoHJwaV9s
ZWRzWzBdLmdwaW8gPSAxNjsKQEAgLTI3NiwxNiArMjgyLDEyIEBAIHN0YXRpYyB1MzIgcnBpX2Jv
b3RfbW9kZSwgcnBpX2Jvb3RfcGFydDsKwqAgKiBTb21lIHBhcmFtZXRlcnMgYXJlIGRlZmluZWQg
aGVyZToKwqAgKgpodHRwczovL3d3dy5yYXNwYmVycnlwaS5jb20vZG9jdW1lbnRhdGlvbi9jb21w
dXRlcnMvY29uZmlndXJhdGlvbi5odG1sI3BhcnQ0CsKgICovCi1zdGF0aWMgdm9pZCBycGlfdmNf
ZmR0X3BhcnNlKHZvaWQgKmZkdCkKK3N0YXRpYyB2b2lkIHJwaV92Y19mZHRfcGFyc2Uoc3RydWN0
IGRldmljZV9ub2RlICpyb290KQrCoHsKwqDCoMKgwqDCoMKgwqDCoGludCByZXQ7Ci3CoMKgwqDC
oMKgwqDCoHN0cnVjdCBkZXZpY2Vfbm9kZSAqcm9vdCwgKmNob3NlbiwgKmJvb3Rsb2FkZXIsICpt
ZW1vcnk7CivCoMKgwqDCoMKgwqDCoHN0cnVjdCBkZXZpY2Vfbm9kZSAqY2hvc2VuLCAqYm9vdGxv
YWRlciwgKm1lbW9yeTsKwqDCoMKgwqDCoMKgwqDCoGNoYXIgKnN0cjsKwqAKLcKgwqDCoMKgwqDC
oMKgcm9vdCA9IG9mX3VuZmxhdHRlbl9kdGIoZmR0LCBJTlRfTUFYKTsKLcKgwqDCoMKgwqDCoMKg
aWYgKElTX0VSUihyb290KSkKLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsK
LQrCoMKgwqDCoMKgwqDCoMKgc3RyID0gb2ZfcmVhZF92Y19zdHJpbmcocm9vdCwgInNlcmlhbC1u
dW1iZXIiKTsKwqDCoMKgwqDCoMKgwqDCoGlmIChzdHIpIHsKwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBiYXJlYm94X3NldF9zZXJpYWxfbnVtYmVyKHN0cik7CkBAIC0zNjMsNyArMzY1
LDcgQEAgc3RhdGljIHZvaWQgcnBpX3ZjX2ZkdF9wYXJzZSh2b2lkICpmZHQpCsKgwqDCoMKgwqDC
oMKgwqByZXR1cm47CsKgfQrCoAotc3RhdGljIHZvaWQgcnBpX3ZjX2ZkdCh2b2lkKQorc3RhdGlj
IHN0cnVjdCBkZXZpY2Vfbm9kZSAqcnBpX3ZjX2ZkdCh2b2lkKQrCoHsKwqDCoMKgwqDCoMKgwqDC
oHZvaWQgKnNhdmVkX3ZjX2ZkdDsKwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBmZHRfaGVhZGVyICpv
ZnRyZWU7CkBAIC0zNzksMTcgKzM4MSwxNyBAQCBzdGF0aWMgdm9pZCBycGlfdmNfZmR0KHZvaWQp
CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKG9mdHJlZS0+dG90YWxzaXplKQrC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwcl9lcnIoInRo
ZXJlIHdhcyBhbiBlcnJvciBjb3B5aW5nIGZkdCBpbiBwYmw6CiVkXG4iLArCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGJlMzJfdG9fY3B1KG9mdHJlZS0KPnRvdGFsc2l6ZSkpOwotwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7CsKgwqDCoMKgwqDCoMKgwqB9CsKgCsKgwqDCoMKgwqDC
oMKgwqBpZiAobWFnaWMgIT0gRkRUX01BR0lDKQotwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuOworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIEVSUl9QVFIo
LUVJTlZBTCk7CsKgCsKgwqDCoMKgwqDCoMKgwqBzaXplID0gYmUzMl90b19jcHUob2Z0cmVlLT50
b3RhbHNpemUpOwrCoMKgwqDCoMKgwqDCoMKgaWYgKHdyaXRlX2ZpbGUoIi92Yy5kdGIiLCBzYXZl
ZF92Y19mZHQsIHNpemUpKQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHByX2Vycigi
ZmFpbGVkIHRvIHNhdmUgdmlkZW9jb3JlIGZkdCB0byBhIGZpbGVcbiIpOwotCi3CoMKgwqDCoMKg
wqDCoHJwaV92Y19mZHRfcGFyc2Uoc2F2ZWRfdmNfZmR0KTsKK8KgwqDCoMKgwqDCoMKgCivCoMKg
wqDCoMKgwqDCoHJldHVybiBvZl91bmZsYXR0ZW5fZHRiKHNhdmVkX3ZjX2ZkdCwgSU5UX01BWCk7
CsKgfQrCoArCoHN0YXRpYyB2b2lkIHJwaV9zZXRfa2VybmVsX25hbWUodm9pZCkgewpAQCAtNDUy
LDYgKzQ1NCw3IEBAIHN0YXRpYyBpbnQgcnBpX2RldmljZXNfcHJvYmUoc3RydWN0IGRldmljZSAq
ZGV2KQrCoMKgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IHJwaV9tYWNoaW5lX2RhdGEgKmRjZmc7
CsKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgcmVndWxhdG9yICpyZWc7CsKgwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgcnBpX3ByaXYgKnByaXY7CivCoMKgwqDCoMKgwqDCoHN0cnVjdCBkZXZpY2Vfbm9kZSAq
cm9vdDsKwqDCoMKgwqDCoMKgwqDCoGNvbnN0IGNoYXIgKm5hbWUsICpwdHI7CsKgwqDCoMKgwqDC
oMKgwqBjaGFyICpob3N0bmFtZTsKwqDCoMKgwqDCoMKgwqDCoGludCByZXQ7CkBAIC00ODAsNyAr
NDgzLDggQEAgc3RhdGljIGludCBycGlfZGV2aWNlc19wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYp
CsKgwqDCoMKgwqDCoMKgwqBiY20yODM1X3JlZ2lzdGVyX2ZiKCk7CsKgwqDCoMKgwqDCoMKgwqBh
cm1saW51eF9zZXRfYXJjaGl0ZWN0dXJlKE1BQ0hfVFlQRV9CQ00yNzA4KTsKwqDCoMKgwqDCoMKg
wqDCoHJwaV9lbnZfaW5pdCgpOwotwqDCoMKgwqDCoMKgwqBycGlfdmNfZmR0KCk7CivCoMKgwqDC
oMKgwqDCoHJvb3QgPSBycGlfdmNfZmR0KCk7CivCoMKgwqDCoMKgwqDCoHJwaV92Y19mZHRfcGFy
c2UoSVNfRVJSKHJvb3QpID8gcHJpdi0+ZGV2LT5kZXZpY2Vfbm9kZSA6IHJvb3QpOwrCoMKgwqDC
oMKgwqDCoMKgcnBpX3NldF9rZXJuZWxfbmFtZSgpOwrCoArCoMKgwqDCoMKgwqDCoMKgaWYgKGRj
ZmcgJiYgZGNmZy0+aW5pdCkKQEAgLTU5OSw2ICs2MDMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IHJwaV9tYWNoaW5lX2RhdGEgcnBpXzNfaWRzW10gPQp7CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgLmluaXQgPSBycGlfYl9wbHVzX2luaXQsCsKgwqDCoMKgwqDCoMKgwqB9LCB7CsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLmh3X2lkID0gQkNNMjgzN19CT0FSRF9SRVZf
Q00zLAorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLmluaXQgPSBycGlfZXRoX2luaXQs
CsKgwqDCoMKgwqDCoMKgwqB9LCB7CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLmh3
X2lkID0gQkNNMjgzN0IwX0JPQVJEX1JFVl9DTTNfUExVUywKwqDCoMKgwqDCoMKgwqDCoH0sIHsK
QEAgLTYxMSwxMCArNjE2LDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcnBpX21hY2hpbmVfZGF0
YSBycGlfM19pZHNbXQo9IHsKwqBzdGF0aWMgY29uc3Qgc3RydWN0IHJwaV9tYWNoaW5lX2RhdGEg
cnBpXzRfaWRzW10gPSB7CsKgwqDCoMKgwqDCoMKgwqB7CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgLmh3X2lkID0gQkNNMjcxMV9CT0FSRF9SRVZfNF9CLAorwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgLmluaXQgPSBycGlfZXRoX2luaXQsCsKgwqDCoMKgwqDCoMKgwqB9LCB7
CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLmh3X2lkID0gQkNNMjcxMV9CT0FSRF9S
RVZfNDAwLAorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLmluaXQgPSBycGlfZXRoX2lu
aXQsCsKgwqDCoMKgwqDCoMKgwqB9LCB7CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
Lmh3X2lkID0gQkNNMjcxMV9CT0FSRF9SRVZfQ000LAorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgLmluaXQgPSBycGlfZXRoX2luaXQsCsKgwqDCoMKgwqDCoMKgwqB9LCB7CsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLmh3X2lkID0gVThfTUFYCsKgwqDCoMKgwqDCoMKgwqB9
LAotLSAKMi4zOS4zCgoK



