Delivery-date: Mon, 17 Jan 2022 23:22:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aOF-004zL8-8j
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 23:22:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aOC-0005ag-Fl
	for lore@pengutronix.de; Mon, 17 Jan 2022 23:22:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgNm/2Ixalb1kS8VvIrSWHgni3er6YKBXWl7jtAq//U=; b=EV69k8Rz+vMeuv
	7ZXk1sA0CbySE6DXxvT9uTr8gVoXDe4DOTS6hVlXgQvBw/tJjpUGjjQ4hVzD+kRO+V2IDjRagVWv3
	Zs+NE8BtKRW2rWJNAE/WGUFyvXzmnQOgt8Rqnb1QofKoJy7pve/CmtRl4u9qzuIN7tGtt6fslY8jT
	cgSWGSTvedmYtxgpGx9m/QF4lJrzGJcDlnKcRZiaOPo0HylUMUv+Oabnkv5L+/CYAASVDPu51gcS5
	3jlqe+DnP+n3Xcr7hFge+mwQYaAmkHTWjSt9m4bNZ4GG6o0gSNlalLwPu1xfsErElfE2O8bBnFuBl
	bbsc9dvwWAEznWeWvkWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9aMq-00GTVN-K6; Mon, 17 Jan 2022 22:20:48 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146]
 helo=fx601.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9aM4-00GT7O-4X
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 22:20:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id E9F723ACE2E
 for <barebox@lists.infradead.org>; Mon, 17 Jan 2022 23:19:58 +0100 (CET)
Received: from fx601 (localhost [127.0.0.1]) by fx601.security-mail.net
 (Postfix) with ESMTP id CCB743ACE2C; Mon, 17 Jan 2022 23:19:56 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx601.security-mail.net (Postfix) with ESMTPS id 4D47F3ACDEB; Mon, 17 Jan
 2022 23:19:56 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 2E0DB27E03CB; Mon, 17 Jan 2022
 23:19:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 17E6527E0341; Mon, 17 Jan 2022 23:19:56 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 VQKWjCEB9pjJ; Mon, 17 Jan 2022 23:19:56 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id EF36A27E0401; Mon, 17 Jan 2022
 23:19:55 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <7b2e.61e5eb8c.4b6fe.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 17E6527E0341
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642457996;
 bh=4Z7nln6m7ikdCeCabv9HGupHQXz70wPMnEz8OvNGu24=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=Pm10UcybVv8fLxhSHTKnzO6aIMhdDqeOft1Mo1vFZue8k69s7Uzza1S16QctaBhTT
 hLjUoAcar1x+GQfyv2YaNWEdJ4tICdyRDwCtmHjDml//DBxg7eO42SfRm1UGJWILCb
 NpImQRkpWBmWGBPcEzjG8hrcxJwj1gZiQy2m9l/g=
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>, Louis Morhet
 <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>, Yann Sionneau
 <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jan 2022 23:19:17 +0100
