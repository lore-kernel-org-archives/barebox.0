Delivery-date: Wed, 02 Jul 2025 09:21:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWrmV-00DE39-0u
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 09:21:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWrmU-0002uO-Nk
	for lore@pengutronix.de; Wed, 02 Jul 2025 09:21:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TVFEHTQnpIvsK2sEjByGzppvPtEw+ioNVImVpO0PLl8=; b=B5Ct6u0FywLAXxBkzcTu+gpiRp
	G5/yJT36HValxcuKJmW6xqycQYdfnv4d34kLyc7+HbfTvkoBwGTQq+rUlPYjjmV+CrlrbUHjIxm2x
	AIiUUcz95+UkhWzcoFciP4r70YqrPDZU3LeFWug1onmjSNrp2xJruMLUcR6LEM2hlZdg6GPkoOvf8
	rbC0kQ9Em8gWKI8vObiut0hkw+26szhoq6G/DqeaX6nCNbgamP+JUoVJT19UOyccsc8qZGG5hEFvv
	R+Vp6bj/TsZ2KrSbIgC7WNauXszBHj4UslvJywxDOH4u0NA3Ydi5bMRErOgSOGm3qtTUQGJAPDfpG
	hTIjB6Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWrmI-00000007UAv-0q1b;
	Wed, 02 Jul 2025 07:21:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWqkl-00000007NkB-0fGD
	for barebox@bombadil.infradead.org;
	Wed, 02 Jul 2025 06:15:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=TVFEHTQnpIvsK2sEjByGzppvPtEw+ioNVImVpO0PLl8=; b=d0GxEGQaLNfexZBeAhEi4Iqfo0
	jPbE6O1fVCPdwrecso1Zb5OwM5RXJuiEatjmdgVst7rX4aHBMzZi6qg0g47EYvtzVFMQsaPSa3FQo
	9L1n4bebMWbU04/jxalGhM1snFJ6xeOzyzN2ArAgGECFXIc/OQaBUFKMjQnn50m7nv+hrADSrQiw/
	6UJT/ME6/6xNlZbIZSnRNYzlVOzVpZljRCv+5fGLVSoew25GeR8baL0vFtbw9zCLhaz2Zik21Tmkn
	RbGB3q+9zBfm3yTIRgzMwJ3k8RMSBqc57aCZVcJROHmbQWw9V/DjHK4QTxrWD8XbrZ08ULh8J16eE
	L44px73A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWqkh-00000007GuA-1EmQ
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 06:15:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqkg-00065e-Vz; Wed, 02 Jul 2025 08:15:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqkg-006OJk-1r;
	Wed, 02 Jul 2025 08:15:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqkg-00FznX-1f;
	Wed, 02 Jul 2025 08:15:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bo Sun <bo@mboxify.com>
In-Reply-To: <20250701123413.1755385-1-bo@mboxify.com>
References: <20250701123413.1755385-1-bo@mboxify.com>
Message-Id: <175143692651.3812450.3639487727729785623.b4-ty@pengutronix.de>
Date: Wed, 02 Jul 2025 08:15:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_071527_550435_47F1EB0B 
X-CRM114-Status: UNSURE (   7.50  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] barebox.h: correct barebox_main default comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Jul 2025 20:34:13 +0800, Bo Sun wrote:
> The comment incorrectly states that barebox_main defaults to
> run_shell() when a shell is enabled. In fact, it defaults to
> run_init() when both shell and command support are enabled.
> Update the comment to match the actual logic.
> 
> 

Applied, thanks!

[1/1] barebox.h: correct barebox_main default comment
      https://git.pengutronix.de/cgit/barebox/commit/?id=6a7348f3f1f6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



