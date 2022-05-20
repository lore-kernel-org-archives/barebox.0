Delivery-date: Fri, 20 May 2022 13:33:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns0t4-0033YY-0l
	for lore@lore.pengutronix.de; Fri, 20 May 2022 13:33:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns0t2-0001KF-SW
	for lore@pengutronix.de; Fri, 20 May 2022 13:33:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KltMZZrAhh84ztxr211iXDjr4F1YhL/fPAhyDsB8YIc=; b=l4RHafroc5mpJa
	PTaVpMKhkSiw2an4dN9zQMwRO6468tBqLjoNrISHDe6rN+mAJak0o9GOTCPp9CgRcv9h1JrvseyQ7
	XK8dak16AxgZtJbvEHCzGDUgNMOJv9UmMDadSdHPtSLsYxJXCcg2WKTqXEsCb9+QrA3a2SRTsUD2h
	crln64TQjtY+DCx8MDrBKbQqtIKUxhmh4qO2o6rbu4kN5cLc5j4IT1dBbYjw78kn4MaScTJki/I95
	UqjCVMhpL9ulhHmbADHsC7MEqGNzXVwO9O32dUtAss8L/INYuWkipn6hcg/RCm5spDO1etWu39LzG
	fr+nBvvIC9/8bi9wzR+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ns0ra-00C68V-6o; Fri, 20 May 2022 11:32:10 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ns0rM-00C62h-Iv
 for barebox@lists.infradead.org; Fri, 20 May 2022 11:31:58 +0000
Received: by mail-pg1-x530.google.com with SMTP id q76so7491395pgq.10
 for <barebox@lists.infradead.org>; Fri, 20 May 2022 04:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=o759GqC4OMtI0icyyxAMax7nG+rOLvw1GbbbNMe/vdQ=;
 b=epxVvtbsI7DTG7GbiLhOKd77tH4sGN9vpn5dXBX0fnTH3pHG780cFrLFFGn5J/LvsD
 Eipp3s3zJIXHIl4Kc8pFUVK61t2xE9pEjJRj1oAVrhaXf+9tXU7nlN9ACvb2tcE4+BIX
 oeWOWoZ7f/6/nKPpwjxdMAEQfIaRKZZdZc5t1sBn+QYt/RCQnBNTy2ROv+t4zfUPw79S
 Rw0FzN3mP2PLVFl8TWuVeKSITW6kJ8j7mWIzmZHxRTBb/VW5DIGmwx2PvzbgbXDtTxTP
 229KocoG5HGdA3mUKHoVL/teIhWw3Ne6mLsVWwvjWzSd4VD+m7IiV6undoo6iWjbZcJO
 1KNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=o759GqC4OMtI0icyyxAMax7nG+rOLvw1GbbbNMe/vdQ=;
 b=LNz+shn1+kyqUDK4vwubRbAv6CRDKGAFqRDuhdKBxXocDrbjrIwFgX6+W/p6hZFBfS
 66rSLEEZA4O+OP9yNbAlqXhjHIgN0DgTyXon3K7pzE3gMSIOmnB1glQUcceB/WW+d5s9
 P/gw9SM6uPyyYqA5R4MHHa4vgs+dO0i2NCfxD+pPxQAvdtjRsIkc1FYfIfPibv3QT3Tj
 w4IQzcnQchgok85/B1N7t23gZ4KfQV4iRwu0Z3PaVXiCris4tJT2O6zkf1HBxb2k0+QV
 f+bft8VbS5tzmLMNOLpseIVLxgEBzQ5WYZY0pu2mBU7Rd0DgEWvJ/lF4TrwJD1Z34SBW
 88jw==
X-Gm-Message-State: AOAM530rtHJQ7+d4lcOsU/5I/xv5o4r66KXVIbRbFWru6oaNIeR0JFto
 LOcF3WRLufpT2QuX17u64v0ay0VXD7NKzlcIArnnA/UE3vM=
X-Google-Smtp-Source: ABdhPJzpFzEXz3Kpaz/KJhenLxoYihbN3+c4eyjt7ZRAsPYmTFJFTEnNDlw0yyRbbkPFuOTh2Us8fhGGY+hyK9U3IYw=
X-Received: by 2002:a63:1312:0:b0:3c1:bb54:f3de with SMTP id
 i18-20020a631312000000b003c1bb54f3demr8101418pgl.306.1653046313782; Fri, 20
 May 2022 04:31:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220520082428.32385-1-eagle.alexander923@gmail.com>
 <30d02935-d1c8-edb2-2117-3ac6f1e0f7d6@pengutronix.de>