Message-ID: <20220117221917.26970-12-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220117221917.26970-1-jmaselbas@kalray.eu>
References: <20220117221917.26970-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_142000_345287_1BDDD6F4 
X-CRM114-Status: GOOD (  17.32  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/11] soc: add kvx_socinfo driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogQ2xlbWVudCBMZWdlciA8Y2xlbWVudC5sZWdlckBib290bGluLmNvbT4KClRoaXMgZHJp
dmVyIHVzZXMgdmFyaW91cyBzb3VyY2UgKHNmciwgbnZtZW0pIHRvIGRldGVybWluZSB0aGUgbXBw
YV9pZAphbmQgdGhlIGFyY2hpdGVjdHVyZSByZXZpc2lvbi4gVGhlc2UgYXJlIHRoZW4gZXhwb3J0
ZWQgdXNpbmcgZ2xvYmFsCnZhcmlhYmxlcyB3aGljaCBhcmU6Ci0gZ2xvYmFsLmt2eC5hcmNoX3Jl
djogQXJjaGl0ZWN0dXJlIHJldmlzaW9uIChrdjMtMSBmb3IgaW5zdGFuY2UpCi0gZ2xvYmFsLmt2
eC5tcHBhX2lkOiBVbmlxdWUgY2hpcCBpZCwgY29tcG9zZWQgb2YgbG90IGFuZCB3YWZlciBpZAoK
U2lnbmVkLW9mZi1ieTogQ2xlbWVudCBMZWdlciA8Y2xlbWVudC5sZWdlckBib290bGluLmNvbT4K
Q28tZGV2ZWxvcGVkLWJ5OiBKdWxlcyBNYXNlbGJhcyA8am1hc2VsYmFzQGthbHJheS5ldT4KU2ln
bmVkLW9mZi1ieTogSnVsZXMgTWFzZWxiYXMgPGptYXNlbGJhc0BrYWxyYXkuZXU+Ci0tLQogZHJp
dmVycy9zb2MvS2NvbmZpZyAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9zb2MvTWFrZWZpbGUg
ICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9zb2Mva3Z4L0tjb25maWcgICAgICAgfCAgMTAgKysr
CiBkcml2ZXJzL3NvYy9rdngvTWFrZWZpbGUgICAgICB8ICAgMSArCiBkcml2ZXJzL3NvYy9rdngv
a3Z4X3NvY2luZm8uYyB8IDE0MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiA1
IGZpbGVzIGNoYW5nZWQsIDE1NCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9zb2Mva3Z4L0tjb25maWcKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3NvYy9rdngv
TWFrZWZpbGUKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3NvYy9rdngva3Z4X3NvY2luZm8u
YwoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL0tjb25maWcgYi9kcml2ZXJzL3NvYy9LY29uZmln
CmluZGV4IGQ3OGYxM2YzZjguLjU0YjY5Y2M0MmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc29jL0tj
b25maWcKKysrIGIvZHJpdmVycy9zb2MvS2NvbmZpZwpAQCAtMSw1ICsxLDYgQEAKIG1lbnUgIlNv
QyBkcml2ZXJzIgogCiBzb3VyY2UgImRyaXZlcnMvc29jL2lteC9LY29uZmlnIgorc291cmNlICJk
cml2ZXJzL3NvYy9rdngvS2NvbmZpZyIKIAogZW5kbWVudQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
b2MvTWFrZWZpbGUgYi9kcml2ZXJzL3NvYy9NYWtlZmlsZQppbmRleCBjNGVmYjhmMDJmLi5lNWIz
MTllNmRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL3NvYy9NYWtlZmlsZQorKysgYi9kcml2ZXJzL3Nv
Yy9NYWtlZmlsZQpAQCAtMywzICszLDQgQEAKIG9iai15CSs9IGlteC8KIG9iai0kKENPTkZJR19D
UFVfU0lGSVZFKQkrPSBzaWZpdmUvCiBvYmotJChDT05GSUdfU09DX1NUQVJGSVZFKQkrPSBzdGFy
Zml2ZS8KK29iai0kKENPTkZJR19LVlgpCSs9IGt2eC8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29j
L2t2eC9LY29uZmlnIGIvZHJpdmVycy9zb2Mva3Z4L0tjb25maWcKbmV3IGZpbGUgbW9kZSAxMDA2
NDQKaW5kZXggMDAwMDAwMDAwMC4uMThkY2I4YmExNAotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZl
cnMvc29jL2t2eC9LY29uZmlnCkBAIC0wLDAgKzEsMTAgQEAKK21lbnUgIktWWCBTb0MgZHJpdmVy
cyIKKworY29uZmlnIEtWWF9TT0NJTkZPCisgICAgICAgIGJvb2wgIktWWCBTb0MgSW5mbyBkcml2
ZXIiCisJZGVwZW5kcyBvbiBLVlgKKwlzZWxlY3QgTlZNRU0KKwlzZWxlY3QgS1ZYX09UUF9OVgor
CWRlZmF1bHQgeQorCitlbmRtZW51CmRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9rdngvTWFrZWZp
bGUgYi9kcml2ZXJzL3NvYy9rdngvTWFrZWZpbGUKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXgg
MDAwMDAwMDAwMC4uY2FjZmVmMjFhMQotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvc29jL2t2
eC9NYWtlZmlsZQpAQCAtMCwwICsxIEBACitvYmotJChDT05GSUdfS1ZYX1NPQ0lORk8pICs9IGt2
eF9zb2NpbmZvLm8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL2t2eC9rdnhfc29jaW5mby5jIGIv
ZHJpdmVycy9zb2Mva3Z4L2t2eF9zb2NpbmZvLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXgg
MDAwMDAwMDAwMC4uMTAwZmFhZTc2NgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvc29jL2t2
eC9rdnhfc29jaW5mby5jCkBAIC0wLDAgKzEsMTQxIEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMC1vci1sYXRlcgorLyoKKyAqIENvcHlyaWdodCAoQykgMjAyMCBLYWxyYXkg
SW5jLiwgQ2zDqW1lbnQgTMOpZ2VyCisgKi8KKworI2RlZmluZSBwcl9mbXQoZm10KSAia3Z4X3Nv
Y2luZm86ICIgZm10CisKKyNpbmNsdWRlIDxpbml0Lmg+CisjaW5jbHVkZSA8ZHJpdmVyLmg+Cisj
aW5jbHVkZSA8Z2xvYmFsdmFyLmg+CisjaW5jbHVkZSA8bWFnaWN2YXIuaD4KKyNpbmNsdWRlIDxj
b21tYW5kLmg+CisjaW5jbHVkZSA8bGliZmlsZS5oPgorI2luY2x1ZGUgPGdldG9wdC5oPgorI2lu
Y2x1ZGUgPGNvbW1vbi5oPgorI2luY2x1ZGUgPGZzLmg+CisKKyNpbmNsdWRlIDxhc20vc2ZyLmg+
CisKKyNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KKyNpbmNsdWRlIDxsaW51eC9udm1lbS1jb25z
dW1lci5oPgorCisjZGVmaW5lIExPVF9JRF9TVFJfTEVOCTgKKworI2RlZmluZSBFV1NfTE9UX0lE
X01BU0sJCTB4MWZmZmZmZmZmZmZVTEwKKyNkZWZpbmUgRVdTX1dBRkVSX0lEX1NISUZUCTQyCisj
ZGVmaW5lIEVXU19XQUZFUl9JRF9NQVNLCTB4MWZVTEwKKworI2RlZmluZSBGVF9DT01fQVBfU0hJ
RlQJCTE2CisjZGVmaW5lIEZUX0NPTV9BUF9NQVNLCQkweDNmCisjZGVmaW5lIEZUX0RFVklDRV9J
RF9TSElGVAkyMgorI2RlZmluZSBGVF9ERVZJQ0VfSURfTUFTSwkweDFmZgorCitzdGF0aWMgY2hh
ciAqa3Z4X21wcGFfaWQ7CitzdGF0aWMgY2hhciAqa3Z4X2FyY2hfcmV2OworCitCQVJFQk9YX01B
R0lDVkFSKGt2eC5hcmNoX3JldiwgIktWWCBhcmNoaXRlY3R1cmUgcmV2aXNpb24iKTsKK0JBUkVC
T1hfTUFHSUNWQVIoa3Z4Lm1wcGFfaWQsICJLVlggTVBQQSBjaGlwIGlkIik7CisKK3N0YXRpYyB2
b2lkIGt2eF9zb2NfaW5mb19yZWFkX3JldmlzaW9uKHZvaWQpCit7CisJdTY0IHBjciA9IGt2eF9z
ZnJfZ2V0KFBDUik7CisJdTggc3YgPSBrdnhfc2ZyX2ZpZWxkX3ZhbChwY3IsIFBDUiwgU1YpOwor
CXU4IGNhciA9IGt2eF9zZnJfZmllbGRfdmFsKHBjciwgUENSLCBDQVIpOworCWNvbnN0IGNoYXIg
KmNhcl9zdHIgPSAiIiwgKnZlcl9zdHIgPSAiIjsKKworCXN3aXRjaCAoY2FyKSB7CisJY2FzZSAw
OgorCQljYXJfc3RyID0gImt2MyI7CisJCWJyZWFrOworCX0KKworCXN3aXRjaCAoc3YpIHsKKwlj
YXNlIDA6CisJCXZlcl9zdHIgPSAiMSI7CisJCWJyZWFrOworCWNhc2UgMToKKwkJdmVyX3N0ciA9
ICIyIjsKKwkJYnJlYWs7CisJfQorCisJa3Z4X2FyY2hfcmV2ID0gYmFzcHJpbnRmKCIlcy0lcyIs
IGNhcl9zdHIsIHZlcl9zdHIpOworCisJZ2xvYmFsdmFyX2FkZF9zaW1wbGVfc3RyaW5nKCJrdngu
YXJjaF9yZXYiLCAma3Z4X2FyY2hfcmV2KTsKK30KKworc3RhdGljIGludCBiYXNlMzhfZGVjb2Rl
KGNoYXIgKnMsIHU2NCB2YWwsIGludCBuYl9jaGFyKQoreworCWludCBpOworCWNvbnN0IGNoYXIg
KmFscGhhYmV0ID0gIjAxMjM0NTY3ODlBQkNERUZHSElKS0xNTk9QUVJTVFVWV1hZWl8/IjsKKwlj
b25zdCBpbnQgYmFzZSA9IHN0cmxlbihhbHBoYWJldCk7CisKKwlpZiAocyA9PSBOVUxMKQorCQly
ZXR1cm4gLTE7CisKKwlmb3IgKGkgPSAwOyBpIDwgbmJfY2hhcjsgaSsrKSB7CisJCXNbaV0gPSBh
bHBoYWJldFt2YWwgJSBiYXNlXTsKKwkJdmFsIC89IGJhc2U7CisJfQorCisJcmV0dXJuIDA7Cit9
CisKK3N0YXRpYyBpbnQga3Z4X3JlYWRfc2VyaWFsKHN0cnVjdCBkZXZpY2Vfbm9kZSAqc29jaW5m
bykKK3sKKwljaGFyIGxvdF9pZFtMT1RfSURfU1RSX0xFTiArIDFdID0gIiI7CisJY2hhciBjb21f
YXA7CisJdTY0ICpjZWxsX3ZhbDY0OworCXU2NCBld3NfdmFsOworCXUzMiAqY2VsbF92YWwzMjsK
Kwl1MzIgZnRfdmFsOworCXU4IHdhZmVyX2lkOworCXUxNiBkZXZpY2VfaWQ7CisKKwljZWxsX3Zh
bDY0ID0gKHU2NCAqKSBudm1lbV9jZWxsX2dldF9hbmRfcmVhZChzb2NpbmZvLCAiZXdzX2Z1c2Ui
LCA4KTsKKwlpZiAoSVNfRVJSKGNlbGxfdmFsNjQpKSB7CisJCXByX2RlYnVnKCJGYWlsIHRvIHJl
YWQgZXdzX2Z1c2VcbiIpOworCQlyZXR1cm4gUFRSX0VSUihjZWxsX3ZhbDY0KTsKKwl9CisKKwll
d3NfdmFsID0gKmNlbGxfdmFsNjQ7CisJZXdzX3ZhbCA9IChld3NfdmFsID4+IDMyKSB8IChld3Nf
dmFsIDw8IDMyKTsKKwl3YWZlcl9pZCA9IChld3NfdmFsID4+IEVXU19XQUZFUl9JRF9TSElGVCkg
JiBFV1NfV0FGRVJfSURfTUFTSzsKKwliYXNlMzhfZGVjb2RlKGxvdF9pZCwgZXdzX3ZhbCAmIEVX
U19MT1RfSURfTUFTSywgTE9UX0lEX1NUUl9MRU4pOworCisJY2VsbF92YWwzMiA9ICh1MzIgKikg
bnZtZW1fY2VsbF9nZXRfYW5kX3JlYWQoc29jaW5mbywgImZ0X2Z1c2UiLCA0KTsKKwlpZiAoSVNf
RVJSKGNlbGxfdmFsMzIpKSB7CisJCXByX2RlYnVnKCJGYWlsIHRvIHJlYWQgZnRfZnVzZVxuIik7
CisJCXJldHVybiBQVFJfRVJSKGNlbGxfdmFsMzIpOworCX0KKworCWZ0X3ZhbCA9ICpjZWxsX3Zh
bDMyOworCWRldmljZV9pZCA9IChmdF92YWwgPj4gRlRfREVWSUNFX0lEX1NISUZUKSAmIEZUX0RF
VklDRV9JRF9NQVNLOworCWJhc2UzOF9kZWNvZGUoJmNvbV9hcCwgKGZ0X3ZhbCA+PiBGVF9DT01f
QVBfU0hJRlQpICYgRlRfQ09NX0FQX01BU0ssIDEpOworCisJa3Z4X21wcGFfaWQgPSBiYXNwcmlu
dGYoIiVzQS0lZCVjLSUwM2QiLCBsb3RfaWQsIHdhZmVyX2lkLCBjb21fYXAsCisJCQkgICAgICAg
ZGV2aWNlX2lkKTsKKworCWdsb2JhbHZhcl9hZGRfc2ltcGxlX3N0cmluZygia3Z4Lm1wcGFfaWQi
LCAma3Z4X21wcGFfaWQpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQga3Z4X3NvY2lu
Zm9fcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCit7CisJa3Z4X3NvY19pbmZvX3JlYWRfcmV2
aXNpb24oKTsKKworCXJldHVybiBrdnhfcmVhZF9zZXJpYWwoZGV2LT5kZXZpY2Vfbm9kZSk7Cit9
CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGt2eF9zb2NpbmZvX2R0X2lkc1td
ID0geworCXsgLmNvbXBhdGlibGUgPSAia2FscmF5LGt2eC1zb2NpbmZvIiB9LAorCXsgfQorfTsK
Kworc3RhdGljIHN0cnVjdCBkcml2ZXJfZCBrdnhfc29jaW5mb19kcml2ZXIgPSB7CisJLm5hbWUg
PSAia3Z4LXNvY2luZm8iLAorCS5wcm9iZSA9IGt2eF9zb2NpbmZvX3Byb2JlLAorCS5vZl9jb21w
YXRpYmxlID0gRFJWX09GX0NPTVBBVChrdnhfc29jaW5mb19kdF9pZHMpLAorfTsKK2NvcmVkZXZp
Y2VfcGxhdGZvcm1fZHJpdmVyKGt2eF9zb2NpbmZvX2RyaXZlcik7Ci0tIAoyLjE3LjEKCgoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

