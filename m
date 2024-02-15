Delivery-date: Thu, 15 Feb 2024 09:30:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raX8T-007CQb-1E
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 09:30:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raX8P-0003uK-2W
	for lore@pengutronix.de; Thu, 15 Feb 2024 09:30:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xnlU8xQJ9WuxrpgQ3z5AxDBnY29a6DSFlWjruTSecow=; b=g52rtszIbfNQ84ikQp48Fc7lyZ
	CFLcl0evkNFCSw+2pfF657osUPrpSreukDOmCKLMTOXW4AlrjftqJhKS3X9IvaN6hr1pIRHCueMFk
	L50FZ7Ttu1MZxydtwHn6Qj7fbzp0p7y9K51yGxg2km0GKrdrImcic/9jmElGQGpB8ns1sGNvjkjfx
	MyX8AsMxtR0751MnJNT0GQmwQVLmZ4aDz3uVPPAzem2I+yldn9Gw29AZ5Y9kBRlFphiP6++Uib97U
	DopDrt0OeCggCm7fdC/QWe42TfIWI2cvTtfkt1F0PAaz1ZhrrMJP5EcsXhMXmZbabn4NIruWVWRrk
	gUNfqYtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raX7n-0000000FLWB-0dnM;
	Thu, 15 Feb 2024 08:29:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raX7k-0000000FLTt-13HB
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 08:29:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raX7i-0003pQ-U6; Thu, 15 Feb 2024 09:29:38 +0100
Message-ID: <eab18ad9-b1be-49ce-b4e1-8a84dac06fb6@pengutronix.de>
Date: Thu, 15 Feb 2024 09:29:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20240213151744.307958-1-s.hauer@pengutronix.de>
 <718388d8-1540-4f45-9604-ae8e63cf986f@pengutronix.de>
 <Zc3ItV4Ak4NDdWPs@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Zc3ItV4Ak4NDdWPs@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_002940_339233_B83489DF 
X-CRM114-Status: GOOD (  22.21  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/6] implement i.MX93 AHAB secure boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 15.02.24 09:17, Sascha Hauer wrote:
> On Wed, Feb 14, 2024 at 07:09:16PM +0100, Ahmad Fatoum wrote:
>> Could you make the signing inside the barebox build system optional
>> for HAB? Then we could have a prompt symbol that depends on HABv4, e.g.
>> CONFIG_HAB_SIGN_IMAGES or something and disabling that would require
>> external signing like for AHAB. I think this would improve user experience
>> a fair bit, because HAB and AHAB could be handled the same build-system
>> side and it would be easily discoverable in Kconfig that one supports
>> sigining internally and the other doesn't.
> 
> Originally it was a design decision to integrate the signing into
> barebox. I wanted to make barebox self contained and not depend on
> external tools to generate images.
> I am not sure though if anyone really builds signed images without
> the help of a build system. So I had the same thought as well if we
> could let the build system do the signing also for HAB. I haven't looked
> into it what it takes to implement that. One point where it gets
> difficult is our special trick to create signed USB images. We handle
> the DCD table in imx-usb-loader to setup DDR and disable DCD in the
> image. To make that work with signed images we sign an image which
> has the DCD table disabled.

I am not asking that you implement in-barebox signing for AHAB, rather
that you make it optional for existing HAB, so they can be handled the
same if needed. Now that you just had AHAB in your hands, it should just
be a finger flexing for you, right? ;)

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



