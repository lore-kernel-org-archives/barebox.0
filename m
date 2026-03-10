Delivery-date: Tue, 10 Mar 2026 11:24:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzuG5-00A40a-26
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 11:24:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzuG5-0008CI-Uz
	for lore@pengutronix.de; Tue, 10 Mar 2026 11:24:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m7IEen23/sZZ9L4QRUbm4aDWcK7eqSHdQ8fsEjX8dNY=; b=enWUyhkEr8S0r9o/dSgtFBvDXE
	AI1Nfw5wfpWw+MiHb+zkvJ1igPCHHH5TesDxhJbGrb/nrn0x1n1FMa2IGSGqyTwUX6QIOy04NReJ3
	F+tEgJGhkvz1VVA3lObMAFQhfhCF+szwhn1vAiAd95dK+h76NSBBG1lbiUcGzShoIWfv65IyxgGTg
	qn0RZu6whxa8+/gXzoIoUjTZ+Q4bxJlhlfO2k/LQhyTBZTnYFxijZc7EuYySKnK7QhM8hQHMuDa7s
	U16lEdNIjjC1qoqgTYTvVM6zZQQfu8A88dTafxGVr7TzvPGXbvlDuYMoKUgW3cXFZJW6Lq+uClpe6
	vHuDG3Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzuFg-00000009BXb-0X1S;
	Tue, 10 Mar 2026 10:23:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzuFf-00000009BXR-09yw
	for barebox@bombadil.infradead.org;
	Tue, 10 Mar 2026 10:23:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=m7IEen23/sZZ9L4QRUbm4aDWcK7eqSHdQ8fsEjX8dNY=; b=AeFxrLfyIS/bscMxWXRIHR0CU6
	lkmCJ6ql82jr298XtiolKHlLOO7UeQvK3eTGgvcshbaWDdfIfWCADB07OOIQ6EHv3smIO/BSMe44G
	BuBVxzH0GXwRnLBPFwKSmgHt1Q+6yn/u9cpGSdyJeTaG5ZyWYqVoa68sTLbYYjkNYF8yi5bWAAc7C
	yl8BkMsYrtNFfM3f8l3r87PHydHRZ2Ng13a2HowngGGSaEKSD1tXN//yn+WVBoZoRKgl5chgEoD23
	0auisYUzBz+8iwHOqxVrw72XWa7Swf5G6ssxV+YjN370umcmzx72YpKMSWtL/XL/zXRToy5ForzJV
	qRQ9+OhA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzuFZ-0000000EEws-0EgU
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 10:23:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzuFY-00086J-D6; Tue, 10 Mar 2026 11:23:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzuFW-004gHC-2n;
	Tue, 10 Mar 2026 11:23:40 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzuFY-00000004MHq-0ZYg;
	Tue, 10 Mar 2026 11:23:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260215165451.2634532-1-a.fatoum@pengutronix.de>
References: <20260215165451.2634532-1-a.fatoum@pengutronix.de>
Message-Id: <177313822013.1038811.3836992247086030324.b4-ty@pengutronix.de>
Date: Tue, 10 Mar 2026 11:23:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_102343_648341_95F736DD 
X-CRM114-Status: UNSURE (   7.58  )
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
Subject: Re: [PATCH v2] ARM: add RELR relocation packing support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 15 Feb 2026 17:53:59 +0100, Ahmad Fatoum wrote:
> RELR is a compact format for storing relative relocations that
> significantly reduces binary size. Add both the Kbuild/Kconfig
> infrastructure and runtime relocation applying code for ARM32
> and ARM64.
> 
> RELR entries use a compressed encoding: address entries (even LSB)
> encode one relocation and bitmap entries (odd LSB) encode up to
> 63 (64-bit) or 31 (32-bit) subsequent relocations each.
> 
> [...]

Applied, thanks!

[1/1] ARM: add RELR relocation packing support
      https://git.pengutronix.de/cgit/barebox/commit/?id=43805e60fe38 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



