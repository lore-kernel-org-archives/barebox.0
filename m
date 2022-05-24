Delivery-date: Tue, 24 May 2022 11:23:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntQlH-007NgX-NJ
	for lore@lore.pengutronix.de; Tue, 24 May 2022 11:23:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntQlG-0002vc-C0
	for lore@pengutronix.de; Tue, 24 May 2022 11:23:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZ/oTFEt/aX6GH725vQruWdWhNyaG2nqsTKVeWd0L5c=; b=rPyI3RWQK3UQ6r
	hGqdpYZHZio8PeLn2Iac0wa/R5sMIy5cmaTh+Y1TJxN2CP/L43HxsWbPRLvJUvagEXURNcw3KofOd
	XreyY3tAvoQjMu3dOHSAm1PnW5mpMk+uLcNcBT+cMU9CuvzuGc9LceaEpK4qbitokQEBbFPTVW55N
	Z98mWdvZH0kIAJysMyk8VSP1wKkuJPxiv7twcFbtDoqo7liiFpf+zsSsWN/POyQf1rYnyf7iwdMvP
	LOcvrWrX9/K0Qm8DmpuaJQ9Xr732ndqouhcSquS70s5H0scxf04dLQnty4O37uH3k4F7z3DBbk9Z9
	StYVqxvm+fWH37kYxgEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntQk4-007OyA-Nj; Tue, 24 May 2022 09:22:16 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntQk0-007OxS-GQ
 for barebox@lists.infradead.org; Tue, 24 May 2022 09:22:13 +0000
Received: by mail-pg1-x531.google.com with SMTP id c22so15868172pgu.2
 for <barebox@lists.infradead.org>; Tue, 24 May 2022 02:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rfUxupwA8gcleelB+UGmRjrJAEWuYerjvcnsrn36aP8=;
 b=C7430aXqGpV7pLlV3sbSMYXrrlbXkOOypLnLuZfLX0V6lOC7Txl0WZuYh39SVoWblU
 PPlG5qn2att8lOyI5xBbAXn6Brtjp5e1ZgOqivnxI9QQSERPGTGc+9bLkpz6oJx98nFm
 Q0Q0Z0asDx/VXtzDf2mIfhM7VQgoJcEu1meDrJFvZiuOTGoo60ExYoVKdZXpww+F5rPb
 IVCN1K6s2LVSxrTUy9kkIu95UBlQzdeH3by0HNjqajdx1RXYXRkKe8gGj9k6mn6RIVHP
 1Tredu/8jrqNcrx/04hdqEJKE6yi0oBa1Yf5DyBT0OKs4EIO/piaCTWH8F3o4ck/UtTh
 M9YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rfUxupwA8gcleelB+UGmRjrJAEWuYerjvcnsrn36aP8=;
 b=TahW8aufXeKzpG2BwyYpbv60iv4MIIcraEMhpvwK9guMM7PBDAdAfkCqvkiwmiFxbM
 RoiKZp6MyA76CKKMCqhXGiI+zOJ1XQHWtAq+C6vQ7a+T78EY9erhjKZ5ud1THNbi6RJM
 X4ovi0pGB1fs24Q+bcX2ZlYmp/JQXD9lWptvEthvs9yVafZgwR6iay5MKHYGtqxMA4/+
 Ma91+yLtqdNZPvmqel2RRbmUMbgMaQEhy/pqQZGYlp/EOxqBp/21HvFpk8BStUTIvD6/
 n2VNcGhAzl7FGw9mb3d77FHp2lryHGkIrj0cUOQa6o0HJVCBkaxrl2im0XNnjvp1unuf
 6Jww==
X-Gm-Message-State: AOAM530DMYE3r0RPieGgRN8fAxVjvvAWvvxZj5qk7TGFkPErLCU8bPCJ
 kDAGtpVrsg03NIHZj6cmjZAOBFMl83zunEv9AKKAeTxPEN0=
X-Google-Smtp-Source: ABdhPJxva9bSG1VBpoTmjB/f/y2THE0Q/+QpmgpSLxiBz+fBq+7K2RawN8zdmKb5lcO9HnnBkLyeXvADWhCMKnEGLso=
X-Received: by 2002:a65:6bd6:0:b0:39d:4f85:9ecf with SMTP id
 e22-20020a656bd6000000b0039d4f859ecfmr23870150pgw.336.1653384130748; Tue, 24
 May 2022 02:22:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220524073048.18467-1-eagle.alexander923@gmail.com>
 <20220524090314.sdb3tt6jhtjpmm6o@pengutronix.de>
In-Reply-To: <20220524090314.sdb3tt6jhtjpmm6o@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 24 May 2022 12:21:58 +0300
Message-ID: <CAP1tNvScB7n4u0HuEkqtM8_KVXy_izWuT2vkRk-bfqfVAjHA4A@mail.gmail.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_022212_602397_0F6AB4E1 
X-CRM114-Status: GOOD (  10.60  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: DTS: myir-x335x: Add GPIO aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0LLRgiwgMjQg0LzQsNGPIDIwMjIg0LMuINCyIDEyOjAzLCBNYXJjbyBGZWxzY2ggPG0uZmVsc2No
QHBlbmd1dHJvbml4LmRlPjoKPiBPbiAyMi0wNS0yNCwgQWxleGFuZGVyIFNoaXlhbiB3cm90ZToK
PiA+IEZvciB0aGUgY29ycmVjdCB3b3JrIG9mIEdQSU8gZHJpdmVyLCB3ZSBuZWVkIHRvIGRlZmlu
ZSBhbGlhc2VzLgo+ID4gTGV0J3MgYWRkIHRoZW0gdG8gdGhlIGRldmljZXRyZWUuCi4uLgo+ID4g
KyAgICAgYWxpYXNlcyB7Cj4gPiArICAgICAgICAgICAgIGdwaW8wID0gJmdwaW8wOwo+ID4gKyAg
ICAgICAgICAgICBncGlvMSA9ICZncGlvMTsKPiA+ICsgICAgICAgICAgICAgZ3BpbzIgPSAmZ3Bp
bzI7Cj4gPiArICAgICAgICAgICAgIGdwaW8zID0gJmdwaW8zOwo+ID4gKyAgICAgfTsKPgo+IE91
dCBvZiBjdXJpb3VzaXR5LCBhcmUgdGhvc2UgYWxpYXNlcyBub3QgZGVmaW5lZCBpbiB0aGUgInVw
c3RyZWFtIiBsaW51eAo+IGRldmljZS10cmVlPyBJZiBub3QsIHdvdWxkbid0IGl0IGJlIGJldHRl
ciB0byBkZWZpbmVkIGl0IHRoZXJlPwoKSGVsbG8uCgpUaGUgbGludXggZ3Bpby1vbWFwIGRyaXZl
ciBkb2VzIG5vdCB1c2UgYWxpYXNlcywgaXQgd291bGQgYmUgaGFyZCBmb3IKbWUgdG8gZXhwbGFp
biB0aGUgbmVlZCB0byBtYWtlIHN1Y2ggY2hhbmdlcyB0byB0aGUgbGludXggZHRzIHRyZWUgOikK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3gg
bWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

