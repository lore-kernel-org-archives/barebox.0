Delivery-date: Fri, 05 Mar 2021 18:32:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIEJM-00031r-Uv
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 18:32:24 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIEJM-0003mi-1M
	for lore@pengutronix.de; Fri, 05 Mar 2021 18:32:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4OQNYQ6c87a8mzIKjfGeAtcxh5Tbde9UOrHeCjOE+mM=; b=d8rr0sM8jT2E+T
	Qrx868lut3Kh1paZCaypAY/1+5WM3s9z+b2iyOAHKtyNdUa8uFr0IVNIJrWXqhb1eyFZjECVsNHif
	4P/T6SSBVZCWFLBsPs5S7GpctTJ/OGYwRYCnl4v0iYFEsi+HmE7xnVirs4mNeYLmmTd9X9ILzgXC2
	GANiQepD9G7Bp02jkhk5sFQ/4KWIHl0CNo35xSZ+4OiFN2jd6eCfWpX2HDxoz75CadwZiDzaQjhcW
	RQB8dDTyYNeYS2+gHOKPfTBD91D1ckyKcVgF1TwgYAGGirLjRd9Itr/Tya3MJdHYIKDxWalN82EP/
	5abtHmlS/D6WwBB6cvGg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIEHk-00FnNh-2Q; Fri, 05 Mar 2021 17:30:44 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1234::107])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIEHc-00FnMz-NV
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 17:30:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=To:Date:Message-Id:Subject:Mime-Version
 :Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=t8OncfStEwoIenfpx4uCuBZPn+/rK12xJzy/tOHAQyY=; b=kxENnlJQOspv0COmF8U55aZTJX
 jA39KhrQNZut4gn9Kc24ytrHkW7YG3BVV/y7UJOBm55s1vTIx3nILweRy5tLLWJiv2xmOgj9utXYt
 ojP+jA6nrWefMWAMlYtER3CCvvZcdPCtIrWfgO/acTLEEmDrq0GZ+xSKutgPM7z5F9nvwMqLEJeCo
 eBsvDhjOJ+d+cavV+I+j+4A4mq89EYR5HpsEqPJiaHca/wo++NeiYSsI7cXF9xXGBAWvUsKJDFMjj
 6sNANHiwODuK3xMg+JrwoWee2Z0JSIhgFO+Gf9b481ulOXE9eb/8ipKj5oDaZC6XaGqdBfbdikoYS
 iR8z/xWw==;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by merlin.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIEHY-0008GM-8V
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 17:30:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 574015C00BA
 for <barebox@lists.infradead.org>; Fri,  5 Mar 2021 12:30:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 05 Mar 2021 12:30:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stritzinger.com;
 h=from:content-type:content-transfer-encoding:mime-version
 :subject:message-id:date:to; s=fm3; bh=t8OncfStEwoIenfpx4uCuBZPn
 +/rK12xJzy/tOHAQyY=; b=P5SrmJYvYQHPBs0/6M2EreRvDLqpyBmyHmYUzPsEB
 DuHmN9tGrd90vcjqwLnOE9MTMhxmLMdQgmXzeavcN3IGmBgZpmnoNnpHtvdHHCaO
 OuJaZKz/wQBYwV8NGwNZuSaTt1yp/7CZ+T8GVOQxLITCzR0mdXXvg3CoPLN1iEBQ
 0Fs8ysBpibC4rnFRDNlidKV7qjwEaGUhi4HjA/IDPLgW/6p9/IATvdfgj1IPLoHt
 X6rZmIoB0Pf5u34Zs4TuR2mRC9c36+MgV7CBdoR7FYZfY60Lp8uUrJw+MmPwTxTY
 wqKCUFYuL/fH2AZCLNXfh825pAtjkRJZH0+97c0nmrRYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:message-id:mime-version:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=t8Oncf
 StEwoIenfpx4uCuBZPn+/rK12xJzy/tOHAQyY=; b=ms0UAQjyXI8t6Qccr66ITM
 rGHFtcIutEKaSLP5T8RAjn4RFUzkdV/FG1XpDCr/kJZVJAyoLfEpG5+VFuXl3wj+
 O3zdaeCeS2pszEPnUhqIQHF2S1kSZWJsw+L7N78kEpymDgcSbQJEKJhSR6SGjzbi
 oai4Itys1s790lRKxwdw/N6ybXAhl5tZMRS6+RyIcA4kEnE5q69xBjtB2V4ntRL/
 Q+CwLS1EMEnNQzGRoUrlY0NpYe6WHfBKhsqY/VYZkpxzq7I1hYWWaRQlXHdx3PN0
 0VdHYXzjoXzQloCzdVvLrtQwfBIPizuwwAqGUgvC4YNkj2ix8UyJ9zViHbb3HKKw
 ==
