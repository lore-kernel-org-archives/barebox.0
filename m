Delivery-date: Wed, 08 Sep 2021 15:00:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNxBw-0005ui-Ns
	for lore@lore.pengutronix.de; Wed, 08 Sep 2021 15:00:40 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNxBv-0004ZI-RG
	for lore@pengutronix.de; Wed, 08 Sep 2021 15:00:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KB/4Fn0XRVOvAzx9DzIhECDrDKuONzvQR3juPp9U+Q=; b=2UXFLJdcDqYBKY
	VVbhA4bczvqoRzoVRVr/LlPo9H7aY8RRpNeKVl0y0xwS8s8XH1UV/JNBxc/dk7qlwW7z9qXLJLelV
	WLd60FZX7tCPG4of+8i4JT59jS1gzkk4IA+OV03yhRpa8wXipbF29M0jhFffU5wbtcaJZPucsaJfA
	a3qo9PUn44vkJ99Wd8cJCKGgUij9tRkaT9w2pffRQ/OQS3hy3l6+KfMk5/iwFm21IbgrfJBStVJFP
	t4M6YyDJduTUQ7jQesWYiFnEapXrnXT9/5m5PEr8MB2OmlmtivBc0Ozv75YOO4UXdfQipVW8CK02M
	cC3ynkznLH4NGa0CrNUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNxAY-006l3r-VX; Wed, 08 Sep 2021 12:59:15 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNxAU-006l3T-Si
 for barebox@lists.infradead.org; Wed, 08 Sep 2021 12:59:12 +0000
Received: by mail-wr1-x436.google.com with SMTP id q26so3151022wrc.7
 for <barebox@lists.infradead.org>; Wed, 08 Sep 2021 05:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1Fn28GKpPLreIyaPUIMetE10cUz3xS/mDJSIlBkg/ww=;
 b=MvfJjd3gtVffPHGE+9Z/TbX6xwcGiKysiFE1+Sa7E9EwT92SDqhldQqWADkNTEXpN9
 9fcM/dr/p4cIQNjT2Rtt/uU7mdw9n1wmEMubwX/9eqa2kl+VLddKytZavPMlPJZ/MxxF
 UnySPSBB3YBb9lB4kpxWrf7V+18m/zNfWEiRb+IjNMSiy/xsqmhn07xY6Igorcd3t/ss
 JJX9JsaDHyQbMFrmVu3rhayK2w2RkU92ye/ULw1LH5Edb9cTxK5JvAIsVeIALhsmBMxD
 iYOSeFHaFkArjRMvqoM0v0UCu0JoMqJ/uJADAonhRuzlleQYJMVzrhkGn0OsVQt6KnJc
 M0mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1Fn28GKpPLreIyaPUIMetE10cUz3xS/mDJSIlBkg/ww=;
 b=WAiaQeiWLI3WB0VHT1xTBw00D4sRbnn6J+MW1hf+2PMkb9m06FBDvG8weEFIY131He
 VgTugT+xJgwZZFrDHiLnSRlc+SFB3jNtfPKSq3pOHVwDUtrXSGBxxgvSS1OM6HZF5dSa
 ihyRP/K7vyCkDsdgwVtTod0Gnno1OH69flJFODdIvpA40L8kMgk1MmRvyTrxgo3D2KL6
 /D3nelW9cQe4TIDjY9xSb8g5vSXuo+S2zszMhgopa4YuL2FPNuegipIMNnBGxHlDhmD3
 YIuPm0KB3gqe4zzB+madc1tXLLzJak1FLLCtfr0edMDzxkzIoG2b89KgAtf/JjVAn9dj
 q69g==
X-Gm-Message-State: AOAM5300yK1lIS7aa/sUyTBHuYtWOlCcSd8NEg6xM9ERv3ggfd1hByhr
 IiZdTToPSh3ajGQmRUIF0ehqcEXDhcyQOQ==
X-Google-Smtp-Source: ABdhPJyATyDt4v+GRbIjGzISDYdvXDj01p5puyw2nkWplUWKhqRgfIoEup45TAPAC2jqMp0V04sCjw==
X-Received: by 2002:adf:c506:: with SMTP id q6mr4024363wrf.78.1631105949036;
 Wed, 08 Sep 2021 05:59:09 -0700 (PDT)
Received: from DESKTOP-KJS3OJ9.localdomain (ip-78-45-54-3.net.upcbroadband.cz.
 [78.45.54.3])
 by smtp.gmail.com with ESMTPSA id m29sm2203837wrb.89.2021.09.08.05.59.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 05:59:08 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Wed,  8 Sep 2021 14:58:53 +0200
