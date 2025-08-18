Delivery-date: Mon, 18 Aug 2025 15:43:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo09Q-001twY-2M
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 15:43:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo09P-0003Jp-J2
	for lore@pengutronix.de; Mon, 18 Aug 2025 15:43:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xlPGmR/iyps0k49FDRtATYkuN0hEtCc7LoRA86aTE9A=; b=Rz6BfRJx7O7VKn7jE2UVPYdYR+
	wy71ZqJOhJiFAem2tGNmtC0F/qnYPWsVUV3zwO+qJo4hfvVlHZZQ1ghVym8byoHMWTBbSQZI3M35c
	sPZijIMasqei1s/2ngCjl6hMx20vEEcIpLIKn+j5ohys02nFLkdiX0v2Z4xBcln41Trq5Xpwk5QlD
	YoJ9jeIHUUPe4L9Xq42rbSbeE/D0Q3l3jViDJXjSIySq9BtK24rkY9dGLFFC+HcGSXnuC0tXq2bQ0
	+A/PRFIsbimEIvJEWDWOeXy9txqjJenukZTwcvv4h0LJCx6SVgugqi/wR8Ie3g4i98ja/96HEik+I
	1mrypKbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo08v-00000007dVw-40IS;
	Mon, 18 Aug 2025 13:43:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unz8h-00000007LrX-0kVR
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 12:39:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1unz8d-0000Uw-P5
	for barebox@lists.infradead.org; Mon, 18 Aug 2025 14:38:59 +0200
Message-ID: <6398f293-ec46-446f-b686-03156e4788e4@pengutronix.de>
Date: Mon, 18 Aug 2025 14:38:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: BAREBOX <barebox@lists.infradead.org>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
 <20250814130702.4039241-8-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250814130702.4039241-8-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_053903_219562_23FCBC3B 
X-CRM114-Status: GOOD (  11.78  )
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
Subject: Re: [PATCH RFC 07/17] security: policy: support externally provided
 configs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 8/14/25 15:06, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <a.fatoum@barebox.org>
> +	help
> +	  Space separated list of security policies that should be
> +	  compiled into barebox and registered. This option currently
> +	  requires security policies to have the .sconfig extension
> +	  and be located in the barebox source tree's security/
> +	  directory.
> +	  If left empty, only security policies explicitly provided
> +	  and registered by board code will be available.

With an eye towards removing this limitation in future, once the build
system is adapted, I would change this in v2 to require a security/
prefix in front of the configs now. Then at some point in the future, we
could allow arbitrary paths without changing semantics for existing users.

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



