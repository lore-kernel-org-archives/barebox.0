Delivery-date: Mon, 25 Sep 2023 13:11:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qkjUq-00ATZN-Qv
	for lore@lore.pengutronix.de; Mon, 25 Sep 2023 13:11:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qkjUo-0004z1-S7
	for lore@pengutronix.de; Mon, 25 Sep 2023 13:11:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xqv748X+439kk/5SPhzH/jSPAButFzuLVyLrLkkrd6Y=; b=0O9xRIzRfAACY5qIAARRv+FCzQ
	wNzoRBSGNwlTnO5RaJ4slcVSzsMMdiTzbJ7NVbJVhqHSb1EQYYAr6RL4E+movIYBkooYHcx5nOQpr
	G1f45aLtTzgNOZTv9PQfEUlPyQf9cmAv/CTO6z5pKeMDZ3YpYpBh1uyjxMrsgw7HGkTMHQCFtcEdW
	PhBF4j5lB/qwr71E97rE302Rotdu8725EzaLNqcyZnTaAGZcUUMRObkw52n7drsPbDiSotG0p/3NS
	rXXLIhUca2RmlLqQyn0+ciOhdX8nyxcKk9u5lY/nZLsmS5F+8hcnqMjPv3FZOpO/8Q5xiFV1W/N8u
	dPfqkYlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkjTi-00E8zJ-24;
	Mon, 25 Sep 2023 11:10:14 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkjTf-00E8xs-2b
	for barebox@lists.infradead.org;
	Mon, 25 Sep 2023 11:10:13 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-530ce262ab2so6870670a12.1
        for <barebox@lists.infradead.org>; Mon, 25 Sep 2023 04:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695640207; x=1696245007; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Xqv748X+439kk/5SPhzH/jSPAButFzuLVyLrLkkrd6Y=;
        b=DwVy+TO9XfuPk8CvIxyzFy/Uvzte+TeZPVbIYLmpXeGUR6iTvczOIxBIJ+dAtTSc19
         xHr6HdYj3Vyg3dI8zvlwOO74NrlGilYW6LE6TRbuYZIAN7OB9oXGL11xsTrIrZc442IM
         EU1TvDSgmBtaOAb3q80vzYS26Xxyyzqqq2TWe5zrBZhxKV7TAwtmS6qERsELX9so/4vN
         DEb8VGMkdSbP+N+7k5q17chIcC86IBdPVGRHiL9a3biSCHoYZspn18Xarvelbjh0cy0U
         JNAV/qbH3ZpXKUlAisJd+43+toDRRPRP08MQQJz7cDat4BbrK5uKN8q80FKug93lXrYN
         xCVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695640207; x=1696245007;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xqv748X+439kk/5SPhzH/jSPAButFzuLVyLrLkkrd6Y=;
        b=JdQRn18dNp9sX2X2yH43JHDLhiQQFFqNUWulPCXX2mRcmebRpLk344G5jc0ccJuep9
         lRP2xL8oMFIYIZqDfKF74d1mvlWWyexD78wk/pcqL43hEE/FU0gqzRpx56Hzn0WlGx+X
         QFzrYncqteqPcbe74J1m3Q7l8qg1QBBIX1jzPGgkQwJpja8nCkcK4s0qPjjmdPf87Wi0
         QwOiNYn0C4usOwScXZUZlzy5vB1S40fv+xDURlAwLuZ/fG9UQWcJ5Z9xFBIi0i+4dhps
         e2zkHeSCDLARFlq2sPJFdbJKtHO2jexBkosurR+sm9vHCmAOk4hFfYjQsF3IOiCuzMXs
         3pWg==
X-Gm-Message-State: AOJu0YzvVPfCP372Z8QFC9VvqTnCqIOX2M/jejP43FCotSa4kTOAwFkt
	q9W0ZIcmI7u+6Y9IFLhMFuXBBUovKKY=
X-Google-Smtp-Source: AGHT+IHtsuyoSdHWt8zy5ATyZFMNZFILk/oMML3smNEFMhLdYtNq4yDw6lNAGXs2maNV3lfT4GLdBQ==
X-Received: by 2002:aa7:d28d:0:b0:523:bfec:490f with SMTP id w13-20020aa7d28d000000b00523bfec490fmr6159116edq.0.1695640206938;
        Mon, 25 Sep 2023 04:10:06 -0700 (PDT)
Received: from lifebook.fritz.box (p200300da6717b70030ba293c6b339dee.dip0.t-ipconnect.de. [2003:da:6717:b700:30ba:293c:6b33:9dee])
        by smtp.gmail.com with ESMTPSA id k10-20020aa7c38a000000b00530cf354746sm5409985edq.48.2023.09.25.04.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 04:10:06 -0700 (PDT)
