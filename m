Delivery-date: Thu, 14 Apr 2022 09:47:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neuCY-001SBU-1E
	for lore@lore.pengutronix.de; Thu, 14 Apr 2022 09:47:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neuCV-0002vY-Gc
	for lore@pengutronix.de; Thu, 14 Apr 2022 09:47:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H06Rm82gLiq81wneu822GVO05gAzyx7cfrZKG/L/Bro=; b=zjJ5wGxsHj/myj
	A2TLRu17kRfSjdJDD9qiNoIDp0UXZ/zerdwlzvWKd2jo5zqb0ZDln1S0EEsVJ72RMwBqNkAufdGRl
	/7n/XNj21hmhMbIoYKZDGYhKqervly9fKxo41UqFjfvmPGav9xqX4V4/60ikMBpBbp1D8H2/CJXTS
	Clb6GVwCBbZ4dR8yByOe+++9y0Y8PcH3J2tq7t2t6HHsb1G19zgePSBN0S/YoPyJlz/VC3R86oGe0
	1vCylrCM55qWhQKOt0DS/DzSEGBvvWYE04NRPpcX8oOerhIT5hosiO/a46uNjtcK0QlmNJSLlLFZX
	eP+9yGlhduTJpzBZLlew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neuBH-004QOd-GZ; Thu, 14 Apr 2022 07:46:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neuBC-004QNX-I8
 for barebox@lists.infradead.org; Thu, 14 Apr 2022 07:46:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neuBA-0002iK-Pz; Thu, 14 Apr 2022 09:46:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neuBA-0000aO-Gz; Thu, 14 Apr 2022 09:46:12 +0200
Date: Thu, 14 Apr 2022 09:46:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220414074612.GH4012@pengutronix.de>
References: <20201214135831.14287-1-s.hauer@pengutronix.de>
 <8e08020ce35baf3cad238836faddcdee77652cc4.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e08020ce35baf3cad238836faddcdee77652cc4.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:45:49 up 14 days, 20:15, 57 users,  load average: 0.10, 0.12, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_004614_637557_63C42CAE 
X-CRM114-Status: GOOD (  19.15  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] usb: xhci: Honor transfer timeouts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 13, 2022 at 05:57:10PM +0200, Lucas Stach wrote:
> Hi Sascha,
> 
> Am Montag, dem 14.12.2020 um 14:58 +0100 schrieb Sascha Hauer:
> > The usb host submit_control_msg() and submit_bulk_msg() hooks pass a
> > timeout value. Honor these values in the XHCI driver instead of just
> > ignoring them. The USB net driver in barebox polls for receive packets
> > by submitting an URB with a very low timeout, expecting it to timeout
> > when no incoming packet is present. With the default timeout of 5
> > seconds the XHCI driver previously used barebox became unusable.
> 
> Seems like this patch has not been applied. USB net on a XHCI host is
> still unusable with current master.

Applied now.

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

