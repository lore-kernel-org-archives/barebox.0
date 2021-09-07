Delivery-date: Tue, 07 Sep 2021 09:31:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNVZf-0007Cc-MK
	for lore@lore.pengutronix.de; Tue, 07 Sep 2021 09:31:21 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNVZe-0001k9-PQ
	for lore@pengutronix.de; Tue, 07 Sep 2021 09:31:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k561wqx9zrM4sLki+63XOprLbijzNicUdvUTp63TjJA=; b=DZ3xL2uQiQtxr4
	yvwE3Recxg+u8imLTPX+soK7nOIA19dm9dsY90pz4av2w5kRICNBfD1YKdoOmEXypfAj7EwJm7MaP
	0kDlX7OjWgHDfuXbolqhcGNHyske5YFIm60X6rctT0t9dzTJzhA7POJPPFeU0P4PZrdJhb67VIYVo
	z6O3CW9019hAh4z0+/lN9lOaQRssHvTXUEo3EE6qjbbVZ83Oot+JdD/cTnAVnLe/u+ezZ94OawreG
	ANxJOHsovsRzfwdKPMUyAt3P9oiXIS5yAxW9O1LePPKy/0c0vxndEgpWGuE+0ta+vg6RdASSFgBNn
	XlEgpgaFCULaAbiYSj0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNVXs-002jPs-QO; Tue, 07 Sep 2021 07:29:28 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNVXm-002jOC-N7
 for barebox@lists.infradead.org; Tue, 07 Sep 2021 07:29:24 +0000
Received: by mail-ej1-x62a.google.com with SMTP id i21so17870738ejd.2
 for <barebox@lists.infradead.org>; Tue, 07 Sep 2021 00:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=81J11Jsh9ALPj81zXc8ltFWDTl/LXQX46GHv3hUPT84=;
 b=eY6IO9zgiAxzE5E0w5Vzh+v7yESejeHkh3P5oJ8j6+AHDoC+ENeGa1XjNeVCgkQ2Ra
 dBf4NUapuCT36ZqLFVl6CUmJcsgoqbJaypu8BbZZlj26ziqPJod95lSwIuEnHPG0RFd1
 Loh/nBjDLdpSy8L3evHFPXrJNkJmMMsCcd3BrZmHypk0y6SDTEyzvVep5zRifSaQqhQS
 Bc0sDSQ4p2Xc4+TifcnDGcGXjGB+AHsL3qFmnCRFHrp7kKz1pIrTg5IzDGO/rtjfSBOy
 scFG7R/LNImkoSMySjkDpdW6ZBeC2OLxJiguP8rHmYJEZzSXqAAJIZlfyopzcCd4/fJX
 /xQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=81J11Jsh9ALPj81zXc8ltFWDTl/LXQX46GHv3hUPT84=;
 b=J13eX/jD7Rp5R46ECTzeXeZ4PdHWIB1twDhriy1ruBNgSceTrYh6Z/BToWwa+lkKIv
 XkeRhrK+Oxcm32QonbWnwVNHSE4d6u5bkZCt+RzF+1Ehmk3Ydj030Ow/Oz7BW5/ikZVq
 qVQNKikY8Gd4hSER189vnK0ahQVyLxjDNUPBna/vYInHz32HhYzeT4jmP6Loh379wTT9
 5OBjzxi6SjEVdrTM4CQMnrUj4lbmc7nXKUZKy2AP5sb2n+ufgK9+pFBq5Z4AnXrJZtTp
 EQQ4Q01bjqd1Ao8t6knjvfCalFqsijMwVVBbsbn4Tb082+1z6JwBedVRsXMpslIdDrav
 4mOA==
X-Gm-Message-State: AOAM530smn8JdQcM1QkXRFf8jmoVEOETTOvHbamqCclaORV0fuA0JTUH
 51vw1n68Hv6+Mv+D/i2p/WZHEZTNje8=
