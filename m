Delivery-date: Fri, 01 Mar 2024 10:26:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfz9i-001QvU-2s
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 10:26:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfz9i-0000BU-BB
	for lore@pengutronix.de; Fri, 01 Mar 2024 10:26:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n5clCm+6cG6Ry6XuMIr4gcHbKW1fpKUIYc4HIvZrqqA=; b=zsuYn3GgOvTgFB4ZztTgQ3GvCE
	Ke1XWfR2wbkXvQ9rMHYNJYLRYdjDA/FD7FEWdNlNmNlY9tubEpBd5Moc2E70DmJzadNpYNY+S2B0X
	522jbcrSyAdAHQdG0KbVkASjR0to59eqanU7SIl5b1H3hGMO7SIbr/SuKXZnCFuNBJnhJtrt9R6QW
	wrIWIkBWHGe0iJIs79H6wnX916QlK+wrmxwa+UqLvsgCv/lvZzPq47cEr6JWUH7DwnZk391+Z3dIv
	xkaqW/M2lRlO6p3tIGh5l+R/+kBevfXe2nWilOqeT+jvYhHinleka1Z4ZPwZI0qAgeiBPOoqWqggu
	WhoGhKvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfz9F-0000000H9U3-3SbN;
	Fri, 01 Mar 2024 09:25:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfz9C-0000000H9T9-1vNA
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 09:25:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfz9B-000056-6V; Fri, 01 Mar 2024 10:25:41 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfz9A-003kjL-J0; Fri, 01 Mar 2024 10:25:40 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfz9A-00A6fx-1h;
	Fri, 01 Mar 2024 10:25:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Thaison Phan <tsphan42@gmail.com>
In-Reply-To: <CAFPn3sTc_3q04koG_oPnqTmhGnejxtiva+B5KwYsCdC3czCmKw@mail.gmail.com>
References: <CAFPn3sTc_3q04koG_oPnqTmhGnejxtiva+B5KwYsCdC3czCmKw@mail.gmail.com>
Message-Id: <170928514052.2408914.7181056061112959949.b4-ty@pengutronix.de>
Date: Fri, 01 Mar 2024 10:25:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_012542_548203_74D61170 
X-CRM114-Status: GOOD (  13.03  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Patch to fix bootm barebox load address alignment to
 acomodate ADRP instruction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 Feb 2024 21:37:47 -0500, Thaison Phan wrote:
> The aarch64 bootm image handler for barebox can choose a load address
> that is not 4KB aligned. This can result in unexpected behavior with
> the ADRP instruction that is available in 64 bit ARM architectures.
> ADRP forms a PC-relative address to a 4KB page where the bottom 12
> bits of the current PC will be masked out. When the load address of
> the barebox image is not 4KB aligned ADRP can end up forming an
> address that starts from an invalid page of memory or the wrong page
> of memory that was expected to be formed. The following patch aligns
> the load address for the next barebox image to be 4KB aligned to
> accommodate the ADRP instruction.
> 
> [...]

Applied, thanks!

[1/1] Patch to fix bootm barebox load address alignment to acomodate ADRP instruction
      https://git.pengutronix.de/cgit/barebox/commit/?id=af694bdae717 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



