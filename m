Delivery-date: Fri, 13 Mar 2026 12:12:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w10Rk-000Ado-1l
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 12:12:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w10Rk-0004hO-1W
	for lore@pengutronix.de; Fri, 13 Mar 2026 12:12:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9Z1LshkXao97IN26q1n8eD62XXGl40mc4jYc7aNDVZs=; b=1mnADTjioBqz58nzhtCmxu9yW8
	SmtpZPQAqCx8ldBiYIuCwpk3I5XLHGgm2sRHFVwvYaInQ8hpOvgCsOSkDVsAuYOS3Ai70QHzBFXad
	J0CvQflrB+iLjHTgaiaw3L+3TWTiV1zYXACCVKJ4/H95RqVzy3Isb/9wXiucCPlm71QeNwI/C/Fx3
	vaDmEUgiroq8jY9CQkrqdeinuYrvMdj9nFUqvYjZ3SYFWobXSSTdR28wwSKkOvuO4aEUxjAVfcmV1
	b6AtblL3dLmTHagK5miw1Uw4OVjWjv9chGFkQbZJ0r4gvsxahqWz/J2gj5WLKHviwpv07cKt48CrD
	scUNgueg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w10RD-0000000Haad-3ahd;
	Fri, 13 Mar 2026 11:12:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w10RB-0000000HaaA-1xmc
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 11:12:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w10R9-0004YY-KF; Fri, 13 Mar 2026 12:12:11 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w10R8-0004RL-2Q;
	Fri, 13 Mar 2026 12:12:10 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w10R8-00000000rep-2vD5;
	Fri, 13 Mar 2026 12:12:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Hemanth Kumar M D <Hemanth.KumarMD@windriver.com>
In-Reply-To: <20260313102922.1820245-1-a.fatoum@pengutronix.de>
References: <20260313102922.1820245-1-a.fatoum@pengutronix.de>
Message-Id: <177340033069.206252.6842304138227246713.b4-ty@pengutronix.de>
Date: Fri, 13 Mar 2026 12:12:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_041213_512111_4B8683EF 
X-CRM114-Status: UNSURE (   5.53  )
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
Subject: Re: [PATCH master] scripts: fix build failure with glibc 2.43
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 13 Mar 2026 11:29:00 +0100, Ahmad Fatoum wrote:
> glibc 2.43 introduces linux/openat2.h through the fcntl include chain
> (bits/fcntl-linux.h -> linux/openat2.h). This header expects the
> __u64 type to be defined before inclusion.
> 
> In barebox scripts/include/linux/types.h the header <fcntl.h> was
> included before the __u64 typedef, causing build failures such as:
> 
> [...]

Applied, thanks!

[1/1] scripts: fix build failure with glibc 2.43
      https://git.pengutronix.de/cgit/barebox/commit/?id=05af23be1fb9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



