Delivery-date: Wed, 02 Jul 2025 08:14:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWqja-00DD6A-1f
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 08:14:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWqja-0005Dn-1X
	for lore@pengutronix.de; Wed, 02 Jul 2025 08:14:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dAouCt3X+DqHDLD/cME3ZaJBnMKat88r+7aYJ3mBFho=; b=i8/bErB6clsm1hv1Vcm/LESMKF
	4dYsadGEUASvhfLuS++QdWhHR+aS0oJiN4mD+uZTJwerCGjpl+D/hE2EOhjVlwR3PeYManxMycHNa
	2jtiaiO+RSY8aC6frAYslE+5GlvqNAb8gLytJezQ6N7EKWW+cuad6anBh5FmEpnpRvVUnS3znjuYu
	2odYesWSIdtc7CDX7ILLlV5e6OWgpNKOX/dDhtItlDW9FtEibOBwPsRoIsN/wEGavXy7n7dIpJ3dy
	8OJ7DkOUiCeQNFOQH8HVqmRlJhUoglWQVeBHqsZGD3GFnj/TR4aquTKaPlzrPxKEOHY1MvEDGKO/y
	03ke9M+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWqjC-00000007NUc-0eUX;
	Wed, 02 Jul 2025 06:13:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWqj9-00000007NTn-1NI8
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 06:13:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqj8-0004qn-6G; Wed, 02 Jul 2025 08:13:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqj8-006OJV-00;
	Wed, 02 Jul 2025 08:13:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqj7-00Fzgd-32;
	Wed, 02 Jul 2025 08:13:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250630064235.2625712-1-s.hauer@pengutronix.de>
References: <20250630064235.2625712-1-s.hauer@pengutronix.de>
Message-Id: <175143682993.3812036.17347175303898246776.b4-ty@pengutronix.de>
Date: Wed, 02 Jul 2025 08:13:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_231351_373514_D0F86E2C 
X-CRM114-Status: UNSURE (   7.19  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: lib64: remove unused section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 30 Jun 2025 08:42:35 +0200, Sascha Hauer wrote:
> The ARM64 linker script has a section for the exceptions. This is unused
> and can be removed.
> 
> 

Applied, thanks!

[1/1] ARM: lib64: remove unused section
      https://git.pengutronix.de/cgit/barebox/commit/?id=46f528b9cf6b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



