Delivery-date: Mon, 30 Jun 2025 11:00:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWAMr-00CZHt-0e
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 11:00:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWAMq-0004G5-MM
	for lore@pengutronix.de; Mon, 30 Jun 2025 11:00:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N+pK6U4XTmsnHihWw7JByW64LeK9yKfzCd70YRsYtWE=; b=QQhfSpUmEige8se65wglXZOh0g
	g6nr+c7iXh4+ahakGnIsvnrIenrTz5zX0zIj9p1nmkvzL8qy7PAlHoI2VaXe2FnJI9HoJ4d+eWZzM
	YmTLA0FIPTLkQWTbvnYchq7BsJHIMbmXL/MYTvyVsuQtGjXr/X6KEmpKkLeQVwtu0bD+h9uft9wLe
	+GoHiIZFtoQ6ufU4AL3MfgTIBJ8pJGsG148hkkKWcTCQ8oB328TMhpXgk8Xet3pTA2/5jkS3nfLHq
	IK3mkL3Xw+wwoVfORyAX+EQdZ+0r/Opb1S7Q7jZmRT/SBoPSEbGKCUYisaMEr/6fg117G5qMYiwJy
	8XTJacng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWAML-00000001gcn-2K4Z;
	Mon, 30 Jun 2025 08:59:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWAHR-00000001ff8-1PXi
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 08:54:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uWAHO-0007KO-Ld; Mon, 30 Jun 2025 10:54:22 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uWAHO-0064cf-1Z;
	Mon, 30 Jun 2025 10:54:22 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uWAHO-009d6N-1G;
	Mon, 30 Jun 2025 10:54:22 +0200
Date: Mon, 30 Jun 2025 10:54:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20250630085422.wh2wpcxzszg77lrf@pengutronix.de>
References: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
 <20250630-arm-optee-early-helper-v2-3-c8cce3ae42b0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250630-arm-optee-early-helper-v2-3-c8cce3ae42b0@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_015425_375150_342F06EC 
X-CRM114-Status: GOOD (  11.96  )
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
Subject: Re: [PATCH v2 03/14] ARM: add exception handling support for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-06-30, Sascha Hauer wrote:
> Exception handling in PBL can be very useful for debugging PBL code.
> This patch adds support for it.
> 
> This is currently only implemented for ARMv7 and ARMv8. Only on these
> architectures we can tell the CPU where the exception table is. On ARMv6
> and older we would have to copy the exception table either to 0x0 or
> 0xffff0000. Not all SoCs have writable memory at these locations, so we
> would have to utilize the MMU to map writable memory there. We are not
> there yet, so for now skip exception handling support on these older
> architectures.
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


