Delivery-date: Thu, 02 Jun 2022 11:00:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwghP-000NMc-6u
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 11:00:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwghN-0006Db-JM
	for lore@pengutronix.de; Thu, 02 Jun 2022 11:00:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDYhQlagktTpT0VXRj7PEbm17i+2xLJO818YkD+iAcs=; b=Yq3/lV3+jLUyRc
	TsaUBAQIFyPt7hnNp3t2jtiSLDtZBPtqVKjtTb6uMxreDcUIGg5+ttyWEqjUCYoTXiHNfN+HS98zd
	BhMun0XnFPHz+zoT1p8y2adQmCBU8OqQCz8sIAa7NbaOvMoHxsMkSy0nog6H7NNmq8A1oadN+8411
	oWloumFWwV6oDI7DMtEfhLM8M2K3RJKc5Mui6TYFN1vvVeue91wcy4o2xUBz2Tufx3IOIq27uXArW
	Neo0AQlfizKAbmZGKD2J2/M4G2DdQa1uvLLmsscQn5c29OoKHyuGbz7eZYLghU7smltiQ9qNdoBGg
	5VK1NgdMfyqYLDOS3Mgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgfr-002Jbw-Pn; Thu, 02 Jun 2022 08:59:23 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgfm-002Jb4-PC
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 08:59:20 +0000
Received: by mail-pf1-x432.google.com with SMTP id u2so4227989pfc.2
        for <barebox@lists.infradead.org>; Thu, 02 Jun 2022 01:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=KLqnuvj6d57qgKGtV/iy2oW97UYEgcxFwK4p1QrM/u8=;
        b=KCtXzP3M/wYV5HNpPChgOv7GkWwgFQ0NPMZd4SCiduLv7w3Mho2gkh732uqvhK4MlU
         qd/TAMhu1F8x2jakROGTV5enRasBguzg7h0sYt8oiH/v048ttU6r9aN40fOl1BOx8c8U
         VKLqKSwBgpwf8B1jSgeloAjQLXQFjYEPJ460W+nrVqK+CVKJ9jljlW9HWWVwEkv1IfOL
         Obi4L2glKc6e8aJd98y4mvsBgQS26B1I9jFW8zwWVINtc+nBr0Z0nQ7Dccfw44XGa/EJ
         BZMh/0jxFeL6HHV4HCMZGnzc/SB3hpDD/NMJU4DRlN+u4gOnRARpzJx2wkqewoUeTrmJ
         zRlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=KLqnuvj6d57qgKGtV/iy2oW97UYEgcxFwK4p1QrM/u8=;
        b=xnPE6KyQE3LI/Rnthv5s+lCWfIgHv+mDo49LBcJMowV2lfdhkAvXK9VXyTjH1DyIPS
         NVhxqVoWKByB5TF8+YdhN8k8LH6hoVnJtUEWiGKi1S+HPmq7MGVo/S0cpDkkeBHGlspY
         yIyksL1mTxsFsXYVNGXDKvqJWi9IeP2EvxDrfYMYjrpVBmuANVnS9FkUUeoDbvc+VIZl
         STAiWCVg964rAJ+yL39n/fiACCtHk4UduUpiXO6otOGCTBpwzYzE5IF8lmFrN4T4K5TM
         eERDWDwGPTB/eUEoQh4pqdmOSBVaWp1flvUzUlbJty9OaFhqsrUe6N65RokaZFoDXwhP
         1Ogg==
X-Gm-Message-State: AOAM530pSfIkpdXuP6cvb8qlAIuiXHwPPpoeTVeeujtgIJ4AFSvEQL35
	caPxVndKcxrRHs6kShyz7h080FqRA3C+294Sgq6uDfr/yng=
X-Google-Smtp-Source: ABdhPJzx29A9tWQQaJ33NvsYjXA2f/cbY/nCdQf4eqntst4FOQfJu4TMgyNDtzlYJGjtV90G21bzrBa38DpoXSlyRvA=
X-Received: by 2002:a65:6bd6:0:b0:39d:4f85:9ecf with SMTP id
 e22-20020a656bd6000000b0039d4f859ecfmr3434980pgw.336.1654160356829; Thu, 02
 Jun 2022 01:59:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220601071452.17033-1-eagle.alexander923@gmail.com> <53dfc2e7-7271-e872-dbf9-ffb9ed7e7802@pengutronix.de>
In-Reply-To: <53dfc2e7-7271-e872-dbf9-ffb9ed7e7802@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 2 Jun 2022 11:59:05 +0300
Message-ID: <CAP1tNvTeo5S3k4CPm3dFw7-TxJUFaS-82Cu=R+DN1VWwQY+iCg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_015918_871466_9932D845 
X-CRM114-Status: UNSURE (   9.62  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: OMAP: xload: Fix compile without CONFIG_MTD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8uCgpJdCdzIGp1c3QgdGhlIHJlc3VsdCBvZiB0aGUgbXkgbWFzdGVyIGJyYW5jaCBub3Qg
YmVpbmcgdXBkYXRlZApmcm9tIHJlbW90ZSBiZWZvcmUgSSBtYWRlIHRoZSBjaGFuZ2VzLi4uIFNv
cnJ5IDopCgrRh9GCLCAyINC40Y7QvS4gMjAyMiDQsy4g0LIgMTE6MDcsIEFobWFkIEZhdG91bSA8
YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+Ogo+IE9uIDAxLjA2LjIyIDA5OjE0LCBBbGV4YW5kZXIg
U2hpeWFuIHdyb3RlOgo+ID4gYXJtLWxpbnV4LWxkOiBhcmNoL2FybS9tYWNoLW9tYXAveGxvYWQu
bzogaW4gZnVuY3Rpb24gcmVhZF9tdGRfYmFyZWJveCc6Cj4gPiAvaG9tZS9BUk0vYmFyZWJveC9h
cmNoL2FybS9tYWNoLW9tYXAveGxvYWQuYzo3NTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBtdGRf
cGViX3JlYWRfZmlsZScKPgo+IEFtIEkgbWlzc2luZyBzb21ldGhpbmcgb3IgZG9lcyB0aGlzIHBh
dGNoIGp1c3QgY2hhbmdlCj4KPiAgIGlmICgwKSB7Cj4gICAgIHJldHVybiBOVUxMOwo+ICAgfQo+
Cj4gICAvKiBzb21ldGhpbmcgKi87Cj4gICByZXR1cm4gdG87Cj4KPiBpbnRvCj4KPiAgIGlmICgw
KSB7Cj4gICAgIC8qIHNvbWV0aGluZyAqLwo+ICAgICByZXR1cm4gdG87Cj4gICB9Cj4gICByZXR1
cm4gTlVMTDsKPgo+Cj4gVGhpcyBzaG91bGRuJ3QgcmVhbGx5IG1ha2UgYSBkaWZmZXJlbmNlLiBI
b3cgb2xkIGlzIHlvdXIgR0NDPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

