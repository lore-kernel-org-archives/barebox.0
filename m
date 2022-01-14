Delivery-date: Fri, 14 Jan 2022 17:56:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Psf-002DQf-2T
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 17:56:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Psd-0005Dx-J9
	for lore@pengutronix.de; Fri, 14 Jan 2022 17:56:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEmjpPXzsuS7hebjuwKmQ/4BTIgmelvOt/xh5jtppWU=; b=C+NFYQPBRWvsA5
	1EA6YeIG1ZYtn90jsLE/66CDhjp1RlxDjHCjwe/+2C3B/y7nbQzOQ/ODkk39JnHc3vlLLYQhHrgcJ
	p3e/YZUILFsl9aLXUZVJr8tWCXpkmwtElF1dRsDddqkQIUxhKIgOPGbJwJboVu20dp0GQcfiOotqI
	SgGDtuZzq4B8Nm4i6jbimRRiI7zBkAXqY8Sj8D4M8xdJwI54UxE3tywGSchPQw51f1r8situy5WwD
	IC9LeOISn8iir0Q7LKdmrZ2QXY8J+HhbBgCuuNmltBW6cwbbKAki4q6D12mssXyXDE1MmDjH7ElmS
	tLkbqLXyuljuMjCwFhUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8PrP-009s33-5W; Fri, 14 Jan 2022 16:55:31 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148]
 helo=fx408.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Pr2-009rrs-E3
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 16:55:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id 8E7151B7B0E1
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 17:54:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642179298;
 bh=ee6sQsivf317n//wXpxXqrO7cq/Ryy/xovCe1D6auHQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=mb+QaY0rNZupUEAG7Dm3XHZCBdItQfW4C3YbJ8R0uRhZ9UKL7ZrssQqUvD1rRcfo2
 M0303A2M1kwCTFs3VCalmp7rRlyISpdpsElU+CumRTet+iykKXv83HXhBOGVLn8uSJ
 yfXHdIs7xviHdF8cyuaBb+zazwVRPONsbrnX7/jY=
Received: from fx408 (localhost [127.0.0.1]) by fx408.security-mail.net
 (Postfix) with ESMTP id 465CE1B7B095; Fri, 14 Jan 2022 17:54:58 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx408.security-mail.net (Postfix) with ESMTPS id EEA701B7B092; Fri, 14 Jan
 2022 17:54:57 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id D0FCF27E034A; Fri, 14 Jan 2022
 17:54:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id B679627E03DD; Fri, 14 Jan 2022 17:54:57 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 GtZyQjUS0olZ; Fri, 14 Jan 2022 17:54:57 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 9A13527E034A; Fri, 14 Jan 2022
 17:54:57 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <12416.61e1aae1.edd61.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu B679627E03DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642179297;
 bh=b1cfxKPoEWdODz6yfgd420hC7JEqnYADlXzozK+OQp8=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=IOr5I8vf1fcU74A5QmXaHzNvdqjdz6tEeQPUUa7ZQZ3eCFmgZf+jO5t2prQUrkhsf
 StkY6fiQgCM8KQLRXPTWEp7WOYtfAjDgYvGYm2mS7aAdrIDa644IXxdUZdfv8joh7R
 4sE4LKL/m2hma+FnQbqbNRtuUkFE9HRtsv2+TMNg=
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>, Louis Morhet
 <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>, Yann Sionneau
 <ysionneau@kalray.eu>, Clement Leger <cleger@kalray.eu>, Jules Maselbas
 <jmaselbas@kalray.eu>
Date: Fri, 14 Jan 2022 17:54:54 +0100
Message-ID: <20220114165456.10542-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220114165456.10542-1-jmaselbas@kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
 <20220114165456.10542-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_085508_857753_A3552738 