In-Reply-To: <30d02935-d1c8-edb2-2117-3ac6f1e0f7d6@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 20 May 2022 14:31:42 +0300
Message-ID: <CAP1tNvQO_6FULYt9tFeY1KQNSCuEdEBERm28N7csV89kGb+0ig@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_043156_677493_CCB169FD 
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: clps711x: Switch to devicetree usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8uCgrQv9GCLCAyMCDQvNCw0Y8gMjAyMiDQsy4g0LIgMTI6NTYsIEFobWFkIEZhdG91bSA8
YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+Ogo+Cj4gSGVsbG8sCj4KPiBPbiAyMC4wNS4yMiAxMDoy
NCwgQWxleGFuZGVyIFNoaXlhbiB3cm90ZToKPiA+IFRoaXMgaXMgYSBjb21wbGV4IHBhdGNoIHRo
YXQgc3dpdGNoZXMgdGhlIEFSTSBDTFBTNzExWCBhcmNoaXRlY3R1cmUKPiA+IHRvIHdvcmsgd2l0
aCB0aGUgZGV2aWNlIHRyZWUuIEluY2x1ZGVzIGNoYW5nZXMgdG8gYm9hcmQgaW5pdGlhbGl6YXRp
b24KPiA+IGFuZCBhbnkgYXJjaGl0ZWN0dXJlIGRyaXZlcnMgdXNlZC4KLi4uCj4gPiArc3RhdGlj
IF9faW5pdCBpbnQgY2xlcDcyMTJfZml4dXAodm9pZCkKPiA+ICt7Cj4gPiArICAgICBpZiAob2Zf
bWFjaGluZV9pc19jb21wYXRpYmxlKCJjaXJydXMsZXA3MjA5IikpCj4gPiArICAgICAgICAgICAg
IG9mX3JlZ2lzdGVyX2ZpeHVwKGNsZXA3MjEyX2R0X2ZpeHVwLCBOVUxMKTsKPiA+ICsKPiA+ICsg
ICAgIHJldHVybiAwOwo+ID4gK30KPiA+ICtwb3N0Y29yZV9pbml0Y2FsbChjbGVwNzIxMl9maXh1
cCk7Cj4KPiBZb3UgY2FuIHJlcGxhY2UgdGhpcyB3aXRoIHRoZSBuZXcgYmFyZWJveF9zZXRfc2Vy
aWFsX251bWJlcigpLCBzZWU6Cj4gaHR0cHM6Ly9naXQucGVuZ3V0cm9uaXguZGUvY2dpdC9iYXJl
Ym94L2NvbW1pdC8/aD1uZXh0JmlkPWY2NzU2ZTljZTZmMjZkYzIyNTA2ZTI1YmQ1Y2YxYTRmNmEx
NzM2MzYKClRoaXMgY2hhbmdlIGlzIGN1cnJlbnRseSBpbiB0aGUgbmV4dCBicmFuY2gsIGJ1dCBP
ay4KCj4gPiArRU5UUllfRlVOQ1RJT04oc3RhcnRfZXA3MjEyX2NsZXA3MjEyLCByMCwgcjEsIHIy
KQo+ID4gIHsKPiA+ICsgICAgIHZvaWQgKmZkdDsKPiA+ICsKPiA+ICAgICAgIGFybV9jcHVfbG93
bGV2ZWxfaW5pdCgpOwo+ID4KPiA+IC0gICAgIGNscHM3MTF4X2JhcmVib3hfZW50cnkoQ0xQUzcx
MVhfQ1BVX1BMTF9NVUxULCBOVUxMKTsKPiA+ICsgICAgIC8qIFN0YWNrIGluIFNSQU0gKi8KPiA+
ICsgICAgIGFybV9zZXR1cF9zdGFjayhDUzZfQkFTRSAtIDE2KTsKPgo+IHBsZWFzZSB1c2UgRU5U
UllfRlVOQ1RJT05fV0lUSFNUQUNLIGluc3RlYWQgdG8gYmUgYSBiaXQgbW9yZQo+IGZ1dHVyZS1w
cm9vZi4gQWxzbyAtIDE2IGlzIG5vdCBuZWNlc3NhcnksIHNlZQo+IDZiM2RjNGFiZDg4NCAoIkFS
TTogQ2xlYW51cCBzdGFjayBvZmZzZXQgY2FyZ28gY3VsdCIpLgoKT2suCgo+ID4gK3N0YXRpYyB2
b2lkIGNscHM3MTF4X2J1c19wYXRjaChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUsCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHUzMiBjb21wYXJlLCB1MzIgY2hhbmdlKQo+ID4gK3sK
Pgo+IENvdWxkIHlvdSBhZGQgYSBjb21tZW50IHdoeSB0aGlzIGlzIG5lY2Vzc2FyeT8KCkJlY2F1
c2UgdGhlIGJhcmVib3ggY2Fubm90IHVzZSBhZGRyZXNzIDAgKE5PUiBNVEQgaW4gbXkgY2FzZSks
IHRoZSBidXMgZHJpdmVyCnNjYW5zIGZvciBkZXZpY2VzIHRoYXQgc3RhcnQgYXQgemVybyBhZGRy
ZXNzIGFuZCBtYXBzIHRoZW0gdG8gYQpkaWZmZXJlbnQgdW51c2VkIGFkZHJlc3MuClRvIHN0YXJ0
IHRoZSBrZXJuZWwsIGEgZml4dXAgaXMgdXNlZCB0aGF0IHJld3JpdGVzIHRoZSBhZGRyZXNzIG9m
IHRoZQpwYXRjaGVkIGRldmljZSB0byBpdHMgb3JpZ2luYWwgc3RhdGUuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApi
YXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9iYXJlYm94Cg==

