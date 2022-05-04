Delivery-date: Wed, 04 May 2022 15:16:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmErn-001g2v-5W
	for lore@lore.pengutronix.de; Wed, 04 May 2022 15:16:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmErl-0001Wh-Uk
	for lore@pengutronix.de; Wed, 04 May 2022 15:16:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fKxjbNJaoj7LP7bLw0p2DK8YM65D5ch+vHvuF/Zwcz8=; b=yHEkaeO5KI7kmN
	T1yfZ66mgNnjQUdWo/ekhWy1sUpJ0AFNqfEXR+7swLRBgDvI+qqzvHLtDkTsUyvzRnpnfIofmRvRF
	ibIByY8eLOEcuq6WXzD+h0jCEclpbCgL1WCHkZCWJI0zgomkMBC8e3Mc3cVmRBvn5DvcLIOD/TQce
	CJuB5ET5yGnhZe3P88Jn4DmjdGryoviyn/eatQEXPKQYC1sblOi3J/VPVj6vP4YljWryDN5XFRYGJ
	DvewXDImx/+m6+0I8ZB8H74LXFEaCI7SRbiOderH9q+tBjoLhJyf4xuNEgCDNPQljekuu6SdPJOXI
	Aq0GQG5zSLLCyJLrfwZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmEqK-00AyrJ-43; Wed, 04 May 2022 13:15:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmEpl-00AybD-Mp
 for barebox@lists.infradead.org; Wed, 04 May 2022 13:14:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpf-000107-PA; Wed, 04 May 2022 15:14:19 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpg-000JqW-DQ; Wed, 04 May 2022 15:14:19 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpd-00GEhr-Ia; Wed, 04 May 2022 15:14:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  4 May 2022 15:14:09 +0200
Message-Id: <20220504131416.3869736-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_061425_841090_B6826D93 
X-CRM114-Status: GOOD (  10.32  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/8] rsatoc: fix compiler warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Rml4ZXM6CgpzY3JpcHRzL3JzYXRvYy5jOjE4OTo1OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90
b3R5cGUgZm9yIOKAmHJzYV9nZXRfcGFyYW1z4oCZIFstV21pc3NpbmctcHJvdG90eXBlc10KClNp
Z25lZC1vZmYtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KLS0tCiBz
Y3JpcHRzL3JzYXRvYy5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9yc2F0b2MuYyBiL3Njcmlw
dHMvcnNhdG9jLmMKaW5kZXggZjJkOTFiOGUwZC4uNzIyYzVkYmExOSAxMDA2NDQKLS0tIGEvc2Ny
aXB0cy9yc2F0b2MuYworKysgYi9zY3JpcHRzL3JzYXRvYy5jCkBAIC0xODQsOCArMTg0LDggQEAg
Y2xlYW51cDoKIC8qCiAgKiByc2FfZ2V0X3BhcmFtcygpOiAtIEdldCB0aGUgaW1wb3J0YW50IHBh
cmFtZXRlcnMgb2YgYW4gUlNBIHB1YmxpYyBrZXkKICAqLwotaW50IHJzYV9nZXRfcGFyYW1zKFJT
QSAqa2V5LCB1aW50NjRfdCAqZXhwb25lbnQsIHVpbnQzMl90ICpuMF9pbnZwLAotCQkgICBCSUdO
VU0gKiptb2R1bHVzcCwgQklHTlVNICoqcl9zcXVhcmVkcCkKK3N0YXRpYyBpbnQgcnNhX2dldF9w
YXJhbXMoUlNBICprZXksIHVpbnQ2NF90ICpleHBvbmVudCwgdWludDMyX3QgKm4wX2ludnAsCisJ
CQkgIEJJR05VTSAqKm1vZHVsdXNwLCBCSUdOVU0gKipyX3NxdWFyZWRwKQogewogCUJJR05VTSAq
YmlnMSwgKmJpZzIsICpiaWczMiwgKmJpZzJfMzI7CiAJQklHTlVNICpuLCAqciwgKnJfc3F1YXJl
ZCwgKnRtcDsKQEAgLTM1OSw3ICszNTksNyBAQCBzdGF0aWMgaW50IHByaW50X2JpZ251bShCSUdO
VU0gKm51bSwgaW50IG51bV9iaXRzKQogc3RhdGljIGludCBnZW5fa2V5KGNvbnN0IGNoYXIgKmtl
eW5hbWUsIGNvbnN0IGNoYXIgKnBhdGgpCiB7CiAJQklHTlVNICptb2R1bHVzLCAqcl9zcXVhcmVk
OwotCXVpbnQ2NF90IGV4cG9uZW50OworCXVpbnQ2NF90IGV4cG9uZW50ID0gMDsKIAl1aW50MzJf
dCBuMF9pbnY7CiAJaW50IHJldDsKIAlpbnQgYml0czsKLS0gCjIuMzAuMgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0
CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