Message-ID: <6496b2cabc1ec6cec520ea27145d3cecdc19927c.camel@gmail.com>
From: Denis Osterland-Heim <denis.osterland@gmail.com>
To: barebox@lists.infradead.org
Cc: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>, Ahmad Fatoum
	 <a.fatoum@pengutronix.de>
Date: Mon, 25 Sep 2023 13:10:05 +0200
In-Reply-To: <20230925110716.5370-1-denis.osterland@gmail.com>
References: <20230925110716.5370-1-denis.osterland@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230925_041011_844222_0E29D37A 
X-CRM114-Status: GOOD (  12.30  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] raspi: fixup additional vc created nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

RnJvbTogRGVuaXMgT1NURVJMQU5ELUhFSU0gPGRlbmlzLm9zdGVybGFuZEBkaWVobC5jb20+CgpU
aGUgdmlkZW8gY29yZSBjcmVhdGVzIHNvbWUgYWRkaXRpb25hbCBub2Rlcy4KVGhpcyBjb2RlIHRh
a2VzIG92ZXIgdGhpcyB2YWx1ZXMuClRoZSAvaGF0IG5vZGUgaXMgb25seSB0aGVyZSBpZiBhbiBy
YXNwaSBoYXQgd2l0aCBFRVBST00gaXMgZGV0ZWN0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBEZW5pcyBP
U1RFUkxBTkQtSEVJTSA8ZGVuaXMub3N0ZXJsYW5kQGRpZWhsLmNvbT4KQWNrZWQtYnk6IEFobWFk
IEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+Ci0tLQrCoGFyY2gvYXJtL2JvYXJkcy9y
YXNwYmVycnktcGkvcnBpLWNvbW1vbi5jIHwgMzkgKysrKysrKysrKysrKysrKystLS0tLS0KwqAx
IGZpbGUgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9ib2FyZHMvcmFzcGJlcnJ5LXBpL3JwaS1jb21tb24uYwpiL2FyY2gvYXJt
L2JvYXJkcy9yYXNwYmVycnktcGkvcnBpLWNvbW1vbi5jCmluZGV4IGNlYWZkNTVhNTYuLjcxM2Zh
ZDc4YzkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJkcy9yYXNwYmVycnktcGkvcnBpLWNvbW1v
bi5jCisrKyBiL2FyY2gvYXJtL2JvYXJkcy9yYXNwYmVycnktcGkvcnBpLWNvbW1vbi5jCkBAIC0y
NjQsMTkgKzI2NCwzNyBAQCBzdGF0aWMgZW51bSByZXNldF9zcmNfdHlwZQpycGlfZGVjb2RlX3Bt
X3JzdHMoc3RydWN0IGRldmljZV9ub2RlICpjaG9zZW4sCsKgCsKgc3RhdGljIGludCBycGlfdmNf
ZmR0X2ZpeHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAqcm9vdCwgdm9pZCAqZGF0YSkKwqB7Ci3CoMKg
wqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBkZXZpY2Vfbm9kZSAqdmNfY2hvc2VuID0gZGF0YTsKLcKg
wqDCoMKgwqDCoMKgc3RydWN0IGRldmljZV9ub2RlICpjaG9zZW47CivCoMKgwqDCoMKgwqDCoGNv
bnN0IHN0cnVjdCBkZXZpY2Vfbm9kZSAqdmNfbm9kZSA9IGRhdGE7CivCoMKgwqDCoMKgwqDCoHN0
cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZTsKK8KgwqDCoMKgwqDCoMKgc3RydWN0IHByb3BlcnR5ICpw
cDsKwqAKLcKgwqDCoMKgwqDCoMKgY2hvc2VuID0gb2ZfY3JlYXRlX25vZGUocm9vdCwgIi9jaG9z
ZW4iKTsKLcKgwqDCoMKgwqDCoMKgaWYgKCFjaG9zZW4pCivCoMKgwqDCoMKgwqDCoG5vZGUgPSBv
Zl9jcmVhdGVfbm9kZShyb290LCB2Y19ub2RlLT5mdWxsX25hbWUpOworwqDCoMKgwqDCoMKgwqBp
ZiAoIW5vZGUpCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FTk9NRU07
CsKgCi3CoMKgwqDCoMKgwqDCoG9mX2NvcHlfcHJvcGVydHkodmNfY2hvc2VuLCAib3ZlcmxheV9w
cmVmaXgiLCBjaG9zZW4pOwotwqDCoMKgwqDCoMKgwqBvZl9jb3B5X3Byb3BlcnR5KHZjX2Nob3Nl
biwgIm9zX3ByZWZpeCIsIGNob3Nlbik7CivCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX3Byb3BlcnR5
X29mX25vZGUodmNfbm9kZSwgcHApCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBvZl9j
b3B5X3Byb3BlcnR5KHZjX25vZGUsIHBwLT5uYW1lLCBub2RlKTsKwqAKwqDCoMKgwqDCoMKgwqDC
oHJldHVybiAwOwrCoH0KwqAKK3N0YXRpYyBzdHJ1Y3QgZGV2aWNlX25vZGUgKnJlZ2lzdGVyX3Zj
X2ZpeHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAqcm9vdCwKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNvbnN0IGNoYXIgKnBhdGgpCit7CivCoMKgwqDCoMKgwqDCoHN0cnVjdCBkZXZpY2Vf
bm9kZSAqcmV0LCAqdG1wOworCivCoMKgwqDCoMKgwqDCoHJldCA9IG9mX2ZpbmRfbm9kZV9ieV9w
YXRoX2Zyb20ocm9vdCwgcGF0aCk7CivCoMKgwqDCoMKgwqDCoGlmIChyZXQpIHsKK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRtcCA9IG9mX2R1cChyZXQpOworwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgdG1wLT5mdWxsX25hbWUgPSB4c3RyZHVwKHJldC0+ZnVsbF9uYW1lKTsK
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG9mX3JlZ2lzdGVyX2ZpeHVwKHJwaV92Y19m
ZHRfZml4dXAsIHRtcCk7CivCoMKgwqDCoMKgwqDCoH0gZWxzZSB7CivCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBwcl9pbmZvKCJubyAnJXMnIG5vZGUgZm91bmQgaW4gdmMgZmR0biIsIHBh
dGgpOworwqDCoMKgwqDCoMKgwqB9CisKK8KgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsKK30KKwrC
oHN0YXRpYyB1MzIgcnBpX2Jvb3RfbW9kZSwgcnBpX2Jvb3RfcGFydDsKwqAvKiBFeHRyYWN0IHVz
ZWZ1bCBpbmZvcm1hdGlvbiBmcm9tIHRoZSBWaWRlb0NvcmUgRkRUIHdlIGdvdC4KwqAgKiBTb21l
IHBhcmFtZXRlcnMgYXJlIGRlZmluZWQgaGVyZToKQEAgLTMwMCwxNCArMzE4LDE3IEBAIHN0YXRp
YyB2b2lkIHJwaV92Y19mZHRfcGFyc2Uoc3RydWN0IGRldmljZV9ub2RlCipyb290KQrCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZyZWUoc3RyKTsKwqDCoMKgwqDCoMKgwqDCoH0KwqAK
LcKgwqDCoMKgwqDCoMKgY2hvc2VuID0gb2ZfZmluZF9ub2RlX2J5X3BhdGhfZnJvbShyb290LCAi
L2Nob3NlbiIpOworwqDCoMKgwqDCoMKgwqByZWdpc3Rlcl92Y19maXh1cChyb290LCAiL3N5c3Rl
bSIpOworwqDCoMKgwqDCoMKgwqByZWdpc3Rlcl92Y19maXh1cChyb290LCAiL2F4aSIpOworwqDC
oMKgwqDCoMKgwqByZWdpc3Rlcl92Y19maXh1cChyb290LCAiL3Jlc2VydmVkLW1lbW9yeSIpOwor
wqDCoMKgwqDCoMKgwqByZWdpc3Rlcl92Y19maXh1cChyb290LCAiL2hhdCIpOworwqDCoMKgwqDC
oMKgwqByZWdpc3Rlcl92Y19maXh1cChyb290LCAiL2Nob3Nlbi9ib290bG9hZGVyIik7CivCoMKg
wqDCoMKgwqDCoGNob3NlbiA9IHJlZ2lzdGVyX3ZjX2ZpeHVwKHJvb3QsICIvY2hvc2VuIik7CsKg
wqDCoMKgwqDCoMKgwqBpZiAoIWNob3NlbikgewrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHByX2Vycigibm8gJy9jaG9zZW4nIG5vZGUgZm91bmQgaW4gdmMgZmR0biIpOwrCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gb3V0OwrCoMKgwqDCoMKgwqDCoMKgfQrCoAot
wqDCoMKgwqDCoMKgwqBvZl9yZWdpc3Rlcl9maXh1cChycGlfdmNfZmR0X2ZpeHVwLCBvZl9kdXAo
Y2hvc2VuKSk7Ci0KwqDCoMKgwqDCoMKgwqDCoGJvb3Rsb2FkZXIgPSBvZl9maW5kX25vZGVfYnlf
bmFtZShjaG9zZW4sICJib290bG9hZGVyIik7CsKgCsKgwqDCoMKgwqDCoMKgwqBzdHIgPSBvZl9y
ZWFkX3ZjX3N0cmluZyhjaG9zZW4sICJib290YXJncyIpOwotLSAKMi4zOS4yCgoK



