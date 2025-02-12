Delivery-date: Wed, 12 Feb 2025 15:34:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDor-001Soj-1U
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:34:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoq-0006pI-BK
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:34:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xA0ZjrdLfcIXXaioOcCCkZM+K1dgLUO9fIOUN6jZYPk=; b=gDs7Gx4y1xjdxBaCM90B+x3Ght
	TZn0nLUceJWX+iRKMm6VMdRR2OUhj552Byro2Xd2Ww8L8Q++FHcvr6/LSqWQA89YjjmSYr6fu9HFS
	FJR/3+8RWoRkCLCklLqC7BpBksP7UeT1pYeVv7hEPUJZ4mdmvaeNJYcB7j1OozvV1lZp1SKyzgWlu
	4uycj3H+X+nSRcrSFJQQb6kT/etOcLGVHLRC5sm2Mkk7DRsh/rHjFtI9Wn2q+MG47A9QPU8Vgvt0j
	Xf/xGlL+TbxLREOewsJJR/R5z1WX6i2oMU3diNKwN4YgmPwxUTESPZnIOi88J5CQXDvf73hfVyNZe
	Dh5hrBKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDoN-00000007gno-26H7;
	Wed, 12 Feb 2025 14:33:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDoK-00000007gjo-2uDf
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:33:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tiDoI-0006Pv-3H; Wed, 12 Feb 2025 15:33:54 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tiDoH-000bHW-2u;
	Wed, 12 Feb 2025 15:33:53 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tiDoH-00B3ob-2X;
	Wed, 12 Feb 2025 15:33:53 +0100
Date: Wed, 12 Feb 2025 15:33:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Martin Wege <martin.l.wege@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z6yxUVTp0vGWqs7Q@pengutronix.de>
References: <CANH4o6Njc3uHE=NbasRJrRr0W5B89R8MTM_BwGwab7t5fNWuaA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANH4o6Njc3uHE=NbasRJrRr0W5B89R8MTM_BwGwab7t5fNWuaA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_063356_736726_EE15C711 
X-CRM114-Status: GOOD (  12.78  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Mount NFSv4.2 filesystem in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Martin,

On Tue, Feb 11, 2025 at 01:56:58PM +0100, Martin Wege wrote:
> Hello!
> 
> Does barebox have support to mount a NFSv.2 filesystem?

No, not yet. For NFSv4 we would first need TCP support. While we started
to integrate a TCP stack we are not there yet unfortunately.

Regards,
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


