Delivery-date: Fri, 16 Jan 2026 16:26:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgliS-0020Qa-0G
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 16:26:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgliR-0007PP-4i
	for lore@pengutronix.de; Fri, 16 Jan 2026 16:26:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KWAr5l0G59W3T7ffKSx2ZngEwAJSrNrOBv2Rlq2Fdyw=; b=cSkMD6a/NuY0TNwCT/4NVFi+3J
	ZNamcYBGNgqJp3oTuNyFHIcChWP+gs18GZ/DqIA/TzN8d79Pbpn3zLBpeeumtCEEMI+Y5MBCvvKm4
	+I5RNO7lbV75V0TcA+fUWXVgd6tzq6ALtmUKcPHWLa/s82FXrrKbtSPqZLaN7CvxN+UO6/K8McQCz
	qsX9/LYXTTlTNKJI3Ap5WlQBNx2CqVv8LCS1StfO5IIvJ95G10/mxngLPl6yNzu3S8m7UR/NbfqfK
	Qwa3Qh3uUv0tsuzYIoPqiz3rO/tHxnzijPea/9QCC9Lgf6kfbr9sxvNuM58JiZl02p/7kvcWVbSXt
	Q4vKIg+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vglhy-0000000EMOk-1VP8;
	Fri, 16 Jan 2026 15:25:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vglhs-0000000EMMt-3OQ0
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 15:25:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vglho-0007Fv-Jt; Fri, 16 Jan 2026 16:25:44 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vglhp-000wZl-0J;
	Fri, 16 Jan 2026 16:25:44 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vglho-00FWo9-0y;
	Fri, 16 Jan 2026 16:25:44 +0100
Date: Fri, 16 Jan 2026 16:25:44 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Holger Assmann <h.assmann@pengutronix.de>,
	Fabian Pflug <f.pflug@pengutronix.de>
Message-ID: <20260116152544.fpbwx7edrelvypfn@pengutronix.de>
References: <20260116134948.3931720-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116134948.3931720-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_072549_330901_8B58443D 
X-CRM114-Status: UNSURE (   6.62  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8M: atf: add debug messages just before TF-A
 jump
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-01-16, Ahmad Fatoum wrote:
> The handoff to TF-A has been a frequent source of hangs during board
> bringup in the past for various reasons.
> Add a debug print just before branching to TF-A and add a comment
> explaining some possible issues to aid with future debugging.
> 
> Cc: Holger Assmann <h.assmann@pengutronix.de>
> Cc: Fabian Pflug <f.pflug@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


