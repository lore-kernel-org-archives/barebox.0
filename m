Delivery-date: Thu, 02 Feb 2023 11:57:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNXHF-00BHgB-CE
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 11:57:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNXHC-000464-DH
	for lore@pengutronix.de; Thu, 02 Feb 2023 11:57:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=61ERXyiKTLROE9UyTLDJix7bCCULp3TpIYw281lOPBs=; b=VlZu+wFCNbgRFxoQ7AJKFkrfXU
	EkOiQI4/lVWLyHCTUp5blUJFsvoTJkBHhyZuxAJG/VijzWLkb/hW+PMCGqSi6UQPPy8DQ+cr/Etcs
	7OPu1Bn9l/OHWGLtneUui3fQVadUS80NGykxIULAHDTgjwei5j6zdZWhW5hBchO6NwBsJZZBuZLy1
	PpwUXWwKMz6yT3vkOeFkaxxGYIWtI/KBSF/M0CPBOZhUFrBKm77UDiDXzk5VjD/hDvxh8y6CntEnE
	6kMNFFxUk/h8dcC3uzsZ+/hN9e4cCWYndC9vOnjMitFr/YuPPX7b7e4QNwVP9iTA1HwJhQJojgh0j
	K2HUrVWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNXFo-00FTzA-Ou; Thu, 02 Feb 2023 10:55:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNXF5-00FTlG-I3
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 10:55:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pNXF1-0003c7-5M; Thu, 02 Feb 2023 11:54:55 +0100
Message-ID: <652bd7d4-3ed2-91d6-fbc9-98318001f044@pengutronix.de>
Date: Thu, 2 Feb 2023 11:54:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: John Watts <contact@jookia.org>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
References: <20230201223404.1467998-1-contact@jookia.org>
 <20230202073948.GL13319@pengutronix.de>
 <Y9uDXGfxDzX5D9nz@novena-choice-citizen>
 <3d53375e-2bdd-33e2-be09-6b6b0705105b@pengutronix.de>
 <Y9uQ9PoA88bPX/CG@novena-choice-citizen>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Y9uQ9PoA88bPX/CG@novena-choice-citizen>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_025459_638424_F50B6BE6 
X-CRM114-Status: GOOD (  12.70  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fs: nfs: Error if a port is unregistered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.02.23 11:31, John Watts wrote:
> On Thu, Feb 02, 2023 at 10:45:05AM +0100, Ahmad Fatoum wrote:
>> Add a pr_warn with a descriptive message?
> 
> Something like "hint: check your nfs server supports UDP"?

Or maybe: "No UDP port announced. Is the NFS server TCP-only?"

Cheers,
Ahmad

> 
> John.
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



