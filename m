Delivery-date: Thu, 14 Aug 2025 16:10:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYej-000Wpv-2m
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 16:10:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYei-0000OI-Ou
	for lore@pengutronix.de; Thu, 14 Aug 2025 16:10:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e8CBBOklMCW4eAM2HkbhNi6g+qDuUE4d/bFvUwxRd9E=; b=mm8bqmAvttQWXaZYlKblQ0RVqv
	r9Chwu1x5Q4Kby/eIJDrnaHjp4KukeWwdWVb5Gf/x9j+vVPr8bpGuX3bnCL9hremz1rADOF6o5C/1
	Ol1seST+hhfIC3kwj+Qn3skwMc3o/KwpbxOdMFhYLozDOmrooVXzBd6xquajuTRw+tO/4iY6fBBac
	CUUkQGKdcA063XER+4F+dYPY159pkSEQTQluJVPy/okTmFl2XCV9IZ6glwhG5oV1XfX3LObOpcfUb
	s6YkXP2qPdbyDh1DDiD7gVjHWyKkWspeelIraZ+Aqm+9XPmv6z5fWsAXI9cP6HV1Bh0Gr8cVaw9fQ
	ftE72wsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYeG-0000000HAoF-20ic;
	Thu, 14 Aug 2025 14:09:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXtI-0000000H23K-2ckh
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:21:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umXtG-0000OR-Tr; Thu, 14 Aug 2025 15:21:10 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umXtG-000GIV-2O;
	Thu, 14 Aug 2025 15:21:10 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umXtG-00Ex9X-28;
	Thu, 14 Aug 2025 15:21:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250814105148.3725922-1-a.fatoum@pengutronix.de>
References: <20250814105148.3725922-1-a.fatoum@pengutronix.de>
Message-Id: <175517767065.3563946.15424125501366634845.b4-ty@pengutronix.de>
Date: Thu, 14 Aug 2025 15:21:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_062112_663791_727CF67A 
X-CRM114-Status: UNSURE (   5.52  )
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
Subject: Re: [PATCH] fixup! commands: introduce new security command group
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 14 Aug 2025 12:51:48 +0200, Ahmad Fatoum wrote:
> Documentation: commands: add security commands back to docs
> 
> Now that these commands are in a separate group, a warning alerts us to
> the fact that they are unreferenced in the documentation. Fix this.
> 
> 

Applied, thanks!

[1/1] fixup! commands: introduce new security command group
      https://git.pengutronix.de/cgit/barebox/commit/?id=d1467709f70c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



