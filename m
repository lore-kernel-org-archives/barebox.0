Delivery-date: Fri, 17 Sep 2021 11:43:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRAPO-000441-Pu
	for lore@lore.pengutronix.de; Fri, 17 Sep 2021 11:43:50 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRAPN-0003UN-V5
	for lore@pengutronix.de; Fri, 17 Sep 2021 11:43:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IV7mw1Zezu/TtuTHbtFcaBOMJxhI6//PkrerJZ/jtDE=; b=QepZ/+i+B3y6LU
	f6gDROeCv/YfwuKBrbQF3z19/M3p6aaU6Zf/IPojMJSrT6s1Rx7fB1bN0oVlIXp/BinpG/he58BIi
	y5VYkkCdBYhnAp8aajeGuWxVgRPtz5H/eMOo/C4CyL78/pI044ksHknmh3uMzL4b/QCs82F/acxa1
	WlbIb3l6k885yChSkAi+1Q2XbkF64N0GxNAbUxeg4zMBFFluX0CddHjn/NIOaLCA0cyon6vQdIztu
	ERfsX9/JhUTwV7EGRim+KdIMPoDjsV9di/BiONmLGDAaPC2OTFTR/AKuEEzheokb5kRzLig5SUh3O
	Z+zHcKMFas5nSlHmvTiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRANl-00DeaD-VH; Fri, 17 Sep 2021 09:42:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRANh-00DeYd-HO
 for barebox@lists.infradead.org; Fri, 17 Sep 2021 09:42:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mRANb-0003GH-6Y; Fri, 17 Sep 2021 11:41:59 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mRANZ-0006nf-84; Fri, 17 Sep 2021 11:41:57 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mRANZ-0005Jz-73; Fri, 17 Sep 2021 11:41:57 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 17 Sep 2021 11:41:51 +0200
Message-Id: <20210917094152.210494-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=J06cg1bjs+oC3AUSNIyFL+To0AdexTpIW1VydGfOt+o=;
 m=8KlD7OgPDSfv+XYgM8D3b/l8vi0lwnlD0KbPMlC5zRI=;
 p=Ji+mWaWXcnA839FIlOP+Ju6y3ySHJhbws8YS/fpw+dI=;
 g=898a99a17fc447476fe289fe31d3daaa5e2e9ca1
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmFEYtkACgkQwfwUeK3K7AlA4Qf/Z4Y
 lEj+tKUpGIs0J7WZ5ohy4AHr14oDKS/CM3i5G1nyQMmDWLXq4zaNTmNF9uqX5pMUwsdxyMLi195cv
 LSBnPCIyP/Wt+5rQV73jApIHdC1AWxM8620SLxoEVTazAnwE4nEIjOxjyCsMviFWtijlmNMqLiTav
 qcyEkwq3yZgDa2IEE9e+3qk/88zaWUYfiomxzL891dnEtOUgjdr1BXOKZby/FSmaN+gqnw1VOsDia
 hjAptehDmPuwUKE3bFI070jJBMz7Wy98dk85Oc9vdgSnNFI4O6sBnyGbqUjcIn0MFTBox+cRi0PQf
 PjebpvecIDlTN1GhCny8p52YYlNZcfA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_024205_617168_BE6D2E43 
X-CRM114-Status: GOOD (  11.15  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] pinctrl: bcm2835: Probe driver earlier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogQWhtYWQgRmF0b3VtIDxhaG1hZEBhM2YuYXQ+Cgpjb3JlZGV2aWNlIGlzIHRvbyBsYXRl
IGZvciB0aGUgY29uc29sZSBkcml2ZXIgYW5kIGFsbCBvdGhlciBwaW5jdHJsIGRyaXZlcnMKYXJl
IHVzaW5nICJjb3JlIiwgdG9vLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL3BpbmN0cmwvcGluY3Ry
bC1iY20yODM1LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1iY20yODM1LmMg
Yi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1iY20yODM1LmMKaW5kZXggZDYyYzczNTE4MTg5Li4z
OGM3ODhjODI5NDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLWJjbTI4MzUu
YworKysgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1iY20yODM1LmMKQEAgLTIwNSw0ICsyMDUs
NCBAQCBzdGF0aWMgc3RydWN0IGRyaXZlcl9kIGJjbTI4MzVfZ3Bpb19kcml2ZXIgPSB7CiAJLm9m
X2NvbXBhdGlibGUgPSBEUlZfT0ZfQ09NUEFUKGJjbTI4MzVfZ3Bpb19kdF9pZHMpLAogfTsKIAot
Y29yZWRldmljZV9wbGF0Zm9ybV9kcml2ZXIoYmNtMjgzNV9ncGlvX2RyaXZlcik7Citjb3JlX3Bs
YXRmb3JtX2RyaXZlcihiY20yODM1X2dwaW9fZHJpdmVyKTsKLS0gCjIuMzAuMgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBs
aXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