X-ME-Sender: <xms:sGpCYOmQGJijSixCjZWePqK9715MmBgLkf1auYGK6YnwKsE-xZuE8Q>
 <xme:sGpCYPe7B1VU0ireFd_JbyaL2M1AHF1BkCRWKN6MnPAfC5nnEiuZ3TlW2DoXT7Hsd
 n5jxDkTY7S5ubO1I4k>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledruddtiedgleefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhtgfgggfukfffvffosehtqhhmtd
 hhtdejnecuhfhrohhmpefurogsrghsthhivghnpgfovghrlhgvuceoshgvsggrshhtihgv
 nhdrmhgvrhhlvgesshhtrhhithiiihhnghgvrhdrtghomheqnecuggftrfgrthhtvghrnh
 epfeevhfdugeelgeduiedtvdffhfduhfelhedugeehleefudekjefftdelvdegjedunecu
 ffhomhgrihhnpegsrghrvggsohigrdhorhhgnecukfhppeekfedrheeirddvvdekrdegvd
 enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehsvggs
 rghsthhivghnrdhmvghrlhgvsehsthhrihhtiihinhhgvghrrdgtohhm
X-ME-Proxy: <xmx:sGpCYMrpsFK2JlBKX2KF0N5cA10bgxAeMR-W1Ip7sefM_7d525otnw>
 <xmx:sGpCYF4PFQ4aKvuMMqEjwBVB1qmz7P4higYxtPVVFPrOOL9njMAWvA>
 <xmx:sGpCYKqCOIKMYKzZOzysUdh7zjtmAj0ZQoEy1LVLiqfK1TJZS8fqvA>
 <xmx:sWpCYMwAOzMfkj5OUZUsk1AcLmsjWUXwMzai-vKOIBC6akDd42PYig>
Received: from [192.168.10.78] (42.red-83-56-228.dynamicip.rima-tde.net
 [83.56.228.42])
 by mail.messagingengine.com (Postfix) with ESMTPA id 954BC1080064
 for <barebox@lists.infradead.org>; Fri,  5 Mar 2021 12:30:24 -0500 (EST)
