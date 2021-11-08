Delivery-date: Mon, 08 Nov 2021 11:35:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mk20L-0001Hm-NF
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 11:35:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mk20K-0007sv-T0
	for lore@pengutronix.de; Mon, 08 Nov 2021 11:35:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAdirZk7759jZuGCNzUDLKAlYnLFlcLNGfr4rSBXzRM=; b=BYA/tOS+b2pfBr
	VQpqdBnrCRqULUV/Vjol34rAVPkhmTyhoN0ZILb8s4DWponeoprTBaqNPKnM/jUI2Lvdm85Y8VPf2
	yJFs5/1SXT7oAVhxNyBCxFfPi9hAxV2gfj80GhyDG+Zgazpq1qk85cwYy2r1MPQpaiohtVoMtIHSo
	waGUsCI1P1DNzhgPN9hfXvt3vSpV+xvK2xnxmRI2kmWVLW+QDMuwUplnot1BKLU0polkAnUCvDBrN
	HTlPT2MQt9OLGOCCg3r9rKyRu1p38gytF6KuiMGJ9KaijzDH0tuyS1OdH1a4jomOyoUHxW/P67HlR
	LwlMx/OA36eyRUB0jlEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mk1z3-00G5JN-Jz; Mon, 08 Nov 2021 10:34:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mk1yv-00G5Gq-UU
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 10:34:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mk1yt-0007Ys-GR; Mon, 08 Nov 2021 11:34:27 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mk1ys-0007jS-VJ; Mon, 08 Nov 2021 11:34:26 +0100
Date: Mon, 8 Nov 2021 11:34:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Christian Eggers <ceggers@arri.de>
Message-ID: <20211108103426.GL25698@pengutronix.de>
References: <3170930.44csPzL39Z@n95hx1g2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3170930.44csPzL39Z@n95hx1g2>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:11:48 up 263 days, 12:35, 137 users,  load average: 0.41, 0.37,
 0.43
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_023430_011542_4C5052A9 
X-CRM114-Status: GOOD (  17.09  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [Barebox] Polling infrastructure causes reentrancy problem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Christian,

On Fri, Nov 05, 2021 at 01:40:52PM +0100, Christian Eggers wrote:
> Disclaimer: I stumbled over this on barebox 2020.01.
> I haven't tried to reproduce this on the current version.

Please update to a recent barebox. The fastboot commands now run in a
workqueue which itself only runs when we are outside any critical pathes
in barebox.
Particularly fastboot commands will only execute when you called
command_slice_release() beforehand. You'll have to call
command_slice_acquire() before entering any critical pathes like probing
for USB devices.

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

