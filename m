Delivery-date: Wed, 02 Aug 2023 12:51:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qR9Rm-003Oky-8s
	for lore@lore.pengutronix.de; Wed, 02 Aug 2023 12:51:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qR9Rk-0007CR-Dk
	for lore@pengutronix.de; Wed, 02 Aug 2023 12:51:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hL6XxoFOk28PZQUhuo1AV0kRuAXb0+xJKVIN39kCs/g=; b=Pa5b7Grvi4By4YgY+4Gij45eXr
	C0Qf1fugXf21ihMFIJ5Cj+6Xtn7Z675rSC/1dGNSwCjSQAiUYmqKAbUkV9rdWBtnp3Bgz7pvXB1EU
	qM/VvM7oaoF49jf5BwIPw7sr9eEIfNfATJ785MCjCouRriGCaLmvwPv9F0LaygYg1vAj2wkDN4/Jw
	qxsWCfJmx8oU6kU52Q89jK5Qu7D8uCTMlgFNNl1iPL9bV65GdIwi7SNZ/6Id67J2NIQnNmNUc0Jus
	QcDeRQ2z4cS4H1GNfRzsbaWLFRP6vpd1dK9KAglYtOSkk/WTIO8P49zXi5REMpoAMCS2GcloERmrj
	Z8LyQ3Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR9Qc-004dEo-2G;
	Wed, 02 Aug 2023 10:50:06 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR9Qa-004dE1-0J
	for barebox@lists.infradead.org;
	Wed, 02 Aug 2023 10:50:05 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4fe0e34f498so10715913e87.2
        for <barebox@lists.infradead.org>; Wed, 02 Aug 2023 03:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690973402; x=1691578202;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hL6XxoFOk28PZQUhuo1AV0kRuAXb0+xJKVIN39kCs/g=;
        b=rv6TBzEQYjmVMo12P5nxIViHr43IefD7iBM/PBp1HeZMjiYH+rSehtBK0X4Kdw5NPe
         5Tpvvoq+NpfsphUJWiQ15JV//sGSVDSdMGX061vuCA7MhDMVOV2TMbz+N+ttks12zjpi
         JVeYNmjbdr4AtNpN05/MGzpHFNX3kHvZL40ERX/L8HoGYRaKoNig/l468nYgikg1UD6n
         UmVIgPzcc29/h4heOWmzTxCz5pOVhAupGX8JLz5/eGhTM+M0TjCJvzi1LQaOLw/+qXoM
         1JVzXMpsaVpGpXv4yrQkBzCcPR5ic+470vGCYoTgY6JLEDEK//rsIDecOBelHs5rwFc5
         akrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690973402; x=1691578202;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hL6XxoFOk28PZQUhuo1AV0kRuAXb0+xJKVIN39kCs/g=;
        b=VuygbQjS1Gf8DRHWL5oFUJEuUz3c9BaY2LsEtQUu7DSjDeHJN+R3U5xC2P63PjYQWx
         t7nn2k+TIC+2ZtrJMUOiVGldGkQ97NkROnjjH2ailz7jtJSIqd+a0EojG9zI7gDcg3Dz
         c9wLOKLb0HIeaDrvcRHEsYY0Y/uheCDmHj7Ei1DTEFV5DYegAXxG0b5X2qCKJKmajyqq
         ZFNrThdm8oVX//m7CnKN685mdUL3lv9vNQGxDhDkwTI6q0tzkq5j67cJfISbCTc8XVSG
         /x20NZML2iO2oPm1+YT85pDR3mD2BAJ2qVpg8gHZ93bvOa+dSjR7kX785Tlw8q+UtN5r
         Fo4Q==
X-Gm-Message-State: ABy/qLZrPZdTSFWHa2BKx7HORiA24iBISz04F/fZynNAzOe9p0Id9/Lw
	5sEeLQwwYCYc3lyGLvT1EzamY9Ia/94=
X-Google-Smtp-Source: APBJJlGhX0d6b+LuqUZJZtSMvOTT8uIqEESiT/b491smLcjxG7PJsMNlpweHrwUeXVTIQDIrZYJwFQ==
X-Received: by 2002:a19:6554:0:b0:4f9:5d2a:e0f6 with SMTP id c20-20020a196554000000b004f95d2ae0f6mr3864122lfj.14.1690973402054;
        Wed, 02 Aug 2023 03:50:02 -0700 (PDT)
Received: from lifebook.fritz.box (p200300da67420000613116fa53eba4c2.dip0.t-ipconnect.de. [2003:da:6742:0:6131:16fa:53eb:a4c2])
        by smtp.gmail.com with ESMTPSA id b26-20020aa7d49a000000b0051dfa2e30b2sm8311873edr.9.2023.08.02.03.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Aug 2023 03:50:01 -0700 (PDT)
