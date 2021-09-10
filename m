Delivery-date: Fri, 10 Sep 2021 20:29:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOlHR-0005UI-8H
	for lore@lore.pengutronix.de; Fri, 10 Sep 2021 20:29:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOlHQ-0005JC-DL
	for lore@pengutronix.de; Fri, 10 Sep 2021 20:29:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zpJU/6SYStnUrIi43bSEGbXhs+iLtppijize5vyqfvA=; b=avBvfl/E+FexMMcIAtcWxjVPlF
	PVenxt7tnXy270gP8TjFhW4bi4C6j865sGeLdALY4TxtQOHcEUHxDwtjjj7XnehrzdGeH1prp0btD
	mkqxbK97g1p/JEjPVnjIzT0iyx3XoWzsI+0F8PM3fxPZaYfel7mqaMkTglPZyuTvxDp1jeTTTExIM
	ILRYmh2KpZ+Am8F38j5uzXdGM4R3RAawPUSdr4I9eXVJ6MssvlBnFOuS5mSxOy9Bu4rHtnVxzoi5Q
	CedWcAsEANFvsAHX0qXX2oBiqIOUZZ/LZYni5Gd1UfD5DQHHWnvVC6Qb2GnAd4lXlVm67uFPlNwJL
	31Cq60zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOlFl-00DLCZ-Ko; Fri, 10 Sep 2021 18:27:57 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOlFe-00DLBQ-K6
 for barebox@lists.infradead.org; Fri, 10 Sep 2021 18:27:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pM0u4FJPmqF43q++L3ouGm2kb8Xl7u+aN0ye7wzZpnA=; b=HhZRD8zzqGE4L8jxZiFPe4Q6OZ
 hENRVM84rzGK0ccbePnmqZnK5Huu8kEKXVvWS1A8+6K9+jH0OUExt1ls7IYTY9OWp72yak2WMuGOu
 TvhJg+W919GFZfSpl/MsnoyUjysF9OBYUUSf4P7Nm1WWsWyH+/9nfWFQmFRKo950t+3gE+Bfjw4eo
 IVdCYldUbMdWy8vpVfqxppf/H2roa+DRh6lD+I45M4YGhRaLIImyhCGuAtAiw18ANM9H3R7EERzxz
 lf7DP/P6CfvavQuBjon4uVOJj6u4hvUTXi8p/s2xmQOo1eS+HdGzVBPx5ZxhtptFdcdvobGWoiMdy
 BKe7Z8Mg==;
Received: from [82.149.27.149] (port=34960 helo=[192.168.0.25])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <anze.lesnik@norik.com>) id 1mOlFS-0064yz-NH
 for barebox@lists.infradead.org; Fri, 10 Sep 2021 20:27:38 +0200
Message-ID: <60a490a8-b03a-f7d3-57b3-3e9eb9300225@norik.com>
Date: Fri, 10 Sep 2021 20:27:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Content-Language: en-US
To: barebox@lists.infradead.org
References: <20210830144835.27458-1-jmaselbas@kalray.eu>
 <07375b1c-7bd8-2936-3e8a-21e0dc75e7a3@norik.com>
 <b5415eea-946a-0e30-bb91-efd5f40fcebd@pengutronix.de>
From: =?UTF-8?B?QW7FvmUgTGXFoW5paw==?= <anze.lesnik@norik.com>
In-Reply-To: <b5415eea-946a-0e30-bb91-efd5f40fcebd@pengutronix.de>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 anze.lesnik@norik.com
X-Authenticated-Sender: cpanel.siel.si: anze.lesnik@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_112751_024385_E1B75359 
X-CRM114-Status: UNSURE (   9.29  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-7.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH] usb: gadget: dfu: Rework dfu command to use usbgadget
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMTAuIDA5LiAyMSAxMDo0NCwgQWhtYWQgRmF0b3VtIHdyb3RlOgoKPiBIaSwKPgo+IE9uIDA4
LjA5LjIxIDE0OjQ1LCBBbsW+ZSBMZcWhbmlrIHdyb3RlOgo+PiBXZSBoYXZlIHRlc3RlZCB0aGlz
IHBhdGNoIG9uIGEgUEhZVEVDIHBoeUNPUkUtaS5NWDYgVUxMIFNPTSBydW5uaW5nIGJhcmVib3gg
MjAyMS4wNCAodXNpbmcgdGhlIGlteC11c2IgZHJpdmVyKSBhbmQgaXQgc2VlbXMgdG8gcmVzb2x2
ZSB0aGUgaXNzdWUuIERGVSB0cmFuc2ZlciBub3cgd29ya3MgYXMgaW50ZW5kZWQuCj4gR3JlYXQu
IFNvIGl0J3Mgb2sgZm9yIFNhc2NoYSB0byBhZGQKPgo+IFRlc3RlZC1ieTogQW7FvmUgTGXFoW5p
ayA8YW56ZS5sZXNuaWtAbm9yaWsuY29tPgo+Cj4gdG8gdGhlIGNvbW1pdCBsb2c/CgpZZXMuIFdl
IGhhdmUgYWxzbyB0ZXN0ZWQgdGhlIFYyIG9mIHRoaXMgcGF0Y2gsIHN1Ym1pdHRlZCBlYXJsaWVy
IHRvZGF5LCAKYW5kIGl0IGZ1bmN0aW9ucyBjb3JyZWN0bHkuCgo+PiBJZiBvbmUgcmVjZWl2ZXMg
dGltZW91dHMgb24gdGhlIGhvc3QgY29tcHV0ZXIsIHRyeSBzZXR0aW5nIHVzYmNvcmUuYXV0b3N1
c3BlbmQ9LTEuCj4gRGlkIHlvdSBuZWVkIHRoaXMga2VybmVsIHBhcmFtZXRlciB3aXRoIHRoZSBv
bGQgZGZ1IGNvbW1hbmQgYXMgd2VsbD8KPiBJZiBvbmx5IG5ldyBkZnUgY29tbWFuZCBtYWtlcyB0
aGlzIHBhcmFtZXRlciBuZWNlc3NhcnksIHdlIG1pZ2h0IG5lZWQgdG8gbG9vawo+IHdoeSB0aGUg
dGltaW5nIGJlaGF2aW9yIGNoYW5nZWQuCgpZZXMsIGl0IHdhcyBhbHNvIHJlcXVpcmVkIGJlZm9y
ZSB0aGlzIHBhdGNoLiBXZSBoYXZlIHRlc3RlZCBpdCB3aXRoIGEgCmNvdXBsZSBvZiBob3N0cyBh
bmQgdGhpcyBpc3N1ZSB3YXMgb25seSBwcmVzZW50IG9uIG9uZSBtYWNoaW5lLgoKPiBDaGVlcnMs
Cj4gQWhtYWQKPgo+Pgo+PiBBbsW+ZQo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+PiBiYXJlYm94IG1haWxpbmcgbGlzdAo+PiBiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

