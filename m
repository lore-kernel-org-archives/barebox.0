Delivery-date: Mon, 26 May 2025 19:30:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJbeS-000amJ-24
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 19:30:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJbeS-0001uv-5c
	for lore@pengutronix.de; Mon, 26 May 2025 19:30:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W4bpw0RLjLX+7kJgCRx8XgwQvRsDVm83PPuNUQqGpSQ=; b=TWqh6mYNhcTqoBzAWi2VEQSxpU
	psWzi3cEGVBpFV6PZhHth3a3Y22bo4/T30hhW/h/FdLCYMQWELxbqgl94TMDbuSNo2q2BzLhb9HMl
	Q2q4qPF/Z5Zdg7aG5jHhVaJ9TfMxzvaQV9BwpJE3UzvOvlUj+eIZGI/qfh7FRnCJBG59aG8vJH5hd
	DKGvJOxIys2ZvGLiB4L72AegYRaPASlKkCAGoSK0n55jSKsHNQn3px0flXESixm5+rIRvxl+XV6SI
	ijDSVxd4xMg7L/eZtiiYjhcHElHG9sMW9dQS5NsvyKYCPzPQ4JOdG7hLpyYKEqSkUh9RdCoKKK2rH
	eBjk/iRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJbe4-00000009JwP-04At;
	Mon, 26 May 2025 17:29:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJbe1-00000009Jw1-27to
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 17:29:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uJbe0-0001f6-Dt; Mon, 26 May 2025 19:29:48 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uJbe0-000Hkg-0m;
	Mon, 26 May 2025 19:29:48 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uJbe0-00AdhD-0U;
	Mon, 26 May 2025 19:29:48 +0200
Date: Mon, 26 May 2025 19:29:48 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250526172948.gjesa7pk5z2hizzp@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
 <20250526-rk3588-optee-v1-3-5004995cbd03@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250526-rk3588-optee-v1-3-5004995cbd03@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_102949_545503_28CA095B 
X-CRM114-Status: UNSURE (   6.41  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/9] lib: fdt: add fdt_addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-05-26, Michael Tretter wrote:
> fdt_addresses contains some helpers for handling addresses and sizes.
> Add it to the local libfdt.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


