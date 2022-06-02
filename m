Delivery-date: Thu, 02 Jun 2022 11:11:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgs2-000OHW-51
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 11:11:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgs0-0000Gc-UI
	for lore@pengutronix.de; Thu, 02 Jun 2022 11:11:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+AV/BHIKDWl+UBbjtrlB0gSYnfRvqZ3W7PZlZdGuQE=; b=M+Pi8PZXj3/cG/
	hwz5cPhBmohlz1kWkytAMFCW3uMfIWgy5+kySBuZQHhSu3nVpqDGELiALZxBeBMciO2K7oz+M135p
	kZ2JbsysR9yKWBxH67wr2rjo5bItzHicxtZi/tyaGA1jM46sKKaatQZxY5cpNm4Fm6/94LoU7Bitu
	DZVz15UZMZBcUWhUjlu+u19+drv3+ZdlDOQke6m8zC1P2e7eA1JmbTKKcFZeaohxJaxJ+udVchcqW
	w6ymoCSdDlgWPyWAUuGpBcIDUJlf3dStzrhKKPuC4eM35RIS1Q8EVwdyMJ9flCSwsqsd+XfrhCOlz
	4nvBxr9JoEmxVbUDoKpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgqc-002NxA-PM; Thu, 02 Jun 2022 09:10:30 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgqY-002Nuq-7I
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 09:10:27 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 3-20020a17090a174300b001e426a02ac5so5633306pjm.2
        for <barebox@lists.infradead.org>; Thu, 02 Jun 2022 02:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=F8FWdezeUB3lCtCqdeB3KoQ4JAEZwzXQJKuqNX5OnZg=;
        b=i9LKUzGHzSjZL7qTU5QKdxdphuvwnQ7rlwe3EawPsA+B7bPCVAaW0hM4jQhqfj8n3k
         Lp1qGLvddUS0VF8OV1r1zUOURtsFfFVAhXjZutE3bUM8G/xM2LDUp9ZGbrH7tndSAdtN
         +IdMzLxBDui3ubEdz9oos5mK9NYfti/O/0pvVRpbEluoAx6o0p1FK6XsJuaTvfqXGP2b
         cFNgFKfz09hoL/9V2Q4selhm93Y0/uTMKWFg7Iv823RK7p12Fl+I3b1mJMAi+4iIqwzO
         GWBbIIHGgYIwiuA4/8BroTPDvd4epyw4EkLj09G7Wbhghw60AqxSrXsI57Ct5VdckY/L
         0B4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=F8FWdezeUB3lCtCqdeB3KoQ4JAEZwzXQJKuqNX5OnZg=;
        b=vilNlst0YtlsyU8uRnVPf1f5Ykz9D7blbxwStSbeXEfY+5IwPrrGHEiTGg89Ia80Nt
         fIvnM9CzcndQ6OApxevI2+yDB29QBNEhAUv1OVGFuoKoc+6F/XgYSFi2CgFWgHLidDW2
         i44DkOIKdHCOK9OwSlfuI/7dBVI7VTp5KP6yEYZlyFNY8WTpkFvDcWBnJzQmUaJV7a6P
         wbtYuiEd252A/ApbVWxegfibIlAC5LR9wFznBY/HgPDUpTCCgDEAc9Cckql++J8JMVYZ
         vArUM6WF1GurcaitLj99wbaWAppOeekiViH+AljgO1rTIR7tnxSIakobmAgsgfsR8n85
         V/jg==
X-Gm-Message-State: AOAM530kBj4HPCLMn+WS2KQL2dM0MUr2f71QPF0PBSJj3Yp6bbvWyWTz
	/Wt2wpQi/ht1ZMHn+6GshiwM1BjYE6RKNH+14f1r6//FitE=
X-Google-Smtp-Source: ABdhPJyPKBWhMhtC8qNB8Typ2SkQ/k2r4P7k/7b3yRznrFH//IarHTlqml8G6riDwSkjIoCp2EWOPrtVt5njK5+XAz8=
X-Received: by 2002:a17:90a:5985:b0:1e3:39f:ec1b with SMTP id
 l5-20020a17090a598500b001e3039fec1bmr20167872pji.88.1654161019834; Thu, 02
 Jun 2022 02:10:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220601071452.17033-1-eagle.alexander923@gmail.com>
 <53dfc2e7-7271-e872-dbf9-ffb9ed7e7802@pengutronix.de> <CAP1tNvTeo5S3k4CPm3dFw7-TxJUFaS-82Cu=R+DN1VWwQY+iCg@mail.gmail.com>
 <f4ef4f26-d4b8-85f5-e438-d51e0d9a109c@pengutronix.de>
In-Reply-To: <f4ef4f26-d4b8-85f5-e438-d51e0d9a109c@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 2 Jun 2022 12:10:08 +0300
Message-ID: <CAP1tNvS=gBA-L9pKdxX1LV1wGkVXwciAia=rgypu8UG1u27n6A@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_021026_323164_874807B2 
X-CRM114-Status: UNSURE (   6.74  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: OMAP: xload: Fix compile without CONFIG_MTD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0YfRgiwgMiDQuNGO0L0uIDIwMjIg0LMuINCyIDEyOjAxLCBBaG1hZCBGYXRvdW0gPGEuZmF0b3Vt
QHBlbmd1dHJvbml4LmRlPjoKPiBPbiAwMi4wNi4yMiAxMDo1OSwgQWxleGFuZGVyIFNoaXlhbiB3
cm90ZToKPiA+IEhlbGxvLgo+ID4KPiA+IEl0J3MganVzdCB0aGUgcmVzdWx0IG9mIHRoZSBteSBt
YXN0ZXIgYnJhbmNoIG5vdCBiZWluZyB1cGRhdGVkCj4gPiBmcm9tIHJlbW90ZSBiZWZvcmUgSSBt
YWRlIHRoZSBjaGFuZ2VzLi4uIFNvcnJ5IDopCi4uLgo+IGkuZS4gdGhpcyBwYXRjaCBjYW4gYmUg
ZHJvcHBlZCBhZ2Fpbj8KClRoZSBsb2dpYyBkb2Vzbid0IGNoYW5nZSB3aXRoIG9yIHdpdGhvdXQg
YSBwYXRjaCwgYnV0IHllcywgd2UgY2FuIGRyb3AgaXQuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cg==

