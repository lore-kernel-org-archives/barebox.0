Delivery-date: Wed, 01 Nov 2023 10:12:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qy7Gc-00DRHp-LP
	for lore@lore.pengutronix.de; Wed, 01 Nov 2023 10:12:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qy7GX-0002Wf-Qw
	for lore@pengutronix.de; Wed, 01 Nov 2023 10:12:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cYdASACZ4D0pJSynNLWCg7bmRXmE30VkkgczC4Ok4k4=; b=xfXXsj0JDHioozVJpmax4gS7zK
	vAZsGbPIqn5SAM/Jj+vJh/n97mhduqehHN0R2ntyEc6rQk3qLwfT3G5s3sx3MLhLBA5Xg1wlh1CWl
	BavSiGfnJeE6G2vyncQp4WmH5EBeLDQQsqfnxo4ioz6tmtwYSX/47i+S0CIQT1CH7K5G6t7FBxen/
	BHaWLyCmi1zHRBClBGc2UWINHGYikpEc5uNM+A2oLdT6yr+DYwgvYRFyH9v8vOUWpTFDwz4ZBktXk
	mfg1Vi548BpnZDxnhxgJZvK5pqz69ApbDk0gsVwmpQO+os/bhJi7TMRsC4ZbVWnjbKNeUDzW3u5bs
	uZ/8dXBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qy7FA-006vpL-1I;
	Wed, 01 Nov 2023 09:10:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qy7F4-006voK-2b
	for barebox@lists.infradead.org;
	Wed, 01 Nov 2023 09:10:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qy7F3-0002KE-BB; Wed, 01 Nov 2023 10:10:25 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qy7F2-005lx5-V7; Wed, 01 Nov 2023 10:10:24 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qy7F2-00HPV8-Sn; Wed, 01 Nov 2023 10:10:24 +0100
Date: Wed, 1 Nov 2023 10:10:24 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231101091024.GG3359458@pengutronix.de>
References: <20231023143122.1760217-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023143122.1760217-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231101_021026_846704_06659AB7 
X-CRM114-Status: GOOD (  21.90  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/3] crypto: add JSON Web Token (JWT) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 23, 2023 at 04:31:20PM +0200, Ahmad Fatoum wrote:
> JSON Web Token is a proposed Internet standard for creating tokens with
> optional signature and/or optional encryption whose payload holds JSON that
> asserts some number of claims. The tokens are signed either using a private
> secret or a public/private key.
> 
> In the context of barebox, a JSON Web Token can be used as unlock token
> for a system: By default, the system would be locked and only boot
> signed payloads, but when a valid unlock token is provided, board code
> can selectively allow access to disallowed features, such as booting
> unsigned payloads or provide access to the console and shell.
> 
> This series adds first support for JSON Web Tokens on top of the already
> existing JSON support. RS256 is the only currently supported format, but
> more may be added in future. In lieu of upstreaming board code making
> use of this, a selftest is added that decodes a JSON Web token after
> verifying it and asserts that the claim contained inside are as expected.
> 
> Ahmad Fatoum (3):
>   lib: base64: add support for base64url
>   crypto: add JSON Web Token (JWT) support
>   test: self: add JSON Web Token tests
> 
>  crypto/Kconfig                   |   6 +
>  crypto/Makefile                  |   2 +
>  crypto/jwt.c                     | 241 +++++++++++++++++++++++++++++++
>  include/base64.h                 |   1 +
>  include/crypto/jwt.h             |  55 +++++++
>  lib/base64.c                     |  60 +++++++-
>  test/self/Kconfig                |   7 +
>  test/self/Makefile               |  11 +-
>  test/self/jwt.c                  | 157 ++++++++++++++++++++
>  test/self/jwt_test.pem           |  37 +++++
>  test/self/jwt_test.pem.c_shipped |  49 +++++++
>  11 files changed, 620 insertions(+), 6 deletions(-)
>  create mode 100644 crypto/jwt.c
>  create mode 100644 include/crypto/jwt.h
>  create mode 100644 test/self/jwt.c
>  create mode 100644 test/self/jwt_test.pem
>  create mode 100644 test/self/jwt_test.pem.c_shipped

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