Message-ID: <c030c5f45f0e3206cfa99d99dc62813df7dac6aa.camel@gmail.com>
From: Denis Osterland-Heim <denis.osterland@gmail.com>
To: barebox@lists.infradead.org
Cc: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
Date: Wed, 02 Aug 2023 12:50:01 +0200
In-Reply-To: <20230801104417.8941-1-denis.osterland@gmail.com>
References: <20230801104417.8941-1-denis.osterland@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_035004_139825_EB56C528 
X-CRM114-Status: GOOD (  12.00  )
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
Subject: [PATCH 2/2] raspi: fixup additional vc created nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogRGVuaXMgT1NURVJMQU5ELUhFSU0gPGRlbmlzLm9zdGVybGFuZEBkaWVobC5jb20+CgpU
aGUgdmlkZW8gY29yZSBjcmVhdGVzIHNvbWUgYWRkaXRpb25hbCBub2Rlcy4KVGhpcyBjb2RlIHRh
a2VzIG92ZXIgdGhpcyB2YWx1ZXMuClRoZSAvaGF0IG5vZGUgaXMgb25seSB0aGVyZSBpZiBhbiBy
YXNwaSBoYXQgd2l0aCBFRVBST00gaXMgZGV0ZWN0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBEZW5pcyBP
U1RFUkxBTkQtSEVJTSA8ZGVuaXMub3N0ZXJsYW5kQGRpZWhsLmNvbT4KLS0tCsKgYXJjaC9hcm0v
Ym9hcmRzL3Jhc3BiZXJyeS1waS9ycGktY29tbW9uLmMgfCAzOCArKysrKysrKysrKysrKysrKy0t
LS0tLQrCoDEgZmlsZSBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9yYXNwYmVycnktcGkvcnBpLWNvbW1vbi5jCmIv
YXJjaC9hcm0vYm9hcmRzL3Jhc3BiZXJyeS1waS9ycGktY29tbW9uLmMKaW5kZXggMmY1MjVlN2Q3
MC4uOWM4NWM4NWQxNCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9hcmRzL3Jhc3BiZXJyeS1waS9y
cGktY29tbW9uLmMKKysrIGIvYXJjaC9hcm0vYm9hcmRzL3Jhc3BiZXJyeS1waS9ycGktY29tbW9u
LmMKQEAgLTI2NCwxOSArMjY0LDM2IEBAIHN0YXRpYyBlbnVtIHJlc2V0X3NyY190eXBlCnJwaV9k
ZWNvZGVfcG1fcnN0cyhzdHJ1Y3QgZGV2aWNlX25vZGUgKmNob3NlbiwKwqAKwqBzdGF0aWMgaW50
IHJwaV92Y19mZHRfZml4dXAoc3RydWN0IGRldmljZV9ub2RlICpyb290LCB2b2lkICpkYXRhKQrC
oHsKLcKgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGRldmljZV9ub2RlICp2Y19jaG9zZW4gPSBk
YXRhOwotwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZGV2aWNlX25vZGUgKmNob3NlbjsKK8KgwqDCoMKg
wqDCoMKgY29uc3Qgc3RydWN0IGRldmljZV9ub2RlICp2Y19ub2RlID0gZGF0YTsKK8KgwqDCoMKg
wqDCoMKgc3RydWN0IGRldmljZV9ub2RlICpub2RlOworwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgcHJv
cGVydHkgKnBwOwrCoAotwqDCoMKgwqDCoMKgwqBjaG9zZW4gPSBvZl9jcmVhdGVfbm9kZShyb290
LCAiL2Nob3NlbiIpOwotwqDCoMKgwqDCoMKgwqBpZiAoIWNob3NlbikKK8KgwqDCoMKgwqDCoMKg
bm9kZSA9IG9mX2NyZWF0ZV9ub2RlKHJvb3QsIHZjX25vZGUtPmZ1bGxfbmFtZSk7CivCoMKgwqDC
oMKgwqDCoGlmICghbm9kZSkKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
LUVOT01FTTsKwqAKLcKgwqDCoMKgwqDCoMKgb2ZfY29weV9wcm9wZXJ0eSh2Y19jaG9zZW4sICJv
dmVybGF5X3ByZWZpeCIsIGNob3Nlbik7Ci3CoMKgwqDCoMKgwqDCoG9mX2NvcHlfcHJvcGVydHko
dmNfY2hvc2VuLCAib3NfcHJlZml4IiwgY2hvc2VuKTsKK8KgwqDCoMKgwqDCoMKgZm9yX2VhY2hf
cHJvcGVydHlfb2Zfbm9kZSh2Y19ub2RlLCBwcCkKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoG9mX2NvcHlfcHJvcGVydHkodmNfbm9kZSwgcHAtPm5hbWUsIG5vZGUpOwrCoArCoMKgwqDC
oMKgwqDCoMKgcmV0dXJuIDA7CsKgfQrCoAorc3RhdGljIHN0cnVjdCBkZXZpY2Vfbm9kZSAqcmVn
aXN0ZXJfdmNfZml4dXAoc3RydWN0IGRldmljZV9ub2RlICpyb290LApjb25zdCBjaGFyICpwYXRo
KQoreworwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZGV2aWNlX25vZGUgKnJldCwgKnRtcDsKKworwqDC
oMKgwqDCoMKgwqByZXQgPSBvZl9maW5kX25vZGVfYnlfcGF0aF9mcm9tKHJvb3QsIHBhdGgpOwor
wqDCoMKgwqDCoMKgwqBpZiAocmV0KSB7CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0
bXAgPSBvZl9kdXAocmV0KTsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRtcC0+ZnVs
bF9uYW1lID0geHN0cmR1cChyZXQtPmZ1bGxfbmFtZSk7CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBvZl9yZWdpc3Rlcl9maXh1cChycGlfdmNfZmR0X2ZpeHVwLCB0bXApOworwqDCoMKg
wqDCoMKgwqB9IGVsc2UgeworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcHJfaW5mbygi
bm8gJyVzJyBub2RlIGZvdW5kIGluIHZjIGZkdFxuIiwgcGF0aCk7CivCoMKgwqDCoMKgwqDCoH0K
KworwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0OworfQorCsKgc3RhdGljIHUzMiBycGlfYm9vdF9t
b2RlLCBycGlfYm9vdF9wYXJ0OwrCoC8qIEV4dHJhY3QgdXNlZnVsIGluZm9ybWF0aW9uIGZyb20g
dGhlIFZpZGVvQ29yZSBGRFQgd2UgZ290LgrCoCAqIFNvbWUgcGFyYW1ldGVycyBhcmUgZGVmaW5l
ZCBoZXJlOgpAQCAtMzAwLDE0ICszMTcsMTcgQEAgc3RhdGljIHZvaWQgcnBpX3ZjX2ZkdF9wYXJz
ZShzdHJ1Y3QgZGV2aWNlX25vZGUKKnJvb3QpCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZnJlZShzdHIpOwrCoMKgwqDCoMKgwqDCoMKgfQrCoAotwqDCoMKgwqDCoMKgwqBjaG9zZW4g
PSBvZl9maW5kX25vZGVfYnlfcGF0aF9mcm9tKHJvb3QsICIvY2hvc2VuIik7CivCoMKgwqDCoMKg
wqDCoHJlZ2lzdGVyX3ZjX2ZpeHVwKHJvb3QsICIvc3lzdGVtIik7CivCoMKgwqDCoMKgwqDCoHJl
Z2lzdGVyX3ZjX2ZpeHVwKHJvb3QsICIvYXhpIik7CivCoMKgwqDCoMKgwqDCoHJlZ2lzdGVyX3Zj
X2ZpeHVwKHJvb3QsICIvcmVzZXJ2ZWQtbWVtb3J5Iik7CivCoMKgwqDCoMKgwqDCoHJlZ2lzdGVy
X3ZjX2ZpeHVwKHJvb3QsICIvaGF0Iik7CivCoMKgwqDCoMKgwqDCoHJlZ2lzdGVyX3ZjX2ZpeHVw
KHJvb3QsICIvY2hvc2VuL2Jvb3Rsb2FkZXIiKTsKK8KgwqDCoMKgwqDCoMKgY2hvc2VuID0gcmVn
aXN0ZXJfdmNfZml4dXAocm9vdCwgIi9jaG9zZW4iKTsKwqDCoMKgwqDCoMKgwqDCoGlmICghY2hv
c2VuKSB7CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcHJfZXJyKCJubyAnL2Nob3Nl
bicgbm9kZSBmb3VuZCBpbiB2YyBmZHRcbiIpOwrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGdvdG8gb3V0OwrCoMKgwqDCoMKgwqDCoMKgfQrCoAotwqDCoMKgwqDCoMKgwqBvZl9yZWdp
c3Rlcl9maXh1cChycGlfdmNfZmR0X2ZpeHVwLCBvZl9kdXAoY2hvc2VuKSk7Ci0KwqDCoMKgwqDC
oMKgwqDCoGJvb3Rsb2FkZXIgPSBvZl9maW5kX25vZGVfYnlfbmFtZShjaG9zZW4sICJib290bG9h
ZGVyIik7CsKgCsKgwqDCoMKgwqDCoMKgwqBzdHIgPSBvZl9yZWFkX3ZjX3N0cmluZyhjaG9zZW4s
ICJib290YXJncyIpOwotLSAKMi4zOS4zCgoK



