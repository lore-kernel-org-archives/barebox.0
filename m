Delivery-date: Wed, 20 Oct 2021 11:50:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1md8FD-0007PT-OD
	for lore@lore.pengutronix.de; Wed, 20 Oct 2021 11:50:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1md8FC-0005Mi-Q0
	for lore@pengutronix.de; Wed, 20 Oct 2021 11:50:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ZXvREDDIlxQZJCjfoGpAgYjKA782YreRYijUe5yIWI=; b=FLl0J2np6mp8mg
	fL8TzjF+Rn0Z5Q2peHCyUWVi7jNSU/oysRUF56pNvckKt2i/SOsB6x5qbcOfTcA6G+dKffFfwoEG4
	U4xIM1GKbDxyOdMeGbqCTf+umyVYRCj5tlrtQHaOtWTn3HfUEWZMz3EiaGTNYS8fjHqtF2cAJS771
	hCtE5YYnjcLy/QNvwx1Cmp/7ks4yaVmYxidHClOgUMAUMZEYhlBazrZnjcAd3CZL4s/mz8sljvr9W
	8ulCxMJrHsGIxj2CMQbuP0eH2byHWKZtEx43iDEnDg3QmBb9FYJxlpSO/VqdgLCe2/cxSHEprgTcm
	90AeE0ARuE8hXsYZkXwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md8DU-0043N5-4B; Wed, 20 Oct 2021 09:49:00 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146]
 helo=fx601.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md8DL-0043IJ-Om
 for barebox@lists.infradead.org; Wed, 20 Oct 2021 09:48:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id 8BD733ACE5C
 for <barebox@lists.infradead.org>; Wed, 20 Oct 2021 11:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1634723326;
 bh=fQOSEcaHjBvGkHW1aNpd/p9jXuCcMzFhfQutphZ+xGM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=CwsJL9UNm+btl+woIevw0dts/IkBb5ExfdeTvkFDCMsKOgg4YGbMTgUyLEfds9jSO
 fPiqm52IJAB2+k6ICcalhjkysMKNAHGovGmG2EuT+dSLl79PMJUClfcuCrK6hRu4aU
 FNQqADaAqwdJTtHzFaKcfugNZyKNi1TPSo58yTh0=
Received: from fx601 (localhost [127.0.0.1]) by fx601.security-mail.net
 (Postfix) with ESMTP id 159AD3ACE54; Wed, 20 Oct 2021 11:48:46 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx601.security-mail.net (Postfix) with ESMTPS id C872B3ACE02; Wed, 20 Oct
 2021 11:48:44 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 9D38A27E033E; Wed, 20 Oct 2021
 11:48:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 8664827E034C; Wed, 20 Oct 2021 11:48:44 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 XbgxgSMC9XFg; Wed, 20 Oct 2021 11:48:44 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 7609627E033E; Wed, 20 Oct 2021
 11:48:44 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <9918.616fe5fc.c5f86.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 8664827E034C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1634723324;
 bh=E1vwACr4DCqTzp/rZ+xHRkBG2AZmo3QBi4ln1D2AaJo=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=NtIdrx/7dQ/61JUJQQcZQAutxU22ffGJT7fglbTYtKcSpMjm+lLdV93eluXWyh4Tg
 yu9AUrro/dmMnAiOIoSZrSEwTH3scN3FMAeU72UVlnSIkbiJOTSmEP+ZZLMhatyOfI
 pDOj7SSIysqClRvxRxrjYwBOr0/AuvitgJCL1mrM=
Date: Wed, 20 Oct 2021 11:48:43 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Daniel =?utf-8?b?QnLDoXQ=?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org, sha@pengutronix.de
Message-ID: <20211020094843.GB26849@tellis.lin.mbt.kalray.eu>
References: <20211019161654.GA26849@tellis.lin.mbt.kalray.eu>
 <20211020090738.4399-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020090738.4399-1-danek.brat@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_024852_137132_76A8C15F 
X-CRM114-Status: GOOD (  16.75  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2 v2] usb: dwc2: Make having a phy optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksCgpPbiBXZWQsIE9jdCAyMCwgMjAyMSBhdCAxMTowNzozOEFNICswMjAwLCBEYW5pZWwgQnLD
oXQgd3JvdGU6Cj4gSGkgSnVsZXMsCj4gCj4gT24gVHVlLCAxOSBPY3QgMjAyMSAxODoxNjo1NCAr
MDIwMCwgSnVsZXMgTWFzZWxiYXMgd3JvdGU6Cj4gPiBJIGFtIGludGVyZXN0ZWQgaW4gZ2V0dGlu
ZyB0aGlzIG1vZGlmaWNhdGlvbiBtZXJnZWQuIEJlc2lkZSBJIGRvbid0Cj4gPiB0aGluayB0aGUg
ZHdjMiBkcml2ZXIgbW9kaWZpY2F0aW9uIGlzIG5lZWRlZCwgYXMgcGh5X29wdGlvbmFsX2dldCBp
cwo+ID4gaW50ZW5kZWQgdG8gcmV0dXJuIE5VTEwgd2hlbiBubyBwaHkgYXJlIGF2YWlsYWJsZS4g
Rm9yIG1lIGl0IG1ha2VzCj4gPiBzZW5zZSB0aGF0IE5VTEwgY291bGQgYmUgcmV0dXJuIGJ5IHBo
eV9vcHRpb25hbF9nZXQgd2hlbiB0aGUgcGh5Cj4gPiBzdXBwb3J0IGlzIG5vdCBjb21waWxlZCBp
bi4KPiA+IAo+ID4gRG8geW91IGhhdmUgdGhlIHRpbWUgdG8gc2VuZCBhIG5ldyBwYXRjaCB3aXRo
IG9ubHkgdGhpcyBtb2RpZmljYXRpb24gPwo+IAo+IEkgYXBvbG9naXplIGZvciBub3QgcmVzcG9u
ZGluZyB0byB0aGlzIHRocmVhZCBzb29uZXIsIGhhZCBhIGxvdCBvbiBteSBwbGF0ZQpUaGF0J3Mg
b2sKCj4gbGF0ZWx5LiBJIGFncmVlIHRoYXQgc2ltcGx5IGhhdmluZyB0aGUgJ3BoeV9vcHRpb25h
bF9nZXQnIHJldHVybiBOVUxMIHdoZW4KPiB1bmltcGxlbWVudGVkIGlzIGJldHRlciB0aGFuIG1h
a2luZyBjaGFuZ2VzIGluIHRoZSBkd2MyIGRyaXZlciBpdHNlbGYgYW5kCj4gaXQgbWFrZXMgc2Vu
c2UgaW4gZ2VuZXJhbCBmb3IgaXQgdG8gYmVoYXZlIHRoaXMgd2F5cy4gQWxsIHRoZSBvdGhlciBm
dW5jdGlvbnMKPiB1c2luZyB0aGUgcGh5IGFscmVhZHkgY2hlY2sgZm9yIE5VTEwgYW55d2F5LCBz
byBpdCBpcyBwZXJmZWN0IGZpdC4KPiBJIHN1Ym1pdHRlZCBpdCBhcyBhIG5ldyBwYXRjaCBhcyB5
b3Ugc3VnZ2VzdGVkLgpuaWNlIDopCgpUaGFua3MuCgoKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=

