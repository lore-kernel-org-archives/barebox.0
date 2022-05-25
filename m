Delivery-date: Wed, 25 May 2022 08:29:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntkVw-008LQJ-QW
	for lore@lore.pengutronix.de; Wed, 25 May 2022 08:29:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntkVv-0007mQ-BK
	for lore@pengutronix.de; Wed, 25 May 2022 08:29:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYvZSvwxzJ81P6dC6VIb0fnQR72m89BJpcxtahw7Sy8=; b=P+ROFgEPxsGett
	yo5gVIhHwM2Qi88ChTO16pME9cc7iFvNu61CwlMAv+XjTx5PTyiHbtyVupBPhK1A2rVmqHW5mas08
	LmXIZkUgydOkc77slMfjhpI06F+d45JSIRwuKXl8usKQyhJgt6/91Dd6oC1ydIs3ZARrR23w1awd6
	VF7MiQTHRXm/wFISX1NUIXwyB8AJm1JMuvHxP39fZnr2Gb2hlX/Y9i/AnmhEoIal4+2hz90YbR1bC
	EnRQSCQVuorDPPzVG+ogphbUl4GFgZtz22GX6CqDMMPDhhmf11waWYWpgo1Bi2lEtJcESLabfl1EP
	8etTeNaGqqjbHKJZ6uOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntkUb-00A4W1-DW; Wed, 25 May 2022 06:27:37 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntkUW-00A4V7-Q8
 for barebox@lists.infradead.org; Wed, 25 May 2022 06:27:34 +0000
Received: by mail-pl1-x62e.google.com with SMTP id b5so10706255plx.10
 for <barebox@lists.infradead.org>; Tue, 24 May 2022 23:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DxldVxaXxYE6BozQw7b2ngyuzQ8Skb17J0puiPTOYVg=;
 b=XqjLnCaJCJQmwlY98ROwIoZpau9Y6xXaP/tahKCz1rw4HjA/epkV0Nnm7H80QJX7yi
 JDCudv4aJ/Nd2TQmtxGuUgdgh6b8/8DCES7B788RE/hIedb6ILG44UUzVSN2pZwKRC/K
 mGf4ZxY8WOaN6NwK0shmxvI8pJm+QFwWeQAm6GUUWKeomNDEb+b4T0cjBNoXyw9c0ehR
 HXz20T9tiiEvkeGCHEbaCfWgoIpe/a9638rD0CubfDpO0B/ZZFd5vCNCUGMXwIgOfyW1
 IKdl0CDPUp40fQaO3jpdV/j6QO+PuVymHN8bK0W/rp9KFrCEDvmoKsNB5jUjMCbWhif7
 NEUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DxldVxaXxYE6BozQw7b2ngyuzQ8Skb17J0puiPTOYVg=;
 b=sKfGQDKyJe4CyRIsJ/k8UzcjlAIeIkd8upKWPwOB5AMXlq+mTi7JS7rlzI68wdSEws
 1XnPzvTYxfE+eg+Ly6wQtiLc8zVPKPnuW40drv2InOpOsJJ6wWLwoKba3iJHRZzsC3Hw
 Jwb5XhHecMKBUCqbVI3ZQ93AHLp35uhGg4hdYH2FGl1kR/gvTWNEoxjON+wEBV/zpAId
 QwqIJ+yk6eSEpjlV29E+jkAVxyX70dthrhPFhsqw23oZWY131jxFiiuY7cyq/jP1tm29
 Di14KlRDIDttpGathXr+bNgKU97RXKcJek4n8CNgjwPxvt0WJW1/kXdnyYbeewsPGfiT
 sC6g==
X-Gm-Message-State: AOAM533ICAUlZU7EA+VXndsbtFVw1cJI4A/enRUe/2VBaCF7VSGhmEuC
 3tS8EyZVOv2pzZv8W0QiRvtXvUnUZum7vNDFq6LihiaabEM=
