Delivery-date: Wed, 15 Apr 2026 08:13:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtV0-00CJq9-2u
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 08:13:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtV0-0002VD-BL
	for lore@pengutronix.de; Wed, 15 Apr 2026 08:13:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tHr2cg+ScKqxKVUlsuVwLiwoKKkSOz+RPFoT1UAkWlo=; b=VFfKjoJTNMK6SL1yeIdyLuQcB3
	pdiD+u7JD1ZmAv43fe4blthnNw2DSDcXv+tqkCDL4yHrmfgsIgGru5rZ6AG8tSKgpqVA65bAQu1vi
	9GomjuCeQ2HQfUAzHDdIMjzN4zC0k9PDPdCIar2+7N6dWpTewzufwozEAoHO37ohccmbBeJnZ4BKP
	OdiHvTaMfwgShQ1oWCtk0IDrFB/tdtmEIwmQoNLvKl1nWNph7MFn+Gq+boR9M9kDoHMNLkz9rVwXf
	+Y/neUxpamP1iPYXlg0meLNOCI3I/Qkkj6JbX8hoCzMiJOuycAkPbz5sM71Dx0NNgqOE5wYzp2nDx
	Kv/1HuWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtUQ-00000000dO0-3JpB;
	Wed, 15 Apr 2026 06:12:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtUN-00000000dNb-1lEt
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 06:12:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wCtUJ-0002Lj-JG; Wed, 15 Apr 2026 08:12:35 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wCtUJ-005SqU-1I;
	Wed, 15 Apr 2026 08:12:35 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wCtUJ-0000000BTv7-1ETn;
	Wed, 15 Apr 2026 08:12:35 +0200
Date: Wed, 15 Apr 2026 08:12:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <ad8sU26WfEooMBj7@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
 <20260409-socfpga-iossm-v1-v2-8-09effab91bc1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260409-socfpga-iossm-v1-v2-8-09effab91bc1@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_231239_483310_85625C6A 
X-CRM114-Status: GOOD (  15.14  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 08/10] arm: socfgpa: iossm: extract initialization of
 one interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Michael,

This patch causes imtermediate compile breakage.

On Thu, Apr 09, 2026 at 03:52:48PM +0200, Michael Tretter wrote:
> +	pr_debug("%s: Start memory initialization BIST on full memory address",
> +		 __func__);
> +	mem_exp = 0x40;
> +
> +	ret = io96b_mb_req(io96b_csr_addr,
> +			   mb_ctrl->ip_type[interface],
> +			   mb_ctrl->ip_instance_id[interface],
> +			   CMD_TRIG_CONTROLLER_OP, BIST_MEM_INIT_START,
> +			   FIELD_PREP(GENMASK(5, 0), mem_exp),

0x40 doesn't fit into GENMASK(5, 0).

This is detected here because 0x40 is a constant. In a following patch
you add some equations to mem_exp, so it's no longer constant for the
compiler and it compiles fine. Nevertheless the 0x40 is still present
with this series applied and either that or the mask seem wrong. Can
you have a look?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


