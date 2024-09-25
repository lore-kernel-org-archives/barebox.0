Delivery-date: Wed, 25 Sep 2024 18:09:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stUaB-002ezX-0o
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 18:09:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stUaB-0007v8-PA
	for lore@pengutronix.de; Wed, 25 Sep 2024 18:09:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=36ZO10K1+WmGZ9NFH9uqHHuSoQH6J28eYnGj6mLxUBM=; b=G2s9nn4MC+Nbf1PIavLoYVtISm
	fAcvteALsmYfqEsD1vC+yWgQh8B+pADN0A10GNmrRvdSpXd5J8VnWdZLaR2AZhp+RAPOBH50ynxTn
	jLN3qhvoLVQ4TRXVz5awj/KYNfnU2aFsQUTw8eOl1Yy6jZQf9jV0M3RMH16VTfi0p55Wgr9476euD
	y5epgL2OB9vAoM7vbHRcn1wITOCR/WDTmP2L1ntUx1W/ZrmqSA2koJR8nevF+UiKf4eta9wO5RtyH
	InPdbZS8fOWSCYRGYtjBsQ8ja29YdBgywbJctGoWRAJtFJ03YSC3w2kk9ERdawo9DX+pbLZ30aG6L
	B4BDsu/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stUZk-0000000604K-2LjD;
	Wed, 25 Sep 2024 16:09:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stUZh-0000000603y-1ZD8
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 16:09:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1stUZg-0007mH-16; Wed, 25 Sep 2024 18:09:08 +0200
Message-ID: <c66e8000-80c5-4aa4-94de-1113894f038f@pengutronix.de>
Date: Wed, 25 Sep 2024 18:09:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
 <20240925-arm-assembly-memmove-v1-7-0d92103658a0@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240925-arm-assembly-memmove-v1-7-0d92103658a0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_090909_445670_5281E767 
X-CRM114-Status: UNSURE (   8.50  )
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
Subject: Re: [PATCH 07/10] ARM: always assume the unified syntax for assembly
 code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 25.09.24 15:55, Sascha Hauer wrote:
> +# Accept old syntax despite ".syntax unified"
> +AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)

This is overwritten by a later AFLAGS_NOWARN in the same file for when we build for
CONFIG_THUMB2_BAREBOX. I suggest, we remove this line and see if we even have any
warnings.

With this addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