From: =?utf-8?Q?S=C3=A9bastien_Merle?= <sebastien.merle@stritzinger.com>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
Message-Id: <FC8C25F4-6D97-4F8C-83C0-7A1E112FCACC@stritzinger.com>
Date: Fri, 5 Mar 2021 18:30:22 +0100
To: barebox@lists.infradead.org
X-Mailer: Apple Mail (2.3654.60.0.2.21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_123032_819685_5AC63D4C 
X-CRM114-Status: UNSURE (   7.90  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: A/B boot on PhyCORE iMX6 with U-Boot env
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksCgpGaXJzdCwgSSBhbSBhIG5ld2JpZSB0byB0aGlzIGFuZCBpZiBJIHNob3VsZCB1c2UgYW5v
dGhlciBjaGFubmVsIHRvIGFzayB0aGVzZSBxdWVzdGlvbnMsIHBsZWFzZSBmb3JnaXZlIG1lIGFu
ZCByZWRpcmVjdCBtZSB0byB0aGUgcHJvcGVyIHBsYWNlLgoKSSBhbSB0cnlpbmcgdG8gc2V0dXAg
QS9CIGJvb3Qgb24gYSBhIHBoeUNPUkUgaW14NiBib2FyZCB3aXRoIGJhcmVib3ggZnJvbSBFTU1D
LiBUbyB0ZXN0IHRoZSBzdGF0ZSBmcmFtZXdvcmsgSSBhZGRlZCBCYXJlYm944oCZcyBpbXg2dWwt
cGh5dGVjLXN0YXRlLmR0c2kgdG8gbXkgZGV2aWNlIHRyZWUuIAogCkkgYW0gY29uZnVzZWQgYWJv
dXQgdGhlICZlZXByb20gbm9kZSBpbiBpbXg2dWwtcGh5dGVjLXN0YXRlLmR0c2kgdXNlZCBmb3Ig
dGhlIHN0YXRlIGJhY2tlbmQsIHdoYXQgaXMgdGhpcyBkZWZpbmluZyA/IElzIHRoaXMgcmVhbGx5
IHN0b3JpbmcgdGhlIHN0YXRlIGluIHRoZSBFTU1DID8KCldlIHdvdWxkIHJhdGhlciB1c2UgVS1C
b290IGVudiwgYXMgb3VyIGZpcm13YXJlIGNyZWF0aW9uIHRvb2xzIG9ubHkgc3VwcG9ydCB0aGF0
IGZvciBub3cuIFRvIHNldHVwIG15IGZpcm13YXJlIHVwZGF0ZSBJIG5lZWQgdG8gZGVmaW5lIHRo
ZSBvZmZzZXQgb2YgYmFyZWJveCwgYmFyZWJveCBlbnZpcm9ubWVudCBhbmQgVS1Cb290IGVudmly
b25tZW50IGJ1dCBJIGNhbuKAmXQgZmluZCB3aGF0IG9mZnNldHMgSSBzaG91bGQgdXNlIHNvIG5v
dGhpbmcgY2xhc2guIEhvdyBjb3VsZCBJIGZpZ3VyZSBvdXQgdGhlc2Ugb2Zmc2V0cyA/CgpUaGUg
aWRlYSB3YXMgdG8gYWRkIGEgVS1Cb290IGVudmlyb25tZW50IGFuZCB1c2UgYSBzY3JpcHQgdG8g
Ym9vdCBBIG9yIEIgaW4gZnVuY3Rpb24gb2YgdGhlIFUtQm9vdCB2YXJpYWJsZXMuIElzIGl0IGV2
ZW4gcG9zc2libGUgPwoKSWYgaXQgaXMgcG9zc2libGUsIGRvIEkgbmVlZCB0byBhZGQgYSBwYXJ0
aXRpb24gb2YgdGhlIEVNTUMgaW4gbXkgZGV2aWNlIHRyZWUgYXMgc2hvd24gaW4gaHR0cHM6Ly93
d3cuYmFyZWJveC5vcmcvZG9jL2xhdGVzdC9kZXZpY2V0cmVlL2JpbmRpbmdzL2JhcmVib3gvYmFy
ZWJveCx1Ym9vdC1lbnZpcm9ubWVudC5odG1sID8KCkkgd291bGQgYmUgZ3JhdGVmdWwgZm9yIGFu
eSBwb2ludGVycyB0byBkb2N1bWVudGF0aW9uIG9yIGV4YW1wbGVzIHRvIHNldHVwIEEvQiBib290
IG9uIHNpbWlsYXIgcGxhdGZvcm0gKHdpdGhvdXQgeW9jdG8pLgoKVGhhbmsgeW91IHZlcnkgbXVj
aCBmb3IgeW91ciB0aW1lLgoKQmVzdCByZWdhcmRzLApTZWJhc3RpZW4gTWVybGUsClBlZXIgU3Ry
aXR6aW5nZXIgR21iSC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

