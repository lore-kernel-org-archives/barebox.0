Delivery-date: Wed, 06 Nov 2024 18:26:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8jnB-005bua-1f
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 18:26:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8jnC-0004HQ-2f
	for lore@pengutronix.de; Wed, 06 Nov 2024 18:26:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zkRIIzQxIWD5QrLFadDu59O61FViCmW9p/tWIKxHmOA=; b=X8RrSAsg0noAUlNWG5JBTN0qJa
	fBdz7lbu5ZshXWdEyKp5vFbP5vhWYHdKC2YkjXlv82CycWmeWUKhlPDehGmVrI35rz9A6HcYzHiU2
	ISWdsn+KWtZaBoUR2wwDUkLEXvmdbnzz7dRG7kVEf+YRuRZThlkO4UF2rc5/LzZNNdeec12pVYtgv
	eARB0b42Laspyss4WDfg5CjmBpd9otmOFoJVYUX8PvIy2GzKX1FNVzsKVeXUzVAVdnggkcTPaA/LS
	mVwk3UMSz02Kqxvcz/2QgTGYJtqYGM0wrAeZLTvflYeivgkR4WmHx5nFI0/13Ou0VbP9Zgjwz+YDo
	eFUQn+Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8jmb-00000004BP4-3Iz9;
	Wed, 06 Nov 2024 17:25:29 +0000
Received: from fout-a3-smtp.messagingengine.com ([103.168.172.146])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8jmY-00000004BOg-1IcS
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 17:25:28 +0000
Received: from phl-compute-08.internal (phl-compute-08.phl.internal [10.202.2.48])
	by mailfout.phl.internal (Postfix) with ESMTP id 3B3AF13804A4;
	Wed,  6 Nov 2024 12:25:24 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-08.internal (MEProxy); Wed, 06 Nov 2024 12:25:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cold-front.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm1; t=1730913924; x=1731000324; bh=zkRIIzQxIW
	D5QrLFadDu59O61FViCmW9p/tWIKxHmOA=; b=WolXHOibZ1j9Hd/YdBhNBxvVQX
	P9SEMrK251mG5ERgYLl5Js8jxzEdUgSQzBQL7R1WEN48TSscFQ5Qmpi3N/68C6bW
	PuGOuCujmWaYid5fsdYiUmVc7TeNmVZDCdjx7jkNPRZjQu3S1wIPtf772SXff1/O
	obj2vc2r+omYZg6E4d0Un3uCsv3AAIJguysLqgW1SsULXPRJI4xnmUYmLNy1olIU
	niqRfGiT41OWPXJthEayCpXE03tmYCW3UGmSxU5cDOB1Lal4E+mYHWievHbBGq/c
	GSb0fdQ0SBxKM/bMk29fG/GOF+L61qspo64sIQ79EJm+M41pCTP3/eJ5N42A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1730913924; x=1731000324; bh=zkRIIzQxIWD5QrLFadDu59O61FViCmW9p/t
	WIKxHmOA=; b=LHslrrwqV6CbkgwHlXfanzOpg1jqRXQ89+nVIKbGJFm8/pr915T
	utncIzh1mGhY/WRc56ZC2O40I3VLdt4gp8DW8UPA+fiHEIWkFnFkxaZw4AvwwjRt
	d8bGPyOTnLKOBHtEHSoyzXJYqAhnpRCkeVgMGFBYeENlDoCnco0aCXbnDoGo76Wt
	YgOedVWlgAxuYdZ+08tZwwtvbkV7lQ09x0WxudH1r0rptRo7NbwoQ5ngC9TheSA9
	tZpnzHqkfQOOuxWiEYk7ZVP8fOkfQVekzEDu8k2Hxg9A6bSYkZewNdZ6AKTLeAHD
	tOM+Ky4V7EuITqEV4DH7b5nLJSfGMqoYt9g==
X-ME-Sender: <xms:g6YrZ71xO-x9PqY8_pb6M3l8QP5190zVuZZnyn5pGJOOLjoYo04Svw>
    <xme:g6YrZ6FXsQUBEuK3M3xvM5ZE5AJPPgIYckDlBp_Nf2t-cwNKOKG6nhymZCznpnKga
    otTCn0UC6lQxcAdHg>
X-ME-Received: <xmr:g6YrZ75NCR_nLnudPCZKzN3InGqXx1qDrgaa6VlJ_c8OQsVZpDxH3SeGc88khIAjaqU54gmTYxDDaZ0LF4q4ZfctxzMIb4SFoLNnzVfDkA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrtddvgdelkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
    tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefuff
    fkofgggfestdekredtredttdenucfhrhhomheplfhushhtihhnuceurhhonhguvghruceo
    jhhssghrohhnuggvrhestgholhguqdhfrhhonhhtrdhorhhgqeenucggtffrrghtthgvrh
    hnpeffudfgffefuedvuddttdfgfeehgfeikeffudfhgfehieefteefgedvieehvdegvden
    ucffohhmrghinhepghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepjhhssghrohhnuggvrhestgholhguqdhfrhhonhht
    rdhorhhgpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtth
    hopegsrghrvggsohigsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthht
    ohepjhhssghrohhnuggvrhestgholhguqdhfrhhonhhtrdhorhhg
X-ME-Proxy: <xmx:g6YrZw062kZFy2cecTl_SgMrGiwKsIm8z2XpTrYn9DxGxmlmJ05XIA>
    <xmx:g6YrZ-EpUkEaEHkiF3PLRxThgM-dpcztugxIkJwDIYhh5aFJBjkt-w>
    <xmx:g6YrZx-X7tuD2a_Z2wbfbmB1ISXnlPUyJ8uecmfGdjOflU91xM4Bbw>
    <xmx:g6YrZ7nDjaXbzL_V-gqvKTrYXJfgQ8awx-xnvl1m-RW4da__p-vD5Q>
    <xmx:hKYrZzQy6vy27Elk7G65ycFzSxtdJFGhm2wcQIFi_A1tuTV616nZsclf>
Feedback-ID: iea0042cb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 6 Nov 2024 12:25:23 -0500 (EST)
From: Justin Bronder <jsbronder@cold-front.org>
To: barebox@lists.infradead.org
Cc: Justin Bronder <jsbronder@cold-front.org>
Date: Wed,  6 Nov 2024 12:25:21 -0500
Message-ID: <20241106172521.604842-1-jsbronder@cold-front.org>
X-Mailer: git-send-email 2.46.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_092526_779983_8F4E7E8D 
X-CRM114-Status: UNSURE (   8.59  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] lib: lz4: use lz4 instead of lz4c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

lz4c has been considered deprecated by upstream since at least 2018 [1]
and has been disabled by default recently [2].  openSUSE Tumbleweed is
no longer packaging the deprecated version and others will likely
follow.

Going back as far as Ubuntu 16.04/Fedora 25, both lz4 and lz4c are
installed as part of the same package so switching should be safe.

1. https://github.com/lz4/lz4/pull/553
2. https://github.com/lz4/lz4/pull/1479

Signed-off-by: Justin Bronder <jsbronder@cold-front.org>
---
 scripts/Makefile.lib | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 1881e3c1..1052bcee 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -492,7 +492,7 @@ cmd_lzo = (cat $(filter-out FORCE,$^) | \
 
 quiet_cmd_lz4 = LZ4     $@
 cmd_lz4 = (cat $(filter-out FORCE,$^) | \
-	lz4c -l -c1 stdin stdout && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
+	lz4 -l --best stdin stdout && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
 	(rm -f $@ ; false)
 
 %.lz4: %
-- 
2.46.1



