Delivery-date: Sat, 30 Oct 2021 19:58:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgscI-000176-Pi
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 19:58:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgscH-0001yV-Sp
	for lore@pengutronix.de; Sat, 30 Oct 2021 19:58:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Gp6ao7sZdXIv5HLV8WRF1dii4wCBRokBhEQvBaWVgQ=; b=W5UEgPV+qjhzFn
	GUS8tJU9ftn4JPMmW/MYcHKClPfo80AJ14YjJi0Dce6a7b+EvgmdVdGVGl9muFw0iss5NO9iRogeA
	BPuTamisVL/Tx8Q6NtEREGqfU0+AUvamO3CbVQQOBZ+l9Y3m08rQeSoMhC4l4RKusepUBUOg1Rs+k
	+lay2ArvaG40QT1Zv66gCc0+OBve9T6zUrT3zf2bXB3VQS23TG66zEapv3x6fIvNP3izJkknxve1N
	ouuvybkpP/esoX6dGy0hKNXfHK9+PcMxYC+xruktBvVj6sd2xSFmeG8T7dgjxA2w6KTnx+VKI6ZWr
	JFSxi02QtjtAhnGKObSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgsb9-00DMjE-En; Sat, 30 Oct 2021 17:56:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgsax-00DMeV-IO
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 17:56:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsao-0001fB-Bg; Sat, 30 Oct 2021 19:56:34 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsan-009Y8T-Sw; Sat, 30 Oct 2021 19:56:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 19:56:31 +0200
Message-Id: <20211030175632.2276077-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211030175632.2276077-1-a.fatoum@pengutronix.de>
References: <20211030175632.2276077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_105643_633535_23CC6751 
X-CRM114-Status: GOOD (  13.71  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] i2c: algo-bit: switch to SPDX-License-Identifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

UmVwbGFjZSB0aGUgYm9pbGVycGxhdGUgd2l0aCBhIHNob3J0IGVxdWl2YWxlbnQgaWRlbnRpZmll
ci4KClNpZ25lZC1vZmYtYnk6IEFobWFkIEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+
Ci0tLQogZHJpdmVycy9pMmMvYWxnb3MvaTJjLWFsZ28tYml0LmMgfCAyNCArKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2FsZ29zL2kyYy1hbGdvLWJpdC5jIGIvZHJp
dmVycy9pMmMvYWxnb3MvaTJjLWFsZ28tYml0LmMKaW5kZXggMjU2M2MwZDI1YTdmLi4yZDYwMTA4
NjlkNDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaTJjL2FsZ29zL2kyYy1hbGdvLWJpdC5jCisrKyBi
L2RyaXZlcnMvaTJjL2FsZ29zL2kyYy1hbGdvLWJpdC5jCkBAIC0xLDI2ICsxLDEyIEBACisvLyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlcgogLyogLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQogICogaTJjLWFsZ28tYml0LmMgaTJjIGRyaXZlciBhbGdvcml0aG1zIGZvciBiaXQtc2hp
ZnQgYWRhcHRlcnMKICAqIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAqICAgQ29weXJpZ2h0IChDKSAxOTk1
LTIwMDAgU2ltb24gRy4gVm9nbAotCi0gICAgVGhpcyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7
IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkKLSAgICBpdCB1bmRlciB0aGUg
dGVybXMgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGFzIHB1Ymxpc2hlZCBieQot
ICAgIHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb247IGVpdGhlciB2ZXJzaW9uIDIgb2YgdGhl
IExpY2Vuc2UsIG9yCi0gICAgKGF0IHlvdXIgb3B0aW9uKSBhbnkgbGF0ZXIgdmVyc2lvbi4KLQot
ICAgIFRoaXMgcHJvZ3JhbSBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0IGl0IHdpbGwg
YmUgdXNlZnVsLAotICAgIGJ1dCBXSVRIT1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBldmVuIHRo
ZSBpbXBsaWVkIHdhcnJhbnR5IG9mCi0gICAgTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1MgRk9S
IEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZQotICAgIEdOVSBHZW5lcmFsIFB1YmxpYyBM
aWNlbnNlIGZvciBtb3JlIGRldGFpbHMuCi0KLSAgICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQg
YSBjb3B5IG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZQotICAgIGFsb25nIHdpdGgg
dGhpcyBwcm9ncmFtOyBpZiBub3QsIHdyaXRlIHRvIHRoZSBGcmVlIFNvZnR3YXJlCi0gICAgRm91
bmRhdGlvbiwgSW5jLiwgNTEgRnJhbmtsaW4gU3RyZWV0LCBGaWZ0aCBGbG9vciwgQm9zdG9uLAot
ICAgIE1BIDAyMTEwLTEzMDEgVVNBLgotICogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAqLwotCi0vKiBXaXRo
IHNvbWUgY2hhbmdlcyBmcm9tIEZyb2RvIExvb2lqYWFyZCA8ZnJvZG9sQGRkcy5ubD4sIEt5w7Zz
dGkgTcOkbGtraQotICAgPGttYWxra2lAY2MuaHV0LmZpPiBhbmQgSmVhbiBEZWx2YXJlIDxraGFs
aUBsaW51eC1mci5vcmc+ICovCisgKgorICogV2l0aCBzb21lIGNoYW5nZXMgZnJvbSBGcm9kbyBM
b29pamFhcmQgPGZyb2RvbEBkZHMubmw+LCBLecO2c3RpIE3DpGxra2kKKyAqIDxrbWFsa2tpQGNj
Lmh1dC5maT4gYW5kIEplYW4gRGVsdmFyZSA8a2hhbGlAbGludXgtZnIub3JnPgorICovCiAKICNp
bmNsdWRlIDxjb21tb24uaD4KICNpbmNsdWRlIDxpbml0Lmg+Ci0tIAoyLjMwLjIKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcg
bGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