X-Google-Smtp-Source: ABdhPJxtuas6ZDskUuD3bAh2vFE+fRpb65z6WISHbTCIOA0I9LuVSCAn6x9CR67JeK0eK8YFymqEIA==
X-Received: by 2002:a17:906:1350:: with SMTP id
 x16mr17547598ejb.391.1630999757893; 
 Tue, 07 Sep 2021 00:29:17 -0700 (PDT)
Received: from DESKTOP-KJS3OJ9.localdomain (ip-78-45-54-3.net.upcbroadband.cz.
 [78.45.54.3])
 by smtp.gmail.com with ESMTPSA id n18sm4994564ejg.36.2021.09.07.00.29.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Sep 2021 00:29:17 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Tue,  7 Sep 2021 09:29:15 +0200
Message-Id: <20210907072915.18451-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_002922_796385_0FE3B62C 
X-CRM114-Status: GOOD (  14.08  )
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
X-Spam-Status: No, score=-0.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH] video: Fix broken bcm2835 fb driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

VGhlIGJjbTI4MzUgZnJhbWVidWZmZXIgZHJpdmVyIHdhcyBicm9rZW4sIGJlY2F1c2UgdGhlIGFk
ZHJlc3Mgb2YgdmlkZW8KYnVmZmVyIGFsbG9jYXRlZCBmb3IgdXMgYnkgdGhlIEdQVSBhbmQgcmV0
dXJuZWQgdGhyb3VnaCBtYWlsYm94IHdhcwp1c2VkIHdpdGhvdXQgY29udmVydGluZyBpdCBiYWNr
IHRvIEFSTSBhZGRyZXNzIHNwYWNlLiBUaGF0IHVuY29udmVydGVkCmFkZHJlc3Mgd2FzIGFsc28g
aW4gdGhlIHJhbmdlIG9mIHBlcmlwaGVyYWwgYWRkcmVzc2VzLCB3aGljaCBjYXVzZWQKb3RoZXIg
aXNzdWVzIGxhdGVyIG9uIGR1ZSB0byBpdCBiZWluZyBmaWxsZWQgd2l0aCBnYXJiYWdlIGRhdGEu
ClRoZSBvZmZzZXQgYnkgd2hpY2ggdG8gY29udmVydCB0aGUgYWRkcmVzcyBiYWNrIGNhbiB2YXJ5
IGJ5IGRldmljZSwKc28gdGhlIHZhbHVlIGlzIHJlYWQgZnJvbSBkZXZpY2V0cmVlICdkbWEtcmFu
Z2VzJyBmb3Igc29tZXdoYXQgcG9ydGFibGUKb3BlcmF0aW9uLgpUaGlzIGZpeCB3YXMgdGVzdGVk
IG9uIFJhc3BiZXJyeSBQSSBCKyBhbmQgUmFzcGJlcnJ5IFBJIDNCKy4KClNpZ25lZC1vZmYtYnk6
IERhbmllbCBCcsOhdCA8ZGFuZWsuYnJhdEBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy92aWRlby9i
Y20yODM1LmMgfCAyMSArKysrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOSBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8v
YmNtMjgzNS5jIGIvZHJpdmVycy92aWRlby9iY20yODM1LmMKaW5kZXggZDgwOGJjNWM5Li4yZWJl
OTEyZDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vYmNtMjgzNS5jCisrKyBiL2RyaXZlcnMv
dmlkZW8vYmNtMjgzNS5jCkBAIC0xNCw2ICsxNCw3IEBACiAjaW5jbHVkZSA8bWFsbG9jLmg+CiAj
aW5jbHVkZSA8eGZ1bmNzLmg+CiAKKyNpbmNsdWRlIDxvZl9hZGRyZXNzLmg+CiAjaW5jbHVkZSA8
bWFjaC9tYm94Lmg+CiAKIHN0cnVjdCBiY20yODM1ZmJfaW5mbyB7CkBAIC01OCw5ICs1OSwyNCBA
QCBzdGF0aWMgaW50IGJjbTI4MzVmYl9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIAlCQ00y
ODM1X01CT1hfU1RBQ0tfQUxJR04oc3RydWN0IG1zZ19mYl9xdWVyeSwgbXNnX3F1ZXJ5KTsKIAlC
Q00yODM1X01CT1hfU1RBQ0tfQUxJR04oc3RydWN0IG1zZ19mYl9zZXR1cCwgbXNnX3NldHVwKTsK
IAlzdHJ1Y3QgYmNtMjgzNWZiX2luZm8gKmluZm87CisJc3RydWN0IGRldmljZV9ub2RlICpzb2M7
CiAJdTMyIHcsIGg7CisJdTY0IGRtYV9hZGRyLCBjcHVfYWRkciwgX3JlZ2lvbl9zaXplOworCXBo
eXNfYWRkcl90IGJ1ZmZlcl9hZGRyOwogCWludCByZXQ7CiAKKwlzb2MgPSBvZl9maW5kX25vZGVf
YnlfcGF0aCgiL3NvYyIpOworCWlmICghc29jKSB7CisJCWRldl9lcnIoZGV2LCAiY291bGQgbm90
IGZpbmQgcmVxdWlyZWQgb2Ygbm9kZSAvc29jXG4iKTsKKwkJcmV0dXJuIC1FTk9ERVY7CisJfQor
CisJcmV0ID0gb2ZfZG1hX2dldF9yYW5nZShzb2MsICZkbWFfYWRkciwgJmNwdV9hZGRyLCAmX3Jl
Z2lvbl9zaXplKTsKKwlpZiAocmV0KSB7CisJCWRldl9lcnIoZGV2LCAib2Ygbm9kZSAvc29jIGhh
cyBubyBkbWEtcmFuZ2VzXG4iKTsKKwkJcmV0dXJuIHJldDsKKwl9CisKIAlCQ00yODM1X01CT1hf
SU5JVF9IRFIobXNnX3F1ZXJ5KTsKIAlCQ00yODM1X01CT1hfSU5JVF9UQUdfTk9fUkVRKCZtc2df
cXVlcnktPnBoeXNpY2FsX3dfaCwKIAkJCQkJR0VUX1BIWVNJQ0FMX1dfSCk7CkBAIC05OSwxMCAr
MTE1LDExIEBAIHN0YXRpYyBpbnQgYmNtMjgzNWZiX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2
KQogCQlyZXR1cm4gcmV0OwogCX0KIAorCWJ1ZmZlcl9hZGRyID0gKG1zZ19zZXR1cC0+YWxsb2Nh
dGVfYnVmZmVyLmJvZHkucmVzcC5mYl9hZGRyZXNzICYgfmRtYV9hZGRyKSArIGNwdV9hZGRyOwor
CiAJaW5mbyA9IHh6YWxsb2Moc2l6ZW9mICppbmZvKTsKIAlpbmZvLT5mYmkuZmJvcHMgPSAmYmNt
MjgzNWZiX29wczsKLQlpbmZvLT5mYmkuc2NyZWVuX2Jhc2UgPQotCSAgICh2b2lkICopbXNnX3Nl
dHVwLT5hbGxvY2F0ZV9idWZmZXIuYm9keS5yZXNwLmZiX2FkZHJlc3M7CisJaW5mby0+ZmJpLnNj
cmVlbl9iYXNlID0gcGh5c190b192aXJ0KGJ1ZmZlcl9hZGRyKTsKIAlpbmZvLT5mYmkueHJlcyA9
IG1zZ19zZXR1cC0+cGh5c2ljYWxfd19oLmJvZHkucmVzcC53aWR0aDsKIAlpbmZvLT5mYmkueXJl
cyA9IG1zZ19zZXR1cC0+cGh5c2ljYWxfd19oLmJvZHkucmVzcC5oZWlnaHQ7CiAJaW5mby0+ZmJp
LmJpdHNfcGVyX3BpeGVsID0gMTY7Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cg==

