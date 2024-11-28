Delivery-date: Thu, 28 Nov 2024 11:02:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGbM3-001PFq-2x
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 11:02:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGbM3-0004IN-TL
	for lore@pengutronix.de; Thu, 28 Nov 2024 11:02:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SmA8vHBndr0m56PGsC3xnsRL45n3wim1oyPmSeACL5U=; b=1aRqFFZlGxguTmvrIPTJYOkU+M
	7C8zrzDP8KUmQ4ITYV2QYJAy73RBY3dYRGRKXkjN8UCeMqhg+t0IKVFhslOjLwGCbVp3DI5gpBDU6
	jvC6bc6rBNXXzSJDtZ6c93mlAtMMcOlPfNhu0CuWf8uVlk7RED2Wo7aWklpKOJCdbiqiTfuDzuH/j
	M9LS1clsbTVbXJbINmG20mygd2Cw86iJp2wNZGQnHfwRSpssyrdRqeSXnU+y7x7hvo3JpBDtBeV2G
	d05MHmR4FqTCr/o8Q4wKwv0HSccNJ+U9PfLuIqauHCc5M/u5u6mpw3OOSPaE+XNL8Powq2iDDc7FZ
	9orayYCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGbLb-0000000FD9t-0dAZ;
	Thu, 28 Nov 2024 10:02:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGbLZ-0000000FD9X-1MfD
	for barebox@bombadil.infradead.org;
	Thu, 28 Nov 2024 10:02:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=SmA8vHBndr0m56PGsC3xnsRL45n3wim1oyPmSeACL5U=; b=MyVZPc5MaegDvanmwv/WIeGp75
	gjzjORj0QQ8rnvycJibYfmDoBZRhi/2TT3r5v+aB5NgLtKJhmcby5AaIHYqZCvwO6wHu6wAs52qWC
	aM7+EJr0Op26vn9Ooo4MmfJOH43gLnCnke7TB+hfH6OiRB4+gRN2JOhya5Ly9ler0Kaa4Fhfvn7Q9
	hTFGhpJKUEnVTCA7KeoW0MM+2l8ZGjaopZO75HQJ1Zid02dXgV42r0oWfoFZ3ftdHYlD36SrNRsyW
	fqh3YAnZwS/iP3CGDYgEIx4+MAxSHalkpxbPVsCSRhEsUAByYJ3xsGhsnnq80jecY82QhF+GuQ6HV
	ObJWsCEw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGbLW-00000001aHt-14oq
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 10:02:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGbLV-00049U-EL; Thu, 28 Nov 2024 11:02:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGbLU-000aih-1W;
	Thu, 28 Nov 2024 11:02:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGbLV-00Fwed-0a;
	Thu, 28 Nov 2024 11:02:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241125150838.96931-1-a.fatoum@pengutronix.de>
References: <20241125150838.96931-1-a.fatoum@pengutronix.de>
Message-Id: <173278812117.3800302.13919478018407693781.b4-ty@pengutronix.de>
Date: Thu, 28 Nov 2024 11:02:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_100202_455330_1DAF73AE 
X-CRM114-Status: UNSURE (   7.32  )
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
Subject: Re: [PATCH] kbuild: don't allow GCC data store races
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Nov 2024 16:08:38 +0100, Ahmad Fatoum wrote:
> This is a port of kernel commit 69102311a57d1f ("./Makefile: tell gcc
> optimizer to never introduce new data races"), which does what it says
> on the tin: prevent gcc from replacing conditional loads with a
> non-conditional one as this could lead to issues around memory remapping
> functions.
> 
> 
> [...]

Applied, thanks!

[1/1] kbuild: don't allow GCC data store races
      https://git.pengutronix.de/cgit/barebox/commit/?id=8170af4789c7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