Message-Id: <20210908125853.3353-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210908085019.GB8023@tellis.lin.mbt.kalray.eu>
References: <20210908085019.GB8023@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_055910_975866_00B6D4C5 
X-CRM114-Status: GOOD (  14.20  )
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
X-Spam-Status: No, score=-2.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 1/2 v2] usb: dwc2: Make having a phy optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RGVzcGl0ZSB1c2luZyAncGh5X29wdGlvbmFsX2dldCcgdG8gZ2V0IGEgJ3VzYjItcGh5JyBpbnNp
ZGUgaXRzIHByb2JlLAp0aGUgZHJpdmVyIHdvdWxkIGZhaWwgaWYgaXQgZGlkbnQgZmluZCBpdC4g
QWxzbywgdGhlcmUgaXMgbm8gS2NvbmZpZwpkZXBlbmRlbmN5IG9uICdDT05GSUdfR0VORVJJQ19Q
SFknLCBzbyB3aXRob3V0IGl0IGRlZmluZWQgdGhlIHBoeQpmdW5jdGlvbnMgYXJlIHVuaW1wbGVt
ZW50ZWQgYW5kIGFsd2F5cyByZXR1cm4gLUVOT1NZUyBtYWtpbmcgZHdjMiBwcm9iZQphbHdheXMg
ZmFpbCB0b28uClRoZSBoZWFkZXIgc3R1YiBvZiAncGh5X29wdGlvbmFsX2dldCcgd2FzIGNoYW5n
ZWQgdG8gcmV0dXJuIE5VTEwgYW5kCnRoZSBkd2MyIGRyaXZlciB3YXMgbW9kaWZpZWQgYWNjb3Jk
aW5nbHkuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgQnLDoXQgPGRhbmVrLmJyYXRAZ21haWwuY29t
PgotLS0KIGRyaXZlcnMvdXNiL2R3YzIvZHdjMi5jIHwgMjcgKysrKysrKysrKysrKysrLS0tLS0t
LS0tLS0tCiBpbmNsdWRlL2xpbnV4L3BoeS9waHkuaCB8ICAyICstCiAyIGZpbGVzIGNoYW5nZWQs
IDE2IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
dXNiL2R3YzIvZHdjMi5jIGIvZHJpdmVycy91c2IvZHdjMi9kd2MyLmMKaW5kZXggOTg5Mzk3N2I4
Li40NzJhMGI3ZDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdXNiL2R3YzIvZHdjMi5jCisrKyBiL2Ry
aXZlcnMvdXNiL2R3YzIvZHdjMi5jCkBAIC03MywxOSArNzMsMjIgQEAgc3RhdGljIGludCBkd2My
X3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogCQlnb3RvIGNsa19kaXNhYmxlOwogCiAJZHdj
Mi0+cGh5ID0gcGh5X29wdGlvbmFsX2dldChkZXYsICJ1c2IyLXBoeSIpOwotCWlmIChJU19FUlIo
ZHdjMi0+cGh5KSkgewotCQlyZXQgPSBQVFJfRVJSKGR3YzItPnBoeSk7Ci0JCWdvdG8gY2xrX2Rp
c2FibGU7CisJaWYgKGR3YzItPnBoeSkgeworCQlpZiAoSVNfRVJSKGR3YzItPnBoeSkpIHsKKwkJ
CWRldl93YXJuKGRldiwgIkNvdWxkbnQgZ2V0ICd1c2IyLXBoeSc6ICVzXG4iLAorCQkJCQlzdHJl
cnJvcihQVFJfRVJSKGR3YzItPnBoeSkpKTsKKwkJCWdvdG8gcGh5X2J5cGFzczsKKwkJfQorCisJ
CXJldCA9IHBoeV9wb3dlcl9vbihkd2MyLT5waHkpOworCQlpZiAocmV0KQorCQkJZ290byBjbGtf
ZGlzYWJsZTsKKworCQlyZXQgPSBwaHlfaW5pdChkd2MyLT5waHkpOworCQlpZiAocmV0KQorCQkJ
Z290byBwaHlfcG93ZXJfb2ZmOwogCX0KLQotCXJldCA9IHBoeV9wb3dlcl9vbihkd2MyLT5waHkp
OwotCWlmIChyZXQpCi0JCWdvdG8gY2xrX2Rpc2FibGU7Ci0KLQlyZXQgPSBwaHlfaW5pdChkd2My
LT5waHkpOwotCWlmIChyZXQpCi0JCWdvdG8gcGh5X3Bvd2VyX29mZjsKLQorcGh5X2J5cGFzczoK
IAlyZXQgPSBkd2MyX2NoZWNrX2NvcmVfdmVyc2lvbihkd2MyKTsKIAlpZiAocmV0KQogCQlnb3Rv
IGVycm9yOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9waHkvcGh5LmggYi9pbmNsdWRlL2xp
bnV4L3BoeS9waHkuaAppbmRleCA2NzljZTZlNDIuLjMyMWU1NDZmOSAxMDA2NDQKLS0tIGEvaW5j
bHVkZS9saW51eC9waHkvcGh5LmgKKysrIGIvaW5jbHVkZS9saW51eC9waHkvcGh5LmgKQEAgLTE5
NSw3ICsxOTUsNyBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBwaHkgKnBoeV9nZXQoc3RydWN0IGRl
dmljZV9kICpkZXYsIGNvbnN0IGNoYXIgKnN0cmluZykKIHN0YXRpYyBpbmxpbmUgc3RydWN0IHBo
eSAqcGh5X29wdGlvbmFsX2dldChzdHJ1Y3QgZGV2aWNlX2QgKmRldiwKIAkJCQkJICAgY29uc3Qg
Y2hhciAqc3RyaW5nKQogewotCXJldHVybiBFUlJfUFRSKC1FTk9TWVMpOworCXJldHVybiBOVUxM
OwogfQogCiBzdGF0aWMgaW5saW5lIHN0cnVjdCBwaHkgKm9mX3BoeV9nZXRfYnlfcGhhbmRsZShz
dHJ1Y3QgZGV2aWNlX2QgKmRldiwKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK

