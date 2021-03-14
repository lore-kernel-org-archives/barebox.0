Delivery-date: Sun, 14 Mar 2021 13:51:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLQDr-0007td-Sp
	for lore@lore.pengutronix.de; Sun, 14 Mar 2021 13:51:55 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLQDq-0001Na-ST
	for lore@pengutronix.de; Sun, 14 Mar 2021 13:51:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IA23Jp81Jno5imIWWOnVRZDe5WW92ADuqy0Oo1pOLHY=; b=dIDLD4ekniX0V7/gC1ZiImnd9
	WtOU7/oR2BloBvxZxveXpM4Z5zfmD0u0RkAfDJwNIP3l02Rx8RQkESb9X1rbSrH+BsGyIGTIMsEIX
	p5Ht0j4ePM9/KjfYGjRlfxac53MLOvQ8ctrWrtfj1+ny+GIJaA3HA8T8oq3Lukn2tJbq6eavt96YG
	Xt5GsDRQt0kq74qji5eVc4UMHd75LK+Cykk4SiTpARFwXZ5/yidFpKn4EgL+pSlPgGjHj3HrSNz0x
	KgLs0d1DoGUadotk0hxDQIa6bVexBMXdq5pgPKQyUBAHewfEPANe4+N+9cwlewZ1p6MMBsWndzprk
	rwNniSkog==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLQD5-00EEBe-DA; Sun, 14 Mar 2021 12:51:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLQD0-00EEBN-Jm
 for barebox@lists.infradead.org; Sun, 14 Mar 2021 12:51:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rcz@pengutronix.de>)
 id 1lLQCz-0001DM-1o; Sun, 14 Mar 2021 13:51:01 +0100
Message-ID: <ca3955c12184eeea85d659a92a40e07e6a0838f1.camel@pengutronix.de>
From: Rouven Czerwinski <rcz@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Sun, 14 Mar 2021 13:51:00 +0100
In-Reply-To: <20210314122804.4128-17-a.fatoum@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
 <20210314122804.4128-17-a.fatoum@pengutronix.de>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.38.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210314_125102_709269_C770482B 
X-CRM114-Status: UNSURE (   5.72  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 16/20] RISC-V: add 64-bit support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgQWhtYWQsCgpPbiBTdW4sIDIwMjEtMDMtMTQgYXQgMTM6MjggKzAxMDAsIEFobWFkIEZhdG91
bSB3cm90ZToKPiBGcm9tOiBSb3V2ZW4gQ3plcndpbnNraSA8ci5jemVyd2luc2tpQHBlbmd1dHJv
bml4LmRlPgo+IFvigKZdCj4gwqBpZmVxICgkKENPTkZJR19BUkNIX1JWMzJJKSx5KQo+IC0Jcmlz
Y3YtY2ZsYWdzLXkgOj0gLW1hcmNoPXJ2MzJpbSAtbWFiaT1pbHAzMgo+IC0JcmlzY3YtbGRmbGFn
cy15IDo9IC1tZWxmMzJscmlzY3YKPiArCXJpc2N2LWNmbGFncy15ICs9IC1tYXJjaD1ydjMyaW0g
LW1hYmk9aWxwMzIKPiArCXJpc2N2LWxkZmxhZ3MteSArPSAtbWVsZjMybHJpc2N2Cj4gK2Vsc2UK
PiArCXJpc2N2LWNmbGFncy15ICs9IC1tYXJjaD1ydjY0aW1hZmQgIC1tYWJpPWxwNjQKClRoaXMg
c2hvdWxkIGFsc28gd29yayB3aXRoIC1tYXJjaD1ydjY0aW0sIHdlIGFyZSBub3QgdXNpbmcgYXRv
bWljcyBvcgpmbG9hdGluZyBvcHMgYW55d2hlcmUgYW5kIHNob3VsZCBub3QgcmVxdWlyZSB0aGlz
IHVudGlsIG5lZWRlZC4KCj4gKwlyaXNjdi1sZGZsYWdzLXkgKz0gLW1lbGY2NGxyaXNjdgo+IMKg
ZW5kaWYKPiAKClJlZ2FyZHMsClJvdXZlbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK

