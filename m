Delivery-date: Mon, 09 May 2022 17:10:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1no52F-007F69-98
	for lore@lore.pengutronix.de; Mon, 09 May 2022 17:10:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1no52D-0006MK-TX
	for lore@pengutronix.de; Mon, 09 May 2022 17:10:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v8cSguK1/TE9r2ejj/t9iqwOVS+4+ToTi0D3QVN+/dA=; b=zqMeFraHYF76kW
	y/NtBgBdjWIj20XRwsOmYw4t4Q4MJVjHIdmKKKagrFOE3oPznjJbu/dFlb2mSMbVaKsK1+W4udVq1
	YAeg7dq9HTgKKnHZHbG+zZxIy4SuS+I1KMaVE8lzsaN2H5TnmWV8N/hlNDb5evCbyjh07S5UsLb1x
	YwHZ0u8Az+QUmEQkWDmLZ2ACSaTes/vt1bdMTNVKJOP3t98WwiJfsAJ0Ortq9mXKw+DB8nS6PJlWB
	blOuSl5dWI2XZsXD6D3OEdX+nXpNOCWll83YbfFnMyCue9RKEZcrPTqs3kdd5HxvXYJDIAhLKNr2L
	eF1HeLF7PY0KhsDLIvlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1no50b-00F15U-4B; Mon, 09 May 2022 15:09:13 +0000
Received: from mail.altsetonline.com ([51.254.119.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1no50A-00F101-KO
 for barebox@lists.infradead.org; Mon, 09 May 2022 15:08:56 +0000
Received: by mail.altsetonline.com (Postfix, from userid 1002)
 id D40DB2282B; Mon,  9 May 2022 15:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=altsetonline.com;
 s=mail; t=1652108924;
 bh=ZWOA/1seUbDdknp7vWPZTi/LTxkJxgWJ33h0PDOotrA=;
 h=Date:From:To:Subject:From;
 b=QTYwUta6qyJfftC5oqVB6eBChH8beYS0kZkK2SzhTH7cwSqkd+svdJ9VdaYRpCAeS
 oVx3A4Tc6+QfujuW9559NffF0GtADO2tQo6pyy3OY5CYAc3KTGYiYJKMbkqjApt7Xq
 URLrXQ2XjMvfsxqHvk3v3cf6tsSp9ItIsF+3SlwVm/Jx0XBrQi3gjV1IEYb7LRZKu9
 KXaChKWHg/v+VG1GTFWVIRVYhyKxw6gUXRM5KtsF3eP3LhyqDOyJPhZEx3t/VPXyFj
 kMVVQTMAuEQ6nXERTjab8LRUA6hvhMUQQe4nTIS3NvgwuNniyxcbOCk68oEi0iNQss
 QZtWrIbKFmxTQ==
Received: by mail.altsetonline.com for <barebox@lists.infradead.org>;
 Mon,  9 May 2022 15:08:20 GMT
Message-ID: <20220509141500-0.1.9.9ov.0.j34us3302q@altsetonline.com>
Date: Mon,  9 May 2022 15:08:20 GMT
From: "Walker Cooney" <walker.cooney@altsetonline.com>
To: <barebox@lists.infradead.org>
X-Mailer: mail.altsetonline.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_080846_871656_049D3160 
X-CRM114-Status: UNSURE (   0.91  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: SEO analysis 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8sCgp3b3VsZCB5b3UgbGlrZSB0byByZWFjaCBtb3JlIGNsaWVudHM/CgpBcyBvbmUgb2Yg
dGhlIGZpcnN0IFNFTyBhZ2VuY2llcyBpbiBFdXJvcGUsIHdl4oCZdmUgaW50cm9kdWNlZCBTRU8g
MzYwIHNlcnZpY2UgKFNFTywgVVgsIGFuZCBTRU0pLCB3aGljaCBhc3N1cmVzIGEgbXVsdGlkaW1l
bnNpb25hbCBhcHByb2FjaCB0byBvcHRpbWlzaW5nIGNvbXBhbnnigJlzIHZpc2liaWxpdHkgb25s
aW5lIGFuZCBpbmNyZWFzaW5nIHdlYnNpdGUgdHJhZmZpYy4KCldlIHByb3ZpZGUgYSBmcmVlIGNv
bnN1bHRhdGlvbiB3aXRoIG91ciBzcGVjaWFsaXN0LCBkdXJpbmcgd2hpY2ggd2Ugd2lsbCBjb25k
dWN0IGEgZGV0YWlsZWQgYW5hbHlzaXMgb2YgeW91ciB3ZWJzaXRlIG9yIGUtc2hvcCwgcG9zaXRp
b25pbmcgaW5kaWNhdG9ycyBhbmQgY2hlY2sgdGhlIGFjdGlvbnMgYW5kIHJlc3VsdHMgYWNoaWV2
ZWQgYnkgeW91ciBjb21wZXRpdG9ycy4KCk91ciBjbGllbnRzIGdhaW4gbm90YWJsZSByZXN1bHRz
IGJ5IHVzaW5nIGEgZGVkaWNhdGVkIHN0cmF0ZWd5LCBleHRlbnNpdmUgd2Vic2l0ZSBhbmFseXRp
Y3MsIHRlY2huaWNhbCBvcHRpbWlzYXRpb24sIGFkZGluZyBuZXcgc3VicGFnZXMgYW5kIGxpbmsg
YnVpbGRpbmcuCgpXaXRoIDE0IHllYXJzIG9mIGV4cGVyaWVuY2UgYW5kIHRoZSBza2lsbHMgb2Yg
b3ZlciAzNTAgc3BlY2lhbGlzdHMgd29ya2luZyBvbiAzIGNvbnRpbmVudHMsIHlvdSBjYW4gaW5j
cmVhc2UgeW91ciBzYWxlcyBhbmQgYmVjb21lIGFuIGluZHVzdHJ5IGxlYWRlci4KClBsZWFzZSBs
ZXQgdXMga25vdyBpZiB5b3Ugd2FudCB0byBsZWFybiBtb3JlIGFib3V0IG91ciBtZXRob2RzIGFu
ZCBwb3NzaWJsZSByZXN1bHRzLgoKWW91cnMgc2luY2VyZWx5LAoKV2Fsa2VyIENvb25leQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

