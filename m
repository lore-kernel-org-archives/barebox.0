Delivery-date: Wed, 27 Aug 2025 17:49:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urIPD-00587R-2I
	for lore@lore.pengutronix.de;
	Wed, 27 Aug 2025 17:49:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urIPC-0002m0-HM
	for lore@pengutronix.de; Wed, 27 Aug 2025 17:49:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YLKRqqpjBeWn+9tJGnAwiXynxj3FxpaSjyxNzLij+dU=; b=CDZgXosW+2H9RYuNB/0Em7Sgcx
	SiDbfxCZ3iQ4ai4WNPJ/fhGjaT6wKpcbPnoEwMV5eo9nMjT7vo43yhPaMs6YghsFlTxEKEt3LwBDp
	mJrRR7AT0rjXgA6ZRxfsnEgykg442uUAWDC5xFTMgnBM1lYNlmonIj2fVjhIjR8GBhqyHTlgHJb4Z
	MKq7yRsyP/AXG944SLV5RJkQUXyUGoH9ZcFH3/YY4sbH9TYdQIBtDZVPg3VG+G8jqpVPWxBNfyKz6
	T7xfoIlhio8cIR702s+annuZEhG4YRUHh3tArvbqDP6kDDlypN8+IZTs/qzEwmv3TLHyRr55JIwkY
	FFp0EVoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urIOQ-0000000Fxz4-0Vdr;
	Wed, 27 Aug 2025 15:48:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urE5B-0000000FDtd-0mAR
	for barebox@lists.infradead.org;
	Wed, 27 Aug 2025 11:12:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urE59-0003K5-VS; Wed, 27 Aug 2025 13:12:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urE59-002Nsu-24;
	Wed, 27 Aug 2025 13:12:47 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urE59-0000000GYOF-2TKX;
	Wed, 27 Aug 2025 13:12:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20250822192014.209689-1-chalianis1@gmail.com>
References: <20250822192014.209689-1-chalianis1@gmail.com>
Message-Id: <175629316758.3945330.11278811882382261565.b4-ty@pengutronix.de>
Date: Wed, 27 Aug 2025 13:12:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_041249_228619_D2E6B469 
X-CRM114-Status: UNSURE (   6.58  )
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
Subject: Re: [PATCH] efi: devicepath: add support for mbr partition.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 22 Aug 2025 15:20:14 -0400, chalianis1@gmail.com wrote:
> Add support for mbr partition for loading barebox from usb key
> or even from qemu fat partition as an efi payload.
> 
> 

Applied, thanks!

[1/1] efi: devicepath: add support for mbr partition.
      https://git.pengutronix.de/cgit/barebox/commit/?id=b8428217d22e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



