Delivery-date: Thu, 12 Mar 2026 12:01:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0dnf-00AnNW-0w
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 12:01:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0dnf-0000Qn-Kx
	for lore@pengutronix.de; Thu, 12 Mar 2026 12:01:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B1rYl1UUPMqyWZ/MW1UQFv/99NCqq0WjTPMMMHw/YNs=; b=N3UyoIctcoTWB/o8mE6fQ5NjPo
	QI1jkF80A8PeeS8lc860wKNV1YexsQQxWDSQhIUhGv3xehQAaIkpRgTGQjoHC10A9+ycYvYxYshr1
	IHuXrvWNkRmLnRG1+8jGHw+PRWlyn4eJKAaH3Z2PInv561Q9DtaDhCMqlXu3Sxegp7g7roNlu5cm1
	laUSc7UXFF6PA6/7E0dIsT6ocGapKNqxaf4FhrB5qbepJJKm9Yc1U8rhRHrU/fDpRvUiELuOpLNtk
	qLTOc+utz3sHsQGW/S3JAzCfBY1P3GOaaygRJ/L7zF4s+mIeVpuJDG6qsjZ4/2aP6vYY30WSsQPAj
	kuu1+y4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0dn1-0000000Du8R-0noo;
	Thu, 12 Mar 2026 11:01:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0dmz-0000000Du7s-0Xpz
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 11:01:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w0dmu-0008Pd-Uc; Thu, 12 Mar 2026 12:01:08 +0100
Message-ID: <b0b8430a-43e4-44d4-86c0-acc0e53a3897@pengutronix.de>
Date: Thu, 12 Mar 2026 12:01:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260312101139.4129705-1-s.hauer@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20260312101139.4129705-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_040113_170160_B7A62340 
X-CRM114-Status: UNSURE (   4.41  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bareboxtlv-generator: make compatible to python < 3.12
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-03-12 11:11, Sascha Hauer wrote:
> Older python versions < 3.12 do not allow nested " in f-strings. Use '
> instead.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Jonas Rebmann <jre@pengutronix.de>