X-Google-Smtp-Source: ABdhPJx5icuRJlnW0mDwRGx/kAlRr7uwY9qoZNxqfGP7zhkrBkD3if006Gijb/S7PCQ0zHIBLVWv0bcZncxEaUDC/Q4=
X-Received: by 2002:a17:90b:1613:b0:1df:23d0:cf75 with SMTP id
 la19-20020a17090b161300b001df23d0cf75mr8577706pjb.88.1653460050592; Tue, 24
 May 2022 23:27:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220524073048.18467-1-eagle.alexander923@gmail.com>
 <76dbfceb-1651-2659-7209-2c37c3f8f7d5@pengutronix.de>
In-Reply-To: <76dbfceb-1651-2659-7209-2c37c3f8f7d5@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 25 May 2022 09:27:19 +0300
Message-ID: <CAP1tNvQVWjG1=jsJRh-eCpHzUPOct1BysgXQy-MxDvYkHFY6wg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_232732_881857_BE922699 
X-CRM114-Status: GOOD (  11.14  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: DTS: myir-x335x: Add GPIO aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8uCgrQstGCLCAyNCDQvNCw0Y8gMjAyMiDQsy4g0LIgMTU6MjgsIEFobWFkIEZhdG91bSA8
YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+Ogo+IE9uIDI0LjA1LjIyIDA5OjMwLCBBbGV4YW5kZXIg
U2hpeWFuIHdyb3RlOgo+ID4gRm9yIHRoZSBjb3JyZWN0IHdvcmsgb2YgR1BJTyBkcml2ZXIsIHdl
IG5lZWQgdG8gZGVmaW5lIGFsaWFzZXMuCj4gPiBMZXQncyBhZGQgdGhlbSB0byB0aGUgZGV2aWNl
dHJlZS4KLi4uCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL2FtMzM1eC1teWlydGVjaC1t
eWQuZHRzIGIvYXJjaC9hcm0vZHRzL2FtMzM1eC1teWlydGVjaC1teWQuZHRzCj4gPiBpbmRleCA2
ZWM2NWU1MzNkLi4xZWEwZjJhNDQwIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm0vZHRzL2FtMzM1
eC1teWlydGVjaC1teWQuZHRzCj4gPiArKysgYi9hcmNoL2FybS9kdHMvYW0zMzV4LW15aXJ0ZWNo
LW15ZC5kdHMKPiA+IEBAIC02LDYgKzYsMTMgQEAKPiA+ICAjaW5jbHVkZSA8YXJtL2FtMzM1eC1t
eWlydGVjaC1teWQuZHRzPgo+Cj4gT3RoZXIgYm9hcmRzIGRvICNpbmNsdWRlICJhbTMzeHguZHRz
aSIsIHdoaWNoIHRha2VzIGNhcmUgb2YgdGhlc2UKPiBhbGlhc2VzLiBJdCdzIHByb2JhYmx5IGJl
dHRlciB5b3UgaW5jbHVkZSB0aGF0IHRvby4KCkluY2x1ZGluZyB0aGlzIGZpbGUgcmVzdWx0cyBp
biBhbiBlcnJvci4KCkNoYW5nZWQgdG86CiNpbmNsdWRlICJhbTMzeHguZHRzaSIKI2luY2x1ZGUg
PGFybS9hbTMzNXgtbXlpcnRlY2gtbXlkLmR0cz4KCk91dHB1dDoKRFRDICAgICBhcmNoL2FybS9k
dHMvYW0zMzV4LW15aXJ0ZWNoLW15ZC5kdGIKRXJyb3I6IC9ob21lL0FSTS9iYXJlYm94L2R0cy9z
cmMvYXJtL2FtMzM1eC1teWlydGVjaC1teWQuZHRzOjYuMS05IHN5bnRheCBlcnJvcgpGQVRBTCBF
UlJPUjogVW5hYmxlIHRvIHBhcnNlIGlucHV0IHRyZWUKCk1vc3QgbGlrZWx5IHRoaXMgaXMgdGhl
IHJlc3VsdCBvZiBkb3VibGUgaW5jbHVzaW9uIG9mIHRoZSBmaWxlIGFybS9hbTMzeHguZHRzaSwK
Zmlyc3QgdGltZSBmcm9tICJhbTMzeHguZHRzaSIgYW5kIHNlY29uZCBmcm9tIGFybS9hbTMzNXgt
bXlpcnRlY2gtbXlkLmR0cy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