X-CRM114-Status: GOOD (  17.24  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/13] soc: add kvx_socinfo driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogQ2xlbWVudCBMZWdlciA8Y2xlZ2VyQGthbHJheS5ldT4KClRoaXMgZHJpdmVyIHVzZXMg
dmFyaW91cyBzb3VyY2UgKHNmciwgbnZtZW0pIHRvIGRldGVybWluZSB0aGUgbXBwYV9pZAphbmQg
dGhlIGFyY2hpdGVjdHVyZSByZXZpc2lvbi4gVGhlc2UgYXJlIHRoZW4gZXhwb3J0ZWQgdXNpbmcg
Z2xvYmFsCnZhcmlhYmxlcyB3aGljaCBhcmU6Ci0gZ2xvYmFsLmt2eC5hcmNoX3JldjogQXJjaGl0
ZWN0dXJlIHJldmlzaW9uIChrdjMtMSBmb3IgaW5zdGFuY2UpCi0gZ2xvYmFsLmt2eC5tcHBhX2lk
OiBVbmlxdWUgY2hpcCBpZCwgY29tcG9zZWQgb2YgbG90IGFuZCB3YWZlciBpZAoKU2lnbmVkLW9m
Zi1ieTogQ2xlbWVudCBMZWdlciA8Y2xlZ2VyQGthbHJheS5ldT4KQ28tZGV2ZWxvcGVkLWJ5OiBK
dWxlcyBNYXNlbGJhcyA8am1hc2VsYmFzQGthbHJheS5ldT4KU2lnbmVkLW9mZi1ieTogSnVsZXMg
TWFzZWxiYXMgPGptYXNlbGJhc0BrYWxyYXkuZXU+Ci0tLQogZHJpdmVycy9zb2MvS2NvbmZpZyAg
ICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9zb2MvTWFrZWZpbGUgICAgICAgICAgfCAgIDEgKwog
ZHJpdmVycy9zb2Mva3Z4L0tjb25maWcgICAgICAgfCAgMTAgKysrCiBkcml2ZXJzL3NvYy9rdngv
TWFrZWZpbGUgICAgICB8ICAgMSArCiBkcml2ZXJzL3NvYy9rdngva3Z4X3NvY2luZm8uYyB8IDE0
MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiA1IGZpbGVzIGNoYW5nZWQsIDE1
NCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zb2Mva3Z4L0tjb25m
aWcKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3NvYy9rdngvTWFrZWZpbGUKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3NvYy9rdngva3Z4X3NvY2luZm8uYwoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc29jL0tjb25maWcgYi9kcml2ZXJzL3NvYy9LY29uZmlnCmluZGV4IGQ3OGYxM2YzZjgu
LjU0YjY5Y2M0MmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc29jL0tjb25maWcKKysrIGIvZHJpdmVy
cy9zb2MvS2NvbmZpZwpAQCAtMSw1ICsxLDYgQEAKIG1lbnUgIlNvQyBkcml2ZXJzIgogCiBzb3Vy
Y2UgImRyaXZlcnMvc29jL2lteC9LY29uZmlnIgorc291cmNlICJkcml2ZXJzL3NvYy9rdngvS2Nv
bmZpZyIKIAogZW5kbWVudQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvTWFrZWZpbGUgYi9kcml2
ZXJzL3NvYy9NYWtlZmlsZQppbmRleCBjMzQ5OWMwYzdmLi4zYjc1YmU4YWU0IDEwMDY0NAotLS0g
YS9kcml2ZXJzL3NvYy9NYWtlZmlsZQorKysgYi9kcml2ZXJzL3NvYy9NYWtlZmlsZQpAQCAtMywz
ICszLDQgQEAKIG9iai15CSs9IGlteC8KIG9iai0kKENPTkZJR19DUFVfU0lGSVZFKQkrPSBzaWZp
dmUvCiBvYmotJChDT05GSUdfU09DX1NUQVJGSVZFKQkrPSBzdGFyZml2ZS8KK29iai0kKENPTkZJ
R19LVlgpCSs9IGt2eC8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL2t2eC9LY29uZmlnIGIvZHJp
dmVycy9zb2Mva3Z4L0tjb25maWcKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAw
MC4uMThkY2I4YmExNAotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvc29jL2t2eC9LY29uZmln
CkBAIC0wLDAgKzEsMTAgQEAKK21lbnUgIktWWCBTb0MgZHJpdmVycyIKKworY29uZmlnIEtWWF9T
T0NJTkZPCisgICAgICAgIGJvb2wgIktWWCBTb0MgSW5mbyBkcml2ZXIiCisJZGVwZW5kcyBvbiBL
VlgKKwlzZWxlY3QgTlZNRU0KKwlzZWxlY3QgS1ZYX09UUF9OVgorCWRlZmF1bHQgeQorCitlbmRt
ZW51CmRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9rdngvTWFrZWZpbGUgYi9kcml2ZXJzL3NvYy9r
dngvTWFrZWZpbGUKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMC4uY2FjZmVm
MjFhMQotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvc29jL2t2eC9NYWtlZmlsZQpAQCAtMCww
ICsxIEBACitvYmotJChDT05GSUdfS1ZYX1NPQ0lORk8pICs9IGt2eF9zb2NpbmZvLm8KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc29jL2t2eC9rdnhfc29jaW5mby5jIGIvZHJpdmVycy9zb2Mva3Z4L2t2
eF9zb2NpbmZvLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMC4uMTAwZmFh
ZTc2NgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvc29jL2t2eC9rdnhfc29jaW5mby5jCkBA
IC0wLDAgKzEsMTQxIEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1s
YXRlcgorLyoKKyAqIENvcHlyaWdodCAoQykgMjAyMCBLYWxyYXkgSW5jLiwgQ2zDqW1lbnQgTMOp
Z2VyCisgKi8KKworI2RlZmluZSBwcl9mbXQoZm10KSAia3Z4X3NvY2luZm86ICIgZm10CisKKyNp
bmNsdWRlIDxpbml0Lmg+CisjaW5jbHVkZSA8ZHJpdmVyLmg+CisjaW5jbHVkZSA8Z2xvYmFsdmFy
Lmg+CisjaW5jbHVkZSA8bWFnaWN2YXIuaD4KKyNpbmNsdWRlIDxjb21tYW5kLmg+CisjaW5jbHVk
ZSA8bGliZmlsZS5oPgorI2luY2x1ZGUgPGdldG9wdC5oPgorI2luY2x1ZGUgPGNvbW1vbi5oPgor
I2luY2x1ZGUgPGZzLmg+CisKKyNpbmNsdWRlIDxhc20vc2ZyLmg+CisKKyNpbmNsdWRlIDxsaW51
eC9rZXJuZWwuaD4KKyNpbmNsdWRlIDxsaW51eC9udm1lbS1jb25zdW1lci5oPgorCisjZGVmaW5l
IExPVF9JRF9TVFJfTEVOCTgKKworI2RlZmluZSBFV1NfTE9UX0lEX01BU0sJCTB4MWZmZmZmZmZm
ZmZVTEwKKyNkZWZpbmUgRVdTX1dBRkVSX0lEX1NISUZUCTQyCisjZGVmaW5lIEVXU19XQUZFUl9J
RF9NQVNLCTB4MWZVTEwKKworI2RlZmluZSBGVF9DT01fQVBfU0hJRlQJCTE2CisjZGVmaW5lIEZU
X0NPTV9BUF9NQVNLCQkweDNmCisjZGVmaW5lIEZUX0RFVklDRV9JRF9TSElGVAkyMgorI2RlZmlu
ZSBGVF9ERVZJQ0VfSURfTUFTSwkweDFmZgorCitzdGF0aWMgY2hhciAqa3Z4X21wcGFfaWQ7Citz
dGF0aWMgY2hhciAqa3Z4X2FyY2hfcmV2OworCitCQVJFQk9YX01BR0lDVkFSKGt2eC5hcmNoX3Jl
diwgIktWWCBhcmNoaXRlY3R1cmUgcmV2aXNpb24iKTsKK0JBUkVCT1hfTUFHSUNWQVIoa3Z4Lm1w
cGFfaWQsICJLVlggTVBQQSBjaGlwIGlkIik7CisKK3N0YXRpYyB2b2lkIGt2eF9zb2NfaW5mb19y
ZWFkX3JldmlzaW9uKHZvaWQpCit7CisJdTY0IHBjciA9IGt2eF9zZnJfZ2V0KFBDUik7CisJdTgg
c3YgPSBrdnhfc2ZyX2ZpZWxkX3ZhbChwY3IsIFBDUiwgU1YpOworCXU4IGNhciA9IGt2eF9zZnJf
ZmllbGRfdmFsKHBjciwgUENSLCBDQVIpOworCWNvbnN0IGNoYXIgKmNhcl9zdHIgPSAiIiwgKnZl
cl9zdHIgPSAiIjsKKworCXN3aXRjaCAoY2FyKSB7CisJY2FzZSAwOgorCQljYXJfc3RyID0gImt2
MyI7CisJCWJyZWFrOworCX0KKworCXN3aXRjaCAoc3YpIHsKKwljYXNlIDA6CisJCXZlcl9zdHIg
PSAiMSI7CisJCWJyZWFrOworCWNhc2UgMToKKwkJdmVyX3N0ciA9ICIyIjsKKwkJYnJlYWs7CisJ
fQorCisJa3Z4X2FyY2hfcmV2ID0gYmFzcHJpbnRmKCIlcy0lcyIsIGNhcl9zdHIsIHZlcl9zdHIp
OworCisJZ2xvYmFsdmFyX2FkZF9zaW1wbGVfc3RyaW5nKCJrdnguYXJjaF9yZXYiLCAma3Z4X2Fy
Y2hfcmV2KTsKK30KKworc3RhdGljIGludCBiYXNlMzhfZGVjb2RlKGNoYXIgKnMsIHU2NCB2YWws
IGludCBuYl9jaGFyKQoreworCWludCBpOworCWNvbnN0IGNoYXIgKmFscGhhYmV0ID0gIjAxMjM0
NTY3ODlBQkNERUZHSElKS0xNTk9QUVJTVFVWV1hZWl8/IjsKKwljb25zdCBpbnQgYmFzZSA9IHN0
cmxlbihhbHBoYWJldCk7CisKKwlpZiAocyA9PSBOVUxMKQorCQlyZXR1cm4gLTE7CisKKwlmb3Ig
KGkgPSAwOyBpIDwgbmJfY2hhcjsgaSsrKSB7CisJCXNbaV0gPSBhbHBoYWJldFt2YWwgJSBiYXNl
XTsKKwkJdmFsIC89IGJhc2U7CisJfQorCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQga3Z4
X3JlYWRfc2VyaWFsKHN0cnVjdCBkZXZpY2Vfbm9kZSAqc29jaW5mbykKK3sKKwljaGFyIGxvdF9p
ZFtMT1RfSURfU1RSX0xFTiArIDFdID0gIiI7CisJY2hhciBjb21fYXA7CisJdTY0ICpjZWxsX3Zh
bDY0OworCXU2NCBld3NfdmFsOworCXUzMiAqY2VsbF92YWwzMjsKKwl1MzIgZnRfdmFsOworCXU4
IHdhZmVyX2lkOworCXUxNiBkZXZpY2VfaWQ7CisKKwljZWxsX3ZhbDY0ID0gKHU2NCAqKSBudm1l
bV9jZWxsX2dldF9hbmRfcmVhZChzb2NpbmZvLCAiZXdzX2Z1c2UiLCA4KTsKKwlpZiAoSVNfRVJS
KGNlbGxfdmFsNjQpKSB7CisJCXByX2RlYnVnKCJGYWlsIHRvIHJlYWQgZXdzX2Z1c2VcbiIpOwor
CQlyZXR1cm4gUFRSX0VSUihjZWxsX3ZhbDY0KTsKKwl9CisKKwlld3NfdmFsID0gKmNlbGxfdmFs
NjQ7CisJZXdzX3ZhbCA9IChld3NfdmFsID4+IDMyKSB8IChld3NfdmFsIDw8IDMyKTsKKwl3YWZl
cl9pZCA9IChld3NfdmFsID4+IEVXU19XQUZFUl9JRF9TSElGVCkgJiBFV1NfV0FGRVJfSURfTUFT
SzsKKwliYXNlMzhfZGVjb2RlKGxvdF9pZCwgZXdzX3ZhbCAmIEVXU19MT1RfSURfTUFTSywgTE9U
X0lEX1NUUl9MRU4pOworCisJY2VsbF92YWwzMiA9ICh1MzIgKikgbnZtZW1fY2VsbF9nZXRfYW5k
X3JlYWQoc29jaW5mbywgImZ0X2Z1c2UiLCA0KTsKKwlpZiAoSVNfRVJSKGNlbGxfdmFsMzIpKSB7
CisJCXByX2RlYnVnKCJGYWlsIHRvIHJlYWQgZnRfZnVzZVxuIik7CisJCXJldHVybiBQVFJfRVJS
KGNlbGxfdmFsMzIpOworCX0KKworCWZ0X3ZhbCA9ICpjZWxsX3ZhbDMyOworCWRldmljZV9pZCA9
IChmdF92YWwgPj4gRlRfREVWSUNFX0lEX1NISUZUKSAmIEZUX0RFVklDRV9JRF9NQVNLOworCWJh
c2UzOF9kZWNvZGUoJmNvbV9hcCwgKGZ0X3ZhbCA+PiBGVF9DT01fQVBfU0hJRlQpICYgRlRfQ09N
X0FQX01BU0ssIDEpOworCisJa3Z4X21wcGFfaWQgPSBiYXNwcmludGYoIiVzQS0lZCVjLSUwM2Qi
LCBsb3RfaWQsIHdhZmVyX2lkLCBjb21fYXAsCisJCQkgICAgICAgZGV2aWNlX2lkKTsKKworCWds
b2JhbHZhcl9hZGRfc2ltcGxlX3N0cmluZygia3Z4Lm1wcGFfaWQiLCAma3Z4X21wcGFfaWQpOwor
CisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQga3Z4X3NvY2luZm9fcHJvYmUoc3RydWN0IGRl
dmljZV9kICpkZXYpCit7CisJa3Z4X3NvY19pbmZvX3JlYWRfcmV2aXNpb24oKTsKKworCXJldHVy
biBrdnhfcmVhZF9zZXJpYWwoZGV2LT5kZXZpY2Vfbm9kZSk7Cit9CisKK3N0YXRpYyBjb25zdCBz
dHJ1Y3Qgb2ZfZGV2aWNlX2lkIGt2eF9zb2NpbmZvX2R0X2lkc1tdID0geworCXsgLmNvbXBhdGli
bGUgPSAia2FscmF5LGt2eC1zb2NpbmZvIiB9LAorCXsgfQorfTsKKworc3RhdGljIHN0cnVjdCBk
cml2ZXJfZCBrdnhfc29jaW5mb19kcml2ZXIgPSB7CisJLm5hbWUgPSAia3Z4LXNvY2luZm8iLAor
CS5wcm9iZSA9IGt2eF9zb2NpbmZvX3Byb2JlLAorCS5vZl9jb21wYXRpYmxlID0gRFJWX09GX0NP
TVBBVChrdnhfc29jaW5mb19kdF9pZHMpLAorfTsKK2NvcmVkZXZpY2VfcGxhdGZvcm1fZHJpdmVy
KGt2eF9zb2NpbmZvX2RyaXZlcik7Ci0tIAoyLjE3LjEKCgoKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=

