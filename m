Delivery-date: Sun, 26 Apr 2026 21:54:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wH5ZC-00Gg2j-23
	for lore@lore.pengutronix.de;
	Sun, 26 Apr 2026 21:54:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wH5ZC-0004m6-3o
	for lore@pengutronix.de; Sun, 26 Apr 2026 21:54:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Subject:Date:To:From:Message-ID:Cc:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y4jLbIukGhMd0t3H7rZ9HT/NA5p0enubaHZKPuJiLkI=; b=SFXQ+bkOwvQaF+
	0W7ZjgImmWBJT4YZ1eFlRh7uUOSMyMWi9yzOkkMNL07Ii6yZEjthbOw5ryq5tUrOX8OVllDKS81EY
	3jId2uGyxbDP/7hYqT+kiJ6LKvH9s5XfpNWv8PVnJCWX6gpD606Re+V/X7fbtRs6ZcUBjRPlGJ4hN
	oUeMZN4pcMAeVdFCFn3ljixUv79qlEf04LvzCfYxn21jG6GE43tfJGXId+kCZAedBrrQ2orE9KdzQ
	RxR7kbIGN05nvKc1C0ZT9AjJiEP53iYMmIsvYiSCth6YoN9Wh3Ker6vdULyuK2BSxIchTGc6M2JY8
	pAYbxvyskaGfP7jBBr9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wH5YG-0000000Fnjb-1ZXO;
	Sun, 26 Apr 2026 19:54:00 +0000
Received: from metal.innovativeprecisionmfg.com ([23.94.227.94])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wH5Y0-0000000Fnim-2uPW
	for barebox@lists.infradead.org;
	Sun, 26 Apr 2026 19:53:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=selector2;
 d=metal.innovativeprecisionmfg.com;
 h=From:Reply-To:To:Date:Subject:Content-Type:Content-Transfer-Encoding;
 i=Rhianyn.Verret@metal.innovativeprecisionmfg.com;
 bh=Y4jLbIukGhMd0t3H7rZ9HT/NA5p0enubaHZKPuJiLkI=;
 b=E/aTGQk8qBGlOB4ZZaIe/CjyHDoVjbECEX0V3E5+4AcQ5+W7G1rir1DwA1yL0rGxf30bXQCzIpzs
   nZEb/IQUU0rLwBXXRMl2Kd7DXtwfaeLf5oZiWLf606E/j6VixJdthFwrCHDFp5cc6SGTqrYG3vUf
   UN1yYd/Wsr5M1NgsPD4=
From: Rhianyn.Verret <Rhianyn.Verret@metal.innovativeprecisionmfg.com>
To: barebox <barebox@lists.infradead.org>
Date: Mon, 27 Apr 2026 03:33:37 +0800
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: base64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_125345_699284_DA9AB8F9 
X-CRM114-Status: UNSURE (   0.94  )
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
Reply-To: bill@craftcoremoulds.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MISSING_MID,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_ABUSE_SURBL,URIBL_DBL_SPAM autolearn=no
	autolearn_force=no version=3.4.2
Subject: Guarantee quality and precision with our ISO9001:2008 certified processes.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)
Message-ID: <20260426193337.BhnYuSFj6ERljBA0zRNM_pvXp0v-5a-w-l4hURrsr4w@z>

SGkgYmFyZWJveCwNClNpbmNlIGl0cyBlc3RhYmxpc2htZW50IGluIDIwMDYsIFNoZW56aGVuIENO
TSBoYXMgc3BlY2lhbGl6ZWQgaW4gcmFwaWQgcHJvdG90eXBpbmcgb2YgaGFuZC1ib2FyZCBtb2Rl
bHMgYW5kIHRoZSBwcm9kdWN0aW9uIG9mIGhpZ2gtcHJlY2lzaW9uIG5vbi1zdGFuZGFyZCBwYXJ0
cywgY2F0ZXJpbmcgdG8gYm90aCBzbWFsbC1zY2FsZSBhbmQgbGFyZ2Utc2NhbGUgb3JkZXJzLg0K
DQpPdXIgY29yZSBidXNpbmVzcyBhcmVhcyBpbmNsdWRlOg0KMS5NYWluIGJ1c2luZXNzIHNjb3Bl
IGluY2x1ZGVzOiBDTkMgcHJvdG90eXBlIG1vZGVsaW5nLCBpbmR1c3RyaWFsIHByb2R1Y3QgZGVz
aWduLg0KMi5NYXRlcmlhbHMgdXNlZDogQUJTLCBQT00sIFBDLCBQQTYsIFBBNjYsIFBNTUEsIGFs
dW1pbnVtIGFsbG95LCBpcm9uLCBzdGVlbCwgZWxlY3RyaWMgd29vZCwgRVZBLCBldGMuDQozLlBy
b2R1Y3RzIHRoYXQgY2FuIGJlIHVuZGVydGFrZW46IGF1dG9tb3RpdmUgYWNjZXNzb3JpZXMsIHNt
YXJ0IGhvbWUgcHJvZHVjdHMsIHJvYm90cywgZWxlY3Ryb25pYyBzaGVsbCBwcm90b3R5cGVzLCBt
ZWRpY2FsIGVxdWlwbWVudCBwcm90b3R5cGVzLg0KNC5WYWN1dW0gbW9sZGluZzogU21hbGwgYmF0
Y2ggcmVwbGljYXRpb24sIG1hdGVyaWFscyBpbmNsdWRlOiBBQlMsIFBVLCBQVkMsIHNpbGljb25l
LCB0cmFuc3BhcmVudCBBQlMsIGV0Yy4NCg0KT3VyIGFyc2VuYWwgaW5jbHVkZXMgb3ZlciAxMDAg
c2V0cyBvZiBsYXJnZSBwcmVjaXNpb24gQ05DIG1hY2hpbmUgdG9vbHMgYW5kIHN0YXRlLW9mLXRo
ZS1hcnQgdGVzdGluZyBlcXVpcG1lbnQgc3VjaCBhcyB0aGUgV2FuaGFvIHNlY29uZGFyeSB5dWFu
LCBIZXhhZ29uIHRocmVlIHl1YW4sIFRFU0EgaGVpZ2h0IG1ldGVyLCBNaXR1dG95byByb3VnaG5l
c3MgbWV0ZXIsIGFuZCBBaXNla2kgY29sb3JpbWV0ZXIsIGVuc3VyaW5nIHVubWF0Y2hlZCBxdWFs
aXR5IGluIG91ciBvZmZlcmluZ3MuDQoNCklmIHlvdSdyZSBpbnRyaWd1ZWQgYnkgb3VyIHByb2R1
Y3Rpb24gc2VydmljZXMsIHBsZWFzZSBzaGFyZSBkcmF3aW5ncyBvciBzYW1wbGVzIHdpdGggdXMs
IGFuZCB3ZSdsbCBwcm9tcHRseSBwcmVwYXJlIGEgcXVvdGF0aW9uIGZvciB5b3VyIGNvbnNpZGVy
YXRpb24uIA0KDQpLZWVwIHVwIHRoZSBncmVhdCB3b3JrIQ0KVGVsIDogKzg2IDE4NTY1NzkyMDgz
DQpBVFROOiBCaWxsIExpdQ==





