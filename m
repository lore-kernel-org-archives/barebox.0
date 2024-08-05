Delivery-date: Mon, 05 Aug 2024 15:55:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sayBS-006VaK-1o
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 15:55:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sayBS-0001Vc-0V
	for lore@pengutronix.de; Mon, 05 Aug 2024 15:55:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3BsdA8RomeYllpFaABvBpAIh7/JoHuUsIvuEl2FLC2Y=; b=H6r2TZdaw69geRR4fyoM37/pxH
	ZDmFc60XOvY5OgvYWMW4TeALO4oiRNF6tcmJQ/BkjCIZTuWGHES2fj8F3/d5Oos8SNfyQTqeZScDF
	+Fya/fiGXB5QgKVvtFuDQOrbugM8ZzMFX9LreCBlNQDcLFINcJ7htRwTq/sww8Uh2moux+6JxVj+Z
	/DWMngEN8UiX8tt31gLlNbrKEO9Gewo6ZvJ6TsJbMbx0nqVaE4MCRZGHjIKLw0agcwtQbOT55UFtM
	RwdoK0L5zzNPyVqsSALW9VQRtRhGhLl+NydfpxgrG2TMaYwnNXhtd2lzsZgGXE5yb096ZZikNXsIG
	iib9b5Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sayAz-0000000G1vf-1eUs;
	Mon, 05 Aug 2024 13:55:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sayAn-0000000G1tr-0GJC
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 13:54:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sayAl-0001PH-Mw; Mon, 05 Aug 2024 15:54:51 +0200
Message-ID: <98259e53-5bdd-4e6f-a0c9-1c0d2a11e85b@pengutronix.de>
Date: Mon, 5 Aug 2024 15:54:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>, barebox@lists.infradead.org
References: <3f5eb45e38041713fb983ec00bcdf830fb86cb11.camel@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <3f5eb45e38041713fb983ec00bcdf830fb86cb11.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_065453_135750_EF9C6C6D 
X-CRM114-Status: GOOD (  13.12  )
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
Subject: Re: eth frame error on imx6ul
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefano,

On 05.08.24 15:48, Stefano Manni wrote:
> Hello,
> 
> on a target based on imx6ul I see lots of errors like this when
> connected to the company LAN:
> 
> WARNING: eth0: error frame: 0x87ed5190 0x00000886
> 
> where 0x00000886 means "frame length violation" (FEC_RBD_LG).
> 
> It seems to be an HW issue BUT on another target based on imx6x with
> exactly the same HW block for ethernet I never see this error.
> 
> Have you ever faced something like this?

Do you have TFTP or something running while seeing these errors,
or when do they pop up?

Cheers,
Ahmad

> 
> Thanks,
> Stefano
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



