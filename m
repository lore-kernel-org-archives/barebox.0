Delivery-date: Fri, 13 Mar 2026 14:22:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12T9-000D52-1M
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:22:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12T8-0003by-1c
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:22:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VSX+f1P2ijU0I8oiBW/3sHG75cRh0LoJbSoYQxaaGzY=; b=sfTGuqRaYBuD1A4intr5JKufYv
	UclsYNxWhp+JK/DkEhREjPrH4bwgOcwszM4Jzo8u8vUqFQqYMWY2TbtnMLYvQakFKlmqCVdZ/LHG/
	utuDplbm9mGRYAieI7788JbHTzcHf8KPFQKFW+uJWorsOe941VoZj2o0O0+BeMeY5hHwzqwMctg40
	DDDycuqTcfXEOjbpvux7hMufa0kq2rZWm5KLFV6SkttV3nJEEPEg4ecMZhPM/Wr+lou7JYvbSzuMp
	Sf6gZSS5J0kkCKPLWp4R4dSAKRD+eaF66nltkk7x43r4vZ31KCLl8qgi0XpAAy4ImQOBN+fhtIISe
	3WYfUjiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12SR-00000000DJE-3ztH;
	Fri, 13 Mar 2026 13:21:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12SP-00000000DHf-0BvO
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:21:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w12SN-0003Jm-9u; Fri, 13 Mar 2026 14:21:35 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w12SN-0005R0-0O;
	Fri, 13 Mar 2026 14:21:35 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w12SN-00000000x1B-0FHa;
	Fri, 13 Mar 2026 14:21:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de
In-Reply-To: <20260311120137.400783-1-a.fatoum@pengutronix.de>
References: <20260311120137.400783-1-a.fatoum@pengutronix.de>
Message-Id: <177340809505.226854.16524765008266919243.b4-ty@pengutronix.de>
Date: Fri, 13 Mar 2026 14:21:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_062137_089169_EFD4E11E 
X-CRM114-Status: UNSURE (   5.06  )
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
Subject: Re: [PATCH master] security: hide PBL_OPTEE_DTB_MAX_SIZE behind
 PBL_OPTEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Mar 2026 13:01:34 +0100, Ahmad Fatoum wrote:
> There's no point in bothering users about this option if OP-TEE loading
> from PBL isn't even enabled.
> 
> 

Applied, thanks!

[1/1] security: hide PBL_OPTEE_DTB_MAX_SIZE behind PBL_OPTEE
      https://git.pengutronix.de/cgit/barebox/commit/?id=6b8a391412eb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



