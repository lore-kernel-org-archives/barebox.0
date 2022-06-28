Delivery-date: Tue, 28 Jun 2022 22:49:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I8t-000bhL-Ro
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 22:49:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I8v-0005Ph-S6
	for lore@pengutronix.de; Tue, 28 Jun 2022 22:49:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KByDEE9AulOVtzyfhEdkkYZRdGJRw7nXal56DCQhb/o=; b=YGJo1NcLWWPDFZMN151eFyNglB
	gatBph0DqukyDNhFy3veLqZ8n07uoNiZgg2I1Q1gA06xqNb6mTJoV+a5r5ZULj0iqgwGXnVtJHpax
	PGvIzqHlzk4yzEMu0Bf0a9/+y3PZI+uyX1E8q4lxdmqB6edd7H1d41/xbfaEaltj77Yq0/Rk8pZEF
	itkuuhK97UW5MiraLm7yxLVavnG3IFf/vCb0PHJqujJ6OV4A3NczzcWV+ktpTXP261TCaTs8Q//WZ
	vWJ9/R3mWCOmG5qSsJ9CGCdlnb4bz9utZW8rG4x2r58jWbuMoLRO2ziZJ1+/E5khBJzrkWHqCRfRA
	1Ybu1vAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6I7g-00883K-DS; Tue, 28 Jun 2022 20:47:48 +0000
Received: from mailrelay1-1.pub.mailoutpod1-cph3.one.com ([46.30.210.182])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6I7a-00882U-SY
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 20:47:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:to:from:
	 date:from;
	bh=KByDEE9AulOVtzyfhEdkkYZRdGJRw7nXal56DCQhb/o=;
	b=kOf9HMJnf9RUEmfERlVQvxoZ2meydpv89RMJ0epJJqK9MMWC1u3MuNxCrRhssvv3XLUMPnmkTJ6FR
	 xeGJw8zivpmsNHxMGTdHAbfB/ip+eCXeuHSPiMYxKty0hZ+budkaoZP3GDQ/Ginf11HuvwQt4RCY0Z
	 oX6DWM3YwEO6Qd976So0p9SbGxPJMowq3iZ5Gbbhqz9hNxjSruo5idXNlbjH40xwYzi+dvu440iQal
	 qP2lpdufLOkkkxtybujyxtDoxlVd0MEQdLpWbzKBjMjW0PV8pJEkuNxnGMpm0c9iXZfwboEds5J0N2
	 9CHQKkKMTdf0ey+evL0CcQ/rBJCEijA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:to:from:
	 date:from;
	bh=KByDEE9AulOVtzyfhEdkkYZRdGJRw7nXal56DCQhb/o=;
	b=kVHE8EqaVJJYaFYk0WyjuNW0F/xy3lhwiZ5Mfa/u3Mw7zA08J9jhbQNMcWEmaerVcxSR6VzB0aPP0
	 kjteaNcBA==
X-HalOne-Cookie: 3d75ea4041e0095dd6eb13db3c431c1e69bda52d
X-HalOne-ID: 8b9e64bf-f723-11ec-a6c5-d0431ea8a283
Received: from mailproxy4.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay1.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 8b9e64bf-f723-11ec-a6c5-d0431ea8a283;
	Tue, 28 Jun 2022 20:47:38 +0000 (UTC)
Date: Tue, 28 Jun 2022 22:47:36 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <Yrto6A+uWkEF9Ypn@ravnborg.org>
References: <20220628203849.2785611-1-sam@ravnborg.org>
 <20220628203849.2785611-11-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220628203849.2785611-11-sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_134743_109060_881B1C07 
X-CRM114-Status: GOOD (  15.26  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 10/11] ARM: at91: Add xload support to skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi myself,

On Tue, Jun 28, 2022 at 10:38:48PM +0200, Sam Ravnborg wrote:
> This updates skov-arm9cpu with xload support, and we can now
> use barebox as a replacment for at91bootstrap.
> 
> Only boot via SD card is supported.
> 
> Includes several suggestions from: Ahmad Fatoum <a.fatoum@pengutronix.de>
> - Use ENTRY_FUNCTION_WITHSTACK
> - Reshuffeled order in early init
> - SD card in not highcapacity
> - Drop irrelevant max image size in images/Makefile.at91
> 
> NOTE: Actual status
> [x] dbgu support in pbl works (can print)
> [x] Other init stuff ifdeffed out - from at91bootstrap
> [ ] Check what the original code used for div/mul - there is some confusion
> [x] load barebox.bin and boots it. Right now mount fails
> [ ] barebox.bin can start a linux kernel
> [ ] support default SD card boots and nfsboot
> [x] update Kconfig to work with xload
> [x] xload image support
This patch is also WIP - I still need to check some details and the todo
list needs a refresh as I have completed more of the items.

	Sam


