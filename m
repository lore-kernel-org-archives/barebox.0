Delivery-date: Wed, 15 Sep 2021 22:33:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQbap-0001rI-Gz
	for lore@lore.pengutronix.de; Wed, 15 Sep 2021 22:33:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQbao-0006yg-KX
	for lore@pengutronix.de; Wed, 15 Sep 2021 22:33:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JT0HzFPItDiKn84NgXTEs5zp9S0MS9I8QNGApyaMu9I=; b=4nu
	Sv+TD+vrDjnSBgKezcpxpJVhWvVFtuSn1wVscbi6J5nKesGgw4jBpTdL/JhOKDiWXRHVcXBnNS750
	sq6+pqnh4AeDBRDIWbs4k+BYaAROszGp+j1SAd/jWEuHLQwimRjoa5B4qB2X9+xoCVSh0cGpwipMZ
	CWfj3wjOVph7A35XojcquLu+1etuDiiceFpGGnK4jukVaWqo12lgqsskBD5gDaBzbJWKQP79JegpX
	rxOpC5qtxKyLL/EGw30YkvRJP64pfbrOPhetcEAaGOr1+DZ03aKuQuE8Ih+5Rb4E9YegOTYIpEIcu
	5bxjfsB0ZTTbya0/G+g5WhEK6xcryKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQbZ4-009tU1-7j; Wed, 15 Sep 2021 20:31:30 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQbYy-009tRO-EG
 for barebox@lists.infradead.org; Wed, 15 Sep 2021 20:31:25 +0000
Received: by mail-lf1-x132.google.com with SMTP id g1so9222987lfj.12
 for <barebox@lists.infradead.org>; Wed, 15 Sep 2021 13:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cartesi-io.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=zF6/PdxpK3Q61X51qq+35S8ZTsN/StVn3/2azR/aoq4=;
 b=0m4/yszUpwK4Y8BLhi4aZF8Ry0n2HgkE9gMFbFY1GbA7VYnzDcH3OyD+njmiTxrFLk
 1ZV035yH6/JpqQaHS5JPDIQVqYL//1Ok7jAvWAPjZtZ0XsPcXMCD85KP+vJ2enSMoQ0h
 GgjHTD7C7Nfyd5klTBAqG5nnP0Qt45OXpiqlqOyyKwQ+D6hLh1DVC+fJCk0WYFO5e4WB
 IJxXO32sbqw+bH899j6Ls/UiYFmmCD37wutZXGyO///e140/KmorROGYU/FGBPHPfSLm
 wHv9G3AlKGWLdpjUeR6yFtvlYEdTN2Xs+dY4JIqvLGP3KAdfdmSet2nelcqi2nT+jJdJ
 RafA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=zF6/PdxpK3Q61X51qq+35S8ZTsN/StVn3/2azR/aoq4=;
 b=sE6l9crQcDQ1IqHaNfTBie32m493q0ZhqQNKUC2wtJc/tQ4IJL6QcJPnsHEpRv9syI
 8GeJ2MSKO/FEkwulaan09mB0Y35+R6y6zjgt31opdZy1aPYgneCuAmSji+COLqcXfTYE
 gu+2qWItcnCsLBeVJCJnSXMJYHeEgU197U+3JOWRj84wLn6Jdl1Ie3lzxNaQy7LFQ4YY
 bpyiUjNuvvdT5Rq0/cGozxIG6spcIaRVi5ytp1OBF/9s9hpxhk28ICcYH1Cgj9CbYKel
 NsOg4grG6MXurmhamkkMf89wIlWiCTblYWnz7rihfrg1Mk4MKWA4P8NhvFKzDtwD/E4T
 FCUQ==
X-Gm-Message-State: AOAM53329D0H+pN1BQ/UBlLtWGmUZ7RAmIA6SjpUKsoQfP00c0zEckHF
 7vLeq+Goe9Qct+wIeFRwag5cnfq4PWQu4Ny1bercI9rvIO601A==
