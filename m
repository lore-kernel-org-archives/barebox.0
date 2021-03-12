Delivery-date: Fri, 12 Mar 2021 12:05:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKfbS-0004Nh-Vo
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 12:05:10 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKfbS-0008Br-7F
	for lore@pengutronix.de; Fri, 12 Mar 2021 12:05:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QN6ZK8IQLbhARtjVDctCGTFdzYOWxFA+X645VLGSsHs=; b=Kggf9skh3iJFUGomu18nDlJcfP
	/XtWKKkNYlgq5fGXkPG70gr6EMO2d9e4NZV9jEVPMc+oHDhsZnnf+VM2XxTiSSDB3cIGJf54ClkM7
	GBTdir/mSf6lMXbs2pLo/z97UHCm160VIc4DH9C+qaB2Kqmyr1vY3c5ypKVIz3GZrllMYvLuwc3dd
	GkAiLXqdZJ/5P6Vq9zTBsewnW8LyJpgyfxsNaeH0vMCjcKgXhgzyUdpVLLl7ugZ2LBOy71bRVZxGw
	0CXX04DBbIQ+jhTfc9qkbWrFay3Hl4u0TrXITDWpkt1e6CDLziA1J6CcSSvfjo5f49XiuOwMCQM4L
	DTSGmabg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKfaU-00BFJT-U3; Fri, 12 Mar 2021 11:04:11 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKfaP-00BFIu-UI
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 11:04:08 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id C7CC411DD2E; Fri, 12 Mar 2021 11:55:08 +0100 (CET)
Received: from localhost (unknown [IPv6:2001:9e8:7b:ec02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id C721011DD2C;
 Fri, 12 Mar 2021 11:55:06 +0100 (CET)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri, 12 Mar 2021 11:54:44 +0100
Message-Id: <20210312105444.22838-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_110406_413031_B9EBEF08 
X-CRM114-Status: GOOD (  10.19  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: imx-image: add error handling for pwrite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Rml4ZXMgdGhlIGZvbGxvd2luZyBjb21waWxlciB3YXJuaW5nOgoKICBzY3JpcHRzL2lteC9pbXgt
aW1hZ2UuYzogSW4gZnVuY3Rpb24g4oCYbWFpbuKAmToKICBzY3JpcHRzL2lteC9pbXgtaW1hZ2Uu
Yzo5ODg6Mzogd2FybmluZzogaWdub3JpbmcgcmV0dXJuIHZhbHVlIG9mIOKAmHB3cml0ZeKAmSBk
ZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSDigJh3YXJuX3VudXNlZF9yZXN1bHTigJkgWy1XdW51c2Vk
LXJlc3VsdF0KICAgIDk4OCB8ICAgcHdyaXRlKG91dGZkLCBiYl9oZWFkZXIsIHNpemVvZl9iYl9o
ZWFkZXIsIDApOwogICAgICAgIHwgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn4KClNpZ25lZC1vZmYtYnk6IFJvdXZlbiBDemVyd2luc2tpIDxyLmN6ZXJ3aW5z
a2lAcGVuZ3V0cm9uaXguZGU+Ci0tLQogc2NyaXB0cy9pbXgvaW14LWltYWdlLmMgfCA5ICsrKysr
KystLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9zY3JpcHRzL2lteC9pbXgtaW1hZ2UuYyBiL3NjcmlwdHMvaW14L2lteC1pbWFn
ZS5jCmluZGV4IGY1ZTg5ZDA3YTYuLjU3ZDc3N2EwNjUgMTAwNjQ0Ci0tLSBhL3NjcmlwdHMvaW14
L2lteC1pbWFnZS5jCisrKyBiL3NjcmlwdHMvaW14L2lteC1pbWFnZS5jCkBAIC05ODQsOCArOTg0
LDEzIEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pCiAJCXh3cml0ZShvdXRmZCwg
YnVmLCBoZWFkZXJfbGVuKTsKIAl9CiAKLQlpZiAoYWRkX2JhcmVib3hfaGVhZGVyKQotCQlwd3Jp
dGUob3V0ZmQsIGJiX2hlYWRlciwgc2l6ZW9mX2JiX2hlYWRlciwgMCk7CisJaWYgKGFkZF9iYXJl
Ym94X2hlYWRlcikgeworCQlyZXQgPSBwd3JpdGUob3V0ZmQsIGJiX2hlYWRlciwgc2l6ZW9mX2Ji
X2hlYWRlciwgMCk7CisJCWlmIChyZXQgPCAwKSB7CisJCQlmcHJpbnRmKHN0ZGVyciwgInB3cml0
ZSBmYWlsZWQ6ICVzXG4iLCBzdHJlcnJvcihlcnJubykpOworCQkJZXhpdCgxKTsKKwkJfQorCX0K
IAogCXh3cml0ZShvdXRmZCwgaW5maWxlLCBpbnNpemUpOwogCi0tIAoyLjMwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcg
bGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

