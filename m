Delivery-date: Thu, 14 Oct 2021 09:32:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mavEL-0000qY-0p
	for lore@lore.pengutronix.de; Thu, 14 Oct 2021 09:32:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mavEK-0007jT-4j
	for lore@pengutronix.de; Thu, 14 Oct 2021 09:32:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZdJU0qFbIWtTlJAR39tBQdGN9HdB4zl4To/wug3KfQ=; b=cB1AWXMQnhrkXV
	pueau7JUh2JtlB+aEXLs7iUsq/c6ZBo6Z7j/INe710FU+sg2uwI21/UtMIXlgxc1QV4kjuw8s3XRx
	hSDSsQnfFiC0R+XklgQWEj3qSFT6lZ/VCCQfGdCLuOoJ5Mb0YyWsT2JwRsyugHPwafZERZSjXAf0e
	fXN6zfssfdmeuH+n58vMkPKI52cHNxlZ+buHn8izAy8K9gUN4rXcLXPHnswGzyt9kg/ivdA5tSO3A
	NY+8ssv3+lZFYqYz1lPT2S5vhi/IMRb+yvqiGKPDJpL31xFRkIyVtqOAOLx7cAVsfix130HtJcaZh
	85mX6vyGBDDC6RfBDZrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mavCd-001ugb-Rx; Thu, 14 Oct 2021 07:30:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mavCY-001ufL-86
 for barebox@lists.infradead.org; Thu, 14 Oct 2021 07:30:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mavCU-0007WL-Ig; Thu, 14 Oct 2021 09:30:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mavCT-0005y1-63; Thu, 14 Oct 2021 09:30:49 +0200
Date: Thu, 14 Oct 2021 09:30:49 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org,
 =?iso-8859-15?Q?An=B8e_Le=A8nik?= <anze.lesnik@norik.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20211014073049.GV28453@pengutronix.de>
References: <20210910102931.26078-1-jmaselbas@kalray.eu>
 <20211004114556.GB28453@pengutronix.de>
 <20211004121110.GF19809@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211004121110.GF19809@tellis.lin.mbt.kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:29:51 up 238 days, 10:53, 122 users,  load average: 0.25, 0.18,
 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_003054_332231_88BCB309 
X-CRM114-Status: GOOD (  17.98  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] usb: gadget: dfu: Rework dfu command to use usbgadget
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Jules,

On Mon, Oct 04, 2021 at 02:11:10PM +0200, Jules Maselbas wrote:
> Hi Sascha,
> 
> Would it be interesting to do the same for other usbgadget commands ?
> I think there is the "serial" command that still doesn't uses the
> usbgaget.

Sorry for the delay. Yes, that would be interesting, bringing code into
shape is always nice.

Regards,
  Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

