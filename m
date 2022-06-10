Delivery-date: Fri, 10 Jun 2022 12:02:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzbSx-009sIC-Ij
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 12:02:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzbSw-0000M7-5O
	for lore@pengutronix.de; Fri, 10 Jun 2022 12:02:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FEMvsB0ax4iXfqxvYbjfreJVEUOYKW5yPXjHPTdaRrU=; b=FiXLH30yqOjmzg
	9ccL4O6MK9EEFU4gCM44CojR/TsOyWivsFdKK6aJM0eT11hZ0yg4Ccde+GnhGhq9CAv7E6KTncuA3
	i7m06GWcABobxLpusQYiGnm5xMtYj2iU3xm4iVOHqzjeRl29Cc7bhpwofykivqGlRHE41sKo8ls8n
	UwDjEvHxes2lAWOpfTCsIjJ2OkXr/wgRHsEu/mzIcHZqnUwoLhi35HSZ9HKWSXHQRiKfzaIeU6T++
	3hkZ9fgDSeZxRVL0isWDKpwN3sqtCBMH0o/WDytWSC/y4PuleoIxyw0P6yMlgmVpUf21qIK4+UvFB
	J/+18iwzA28uih+rxVww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzbRE-007Pm7-Ek; Fri, 10 Jun 2022 10:00:21 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzbKp-007MaQ-EJ
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 09:53:44 +0000
Received: by mail-pj1-x1036.google.com with SMTP id v11-20020a17090a4ecb00b001e2c5b837ccso1771957pjl.3
        for <barebox@lists.infradead.org>; Fri, 10 Jun 2022 02:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5HmypNbNwR5Now1d9OY3V0uGgh7G6+O9Po9vtTflLyU=;
        b=AVPVnVHTL5Cpfz8mf5zXMGMAIzZURqqU4yKlJk4InkOhAO0CPAQRAWc6s89ALHVFFc
         +Szam2LaA5zP3fsFxTHoaEGoDKGe2SU/tKcJMNAeeebBHgq1yLoUR+uehCxeEkXyeORq
         KbACYKhip8AXwK8GqK0nxFgt6voFljHn1qtF3kZWzAraQzpWzbawMt5u/ODDOBcva8x1
         gexNOGlzmmO3A+Fu62qSNp/oMTCNN5wU3ApChfJErU8RHdQTV934iQmMDjHrDQT+oB4s
         nPHB7io6tQD4oOoz1NZ3UQsBwohfndRfJ4xJsT2sc/+fRwNuzZC8M2X1dILTEXJ7C53H
         0/+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5HmypNbNwR5Now1d9OY3V0uGgh7G6+O9Po9vtTflLyU=;
        b=2jsnMA+aXSk0GD0+y5WkTFdW1Z3VD5nWGIaRRf9K80UEwLgII2NBQnlP+cG4ib243Q
         mwag/cXJICToUI/YBu5/SplNND/p0GhYUCQj18F73UIx5AEY0vIb7BNHcKlCicFPjh2N
         rMOCW2qrSWz2+MpgqjBHTQce9Shs3nl9c3jZ2edwnn2S6vHcSmr/i3G12nGmF4O8cmYk
         IgAfjEcKdBjGga3q34sHCW2ewTfTVcQm7M2+hkVZkIv4sjExAM0F5sspzKMpIxDR4EoD
         KOlYnIDF60aBTfPbs0DEooJ7FBmMJoT+HNWkm8vtEJiQ2IdGwjSRl6nGkaViB4M9TkSK
         pOrQ==
X-Gm-Message-State: AOAM530wJ9B4ofTBtyPl8wI6oA1WCecD/uvn3XoC3Ch2fF+rNqgI4ze9
	Wcgdiw5n40RmmOdopKoj99a+tf8VhDTvtjdVG9k8WmUmRWs=
X-Google-Smtp-Source: ABdhPJzJJtXlOw2pmrFSmUWEZeHSsVKig6A7CcWVs7GeE4mojlCrenE+IrGMQ5o9p1499W57I7ZinDF0A5jP+bn5J/g=
X-Received: by 2002:a17:902:ecc9:b0:163:e41c:bf12 with SMTP id
 a9-20020a170902ecc900b00163e41cbf12mr43644078plh.164.1654854820388; Fri, 10
 Jun 2022 02:53:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220610085633.21606-1-eagle.alexander923@gmail.com>
 <20220610085633.21606-2-eagle.alexander923@gmail.com> <20220610094029.GM1615@pengutronix.de>
In-Reply-To: <20220610094029.GM1615@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 12:53:28 +0300
Message-ID: <CAP1tNvR7myvDfz+kLx1+VG-WmBJ1KF6RKgv0Fea2R2oHQmVWjQ@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_025343_533147_40A525D3 
X-CRM114-Status: GOOD (  12.87  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC 2/2] clocksource: arm_global_timer: Convert driver to use
 clocksource context field
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0L/RgiwgMTAg0LjRjtC9LiAyMDIyINCzLiDQsiAxMjo0MCwgU2FzY2hhIEhhdWVyIDxzaGFAcGVu
Z3V0cm9uaXguZGU+Ogo+Cj4gT24gRnJpLCBKdW4gMTAsIDIwMjIgYXQgMTE6NTY6MzJBTSArMDMw
MCwgQWxleGFuZGVyIFNoaXlhbiB3cm90ZToKPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRlciBT
aGl5YW4gPGVhZ2xlLmFsZXhhbmRlcjkyM0BnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJz
L2Nsb2Nrc291cmNlL2FybV9nbG9iYWxfdGltZXIuYyB8IDI3ICsrKysrKysrKysrKysrKy0tLS0t
LS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9u
cygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsb2Nrc291cmNlL2FybV9nbG9iYWxf
dGltZXIuYyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2dsb2JhbF90aW1lci5jCj4gPiBpbmRl
eCA2ZTJmYWU5YmE0Li4zZTliOTAwNTlhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9jbG9ja3Nv
dXJjZS9hcm1fZ2xvYmFsX3RpbWVyLmMKPiA+ICsrKyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJt
X2dsb2JhbF90aW1lci5jCi4uLgo+IEFzIGxvbmcgYXMgdGhlIHN0YXRpY2FsbHkgYWxsb2NhdGVk
ICZjcyBpcyB1c2VkIGl0J3Mgbm90IHJlYWxseSB1c2VmdWwKPiB0byBzdG9yZSB0aGUgY29udGV4
dCBwb2ludGVyIGluIHRoZXJlLgoKVGhlIG1lYW5pbmcgaGVyZSBpczogV2l0aCBhIHN0YXRpYyBj
bG9ja3NvdXJjZSBzdHJ1Y3R1cmUsIHRoZSAiY3R4IiBmaWVsZCB3aWxsCmJlIGluaXRpYWxpemVk
LCBzbyBpdCB3aWxsIG5vdCBhbGxvdyBhIHNlY29uZCBpbnN0YW5jZSBvZiB0aGUgZHJpdmVyIHRv
IGJlCmxvYWRlZCAoaW4gY2FzZSBvZiBpbmNvcnJlY3QgRFRTIG9yIHNvbWV0aGluZyBzaW1pbGFy
KS4KClNvLiB0aGlzIGV4YW1wbGUgaXMganVzdCBhIHNpbmdsZSBpbnN0YW5jZSBwcm90ZWN0b3Ig
OikKSSB3aWxsIHJldmlldyB0aGUgY29kZSB0byB1bmRlcnN0YW5kIGhvdyB0byBtYWtlIGl0IGVh
c2llci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

