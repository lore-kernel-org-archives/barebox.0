Delivery-date: Mon, 17 Feb 2025 13:30:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0GF-003Tpg-0Z
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 13:30:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0GD-0000F4-RJ
	for lore@pengutronix.de; Mon, 17 Feb 2025 13:30:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cPFXc8L9ZK7byjeegav7lS+CTu9GDMpB3oEWxAvbiiI=; b=fZXAl20xbhOsFWXVWFUpQKEDuc
	6nSrW8jbPyIpyaRG5wpASsitYFIddvh09w15eoQF60j66BHygjdb6a/kgE0hBbB/IHxe/uxibG44G
	yfNNPBj95VO4PNhhu+BnKP6+C3RyXyFvZ/YRR1kDOT48AP0ln2Fg3AOC12eEx9oNvCFbUDZ3Kt6H9
	Gr9/YK2KosuQHOz6bUrXvruwVUG8u2Q4qiqceANAefvK9hiqhddhcKaANoWvL1amAkRlspwd3ZRRP
	xQ6blukWNPbHwx8Wirj6W3sXbjXpD2OIUltuVL4BHxKTKAYCFtoFOXQISKTFFu+Tlvh5z23O0Gt77
	O2c7voqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk0Fx-00000004SFi-3FZh;
	Mon, 17 Feb 2025 12:29:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjynr-00000004E7Y-3dvf
	for barebox@bombadil.infradead.org;
	Mon, 17 Feb 2025 10:56:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=cPFXc8L9ZK7byjeegav7lS+CTu9GDMpB3oEWxAvbiiI=; b=d4kpauYh0ONKa+lT/VdbqnkG58
	sxBvTm2Y2vgFXogGZHBHrDf+/95+KQTCS5VME2FuX+DtzA4oIR74upAUYb5J8acT2+LwgIC+sMw/h
	aXlFQB1bjRkwqXJkt9WdnR2GD8zbcWJ8e4AewLk2xaM7UaTivVO3TcR3H3YN4+Coci4AqKtpvREIC
	6uyZpjNAF8XHL5/TPMwRJcjfK0B8O7Jo2rD8qqXThK1F5CZtX8z2mFpCcsWIzR3aECBaZewfo6QuW
	LhL6BIZIS+bvzxSepS6aTY6SrpJOKH1UkWeB9zDlIJItnaCCM+MIwAZN1Q4deExNUjPtwwPub7lxA
	9XY52hgw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjyno-00000001mYg-2bWK
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 10:56:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjyno-0000fp-1o; Mon, 17 Feb 2025 11:56:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjynn-001OPt-2n;
	Mon, 17 Feb 2025 11:56:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjynn-006MwM-2b;
	Mon, 17 Feb 2025 11:56:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250217100213.1637911-1-a.fatoum@pengutronix.de>
References: <20250217100213.1637911-1-a.fatoum@pengutronix.de>
Message-Id: <173978979980.1518006.3734495929155437641.b4-ty@pengutronix.de>
Date: Mon, 17 Feb 2025 11:56:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_105640_892851_80740783 
X-CRM114-Status: UNSURE (   7.99  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kbuild: export HOSTPKG_CONFIG like Linux does
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Feb 2025 11:02:13 +0100, Ahmad Fatoum wrote:
> Since Linux commit d5ea4fece450 ("kbuild: Allow kernel installation packaging
> to override pkg-config"), Linux supports overriding the pkg-config
> executable via the HOSTPKG_CONFIG variable.
> 
> barebox already had that support, but with a differently named PKG_CONFIG
> variable. For compatibility with build systems assuming Linux Kbuild and
> to allow easier sharing of code (e.g. scripts/kconfig), define
> HOSTPKG_CONFIG for barebox as well.
> 
> [...]

Applied, thanks!

[1/1] kbuild: export HOSTPKG_CONFIG like Linux does
      https://git.pengutronix.de/cgit/barebox/commit/?id=4e48ddac370c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



