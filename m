Delivery-date: Wed, 04 Mar 2026 08:39:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgpE-007uBs-2d
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 08:39:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgpF-0004bF-5v
	for lore@pengutronix.de; Wed, 04 Mar 2026 08:39:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5mz2e+OVvqRUrhfQBiyGDtikWFEkU6QnebKYhABBC5E=; b=QFcM3dKPCUs6uZCa+ePMe828v/
	zOqOCrZJaDEm4WtlBUivtITrt6RFxx7nUuKN4MNsdsXO4Io3i25x4UVYi7hyXIOn7MFBTcOHaTuE6
	Nk0mjVwHC87VsTwloedi82UfrxtAVfcoicejtvia0c6ZXaR4LfvNbbYTG8wuZffUUoMM078l4HAZH
	cko6/eASAJDy7ego5RuUah4pO/XHQR8bW0a+scXV0acHfXI78sY0MG7pIPjszRaV4+RoSxiirPC0C
	Azy/YXVJuYr5Gtt7MbM080KYIt024dMn1Z4krNo8ojEvChdA3dPS0O/rpju6PYHgFKE2AHysH0n5N
	n8GsBiVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgop-0000000GcuR-2rUd;
	Wed, 04 Mar 2026 07:38:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgop-0000000Gctw-0bX1
	for barebox@bombadil.infradead.org;
	Wed, 04 Mar 2026 07:38:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=5mz2e+OVvqRUrhfQBiyGDtikWFEkU6QnebKYhABBC5E=; b=SF9Vl9DW0rCZZjtfxlc3Aor3Eq
	6NrhlMhA+u660qYFH0YAmunph91Dpp4u1xX1NfuAgBQgEm11PVaVY0H6fe9ha3EnDMUioyITo/t1F
	M6rZ5WANBlFMpqZWCWYzChaahSkXytoS4NJe9FIdQrXPfbtgBVi8KEVfYuFR4OfQmJ0AJlRvWdNPZ
	XOkaiqFnJ7dfxpwK3DNkqRA+b0Rm3UwxYCWGL0BYFkE3iq/+gMXCKbjD8OiMpIagRTgwSvdOKC6nq
	DK6IF3zGXzqcTgu5l9sadGV+LuNriX0Np0x0XI8dNGdmTnH2bnOUDwiHCYLVimQf4llviy6KW9U0/
	3TET/ytw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgol-000000041Gm-3oPl
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 07:38:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgoj-0004PE-6J; Wed, 04 Mar 2026 08:38:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgoh-003g2T-25;
	Wed, 04 Mar 2026 08:38:49 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgoi-0000000GLCR-3u6Y;
	Wed, 04 Mar 2026 08:38:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Claude <noreply@anthropic.com>
In-Reply-To: <20260226-security-policies-not-so-much-compile-v2-0-b667deba06ff@pengutronix.de>
References: <20260226-security-policies-not-so-much-compile-v2-0-b667deba06ff@pengutronix.de>
Message-Id: <177260992892.3894558.11063449675600618610.b4-ty@pengutronix.de>
Date: Wed, 04 Mar 2026 08:38:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_073852_056505_1C66123A 
X-CRM114-Status: UNSURE (   7.71  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/2] Security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 26 Feb 2026 09:49:16 +0100, Sascha Hauer wrote:
> Two small patches for security policies. First one makes that we do not
> compile all the host tools in scripts/ to do a security_*config, second
> is for better integration into build systems
> 
> 

Applied, thanks!

[1/2] kbuild: make collect-policies lightweight with standalone Makefile.policy
      https://git.pengutronix.de/cgit/barebox/commit/?id=2d871c52ddc7 (link may not be stable)
[2/2] kbuild: policy: support out-of-tree builds for external policy files
      https://git.pengutronix.de/cgit/barebox/commit/?id=c6d2e69c3e5a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