X-Google-Smtp-Source: ABdhPJxYI2/sez/K6YI5f1DBnLa3wfsV9Sp11R46kkjqRKaqFurP0a3LmlYXzVdokI7SmvPZ4dNAyMthIvGhIkJrlTI=
X-Received: by 2002:a19:6510:: with SMTP id z16mr1279544lfb.566.1631737879808; 
 Wed, 15 Sep 2021 13:31:19 -0700 (PDT)
MIME-Version: 1.0
From: Marcelo Politzer <marcelo.politzer@cartesi.io>
Date: Wed, 15 Sep 2021 17:30:46 -0300
Message-ID: <CA+cd6D476jyxKGWZUqLbFizW_TvGCpfqvS6-vC8T3sX=nzS5kg@mail.gmail.com>
To: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_133124_512380_7D9AC415 
X-CRM114-Status: UNSURE (   7.23  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: New RISCV board (cartesi-machine)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksIEknbSBuZXcgdG8gYmFyZWJveAoKSSdtIGN1cnJlbnRseSBwb3J0aW5nIGJhcmVib3ggdG8g
YSByaXNjdiBib2FyZCAoY2FydGVzaS1tYWNoaW5lKS4KCkkgZ290IGl0IG1vc3RseSB3b3JraW5n
OgotIG5ldyBzZXJpYWw6IHNlcmlhbF9zYmkuYyBhbmQKLSBleHQ0IGZpbGVzeXN0ZW0gd2l0aCBt
dGRyYW0KCjEpIFdoYXQgSSBhbSBzdGlsbCB0cnlpbmcgdG8gZmlndXJlIG91dCBpcyBob3cgdG8g
Y3VzdG9taXplIGBlbnZgIGNvcnJlY3RseS4KSSBnb3QgaXQgdG8gYnVpbGQgYW5kIGFwcGVhciBi
YXNlZCBvbiB0aGUgZG9jcyBbMV0sIFsyXSwKaG93ZXZlciB0aGUgb25seSB3YXkgSSBmb3VuZCBh
cm91bmQgWzNdIHdhcyB0byByZXBsYWNlIGBiaW4vaW5pdGAgd2l0aAp0aGlzWzRdIGxheW91dC4K
SXMgdGhlcmUgYSByZWNvbW1lbmRlZCB3YXkgdG8gZ28gYWJvdXQgdGhpcz8KCjIpIEkgYWxzbyB3
b3VsZCBsaWtlIGNsYXJpZmljYXRpb24gb24gdGhlIHVwc3RyZWFtaW5nIHByb2Nlc3MsIGlzIGl0
ClBSIGJhc2VkLCBwYXRjaGVzIG9uIHRoaXMgbGlzdD8KCmJlc3QsCk1hcmNlbG8KCgpbMV0gTWFr
ZWZpbGU6CmBgYApiYmVudi0kKENPTkZJR19CT0FSRF9DQVJURVNJKSArPSBkZWZhdWx0ZW52LWNh
cnRlc2kKYGBgCgpbMl0gYXJjaC9yaXNjdi9ib2FyZHMvY2FydGVzaToKYGBgCmRlZmF1bHRlbnYt
Y2FydGVzaQrilJzilIDilIAgYm9vdArilIIgICDilJTilIDilIAgY2FydGVzaQrilJzilIDilIAg
aW5pdArilIIgICDilJzilIDilIAgYXV0b21vdW50CuKUgiAgIOKUlOKUgOKUgCBwczEK4pSU4pSA
4pSAIG52CiAgICDilJzilIDilIAgYWxsb3dfY29sb3IKICAgIOKUnOKUgOKUgCBhdXRvYm9vdF90
aW1lb3V0CiAgICDilJTilIDilIAgdXNlcgpgYGAKClszXQpgYGAKSGl0IG0gZm9yIG1lbnUgb3Ig
YW55IHRvIHN0b3AgYXV0b2Jvb3Q6ICAgIDAKQm9vdGluZyBlbnRyeSAnbmV0JwpgYGAKCls0XQpg
YGAKZGVmYXVsdGVudi1jYXJ0ZXNpCuKUnOKUgOKUgCBiaW4K4pSCICAg4pSU4pSA4pSAIGluaXQK
4pSU4pSA4pSAIGJvb3QKICAgIOKUlOKUgOKUgCBjYXJ0ZXNpCmBgYAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=

