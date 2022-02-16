Delivery-date: Wed, 16 Feb 2022 12:43:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nKIit-000hmj-PI
	for lore@lore.pengutronix.de; Wed, 16 Feb 2022 12:43:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nKIis-0000UE-Db
	for lore@pengutronix.de; Wed, 16 Feb 2022 12:43:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wrTpzr9ShRipZkvae1vpZh7Ac5DIUMkbfU6SxZXnWUM=; b=eNA0t/2Qp6kY1ikQdOTKLPn2Vr
	73q5WseBBZYa4wQ7NYHHqYxxfekTyWL08QXOkzx0pvTqojql8YnyMsxrFAoQJ+1NqwYiuNdqvwfnn
	U1P+i31O27v9vhP8bBo3xPDe74HK3PbQrpq45EFYWEMPt6KcbeP7qDTBjO5O0HcWWQ7hyikyxQTAh
	HPzoHqfQ00vgGkm331qZIQsAwmlXxfh9hHZ3glTLmI9oX5QP7mKfRvLw9I3PEu6TBXr1FNqg63Y0j
	9uT0yhxXUpTRoiksc/ssMcniw/Kf3kc+Vuwqui3TDBx/+9PX6DnuvU5p5JJGaT++Apaa8oLv4Ypz9
	B+SUc3TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKIhF-006mDl-1T; Wed, 16 Feb 2022 11:42:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKIhA-006mCu-Hi
 for barebox@lists.infradead.org; Wed, 16 Feb 2022 11:42:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nKIh9-0000Ae-9X; Wed, 16 Feb 2022 12:42:03 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nKIh9-0008AL-0h; Wed, 16 Feb 2022 12:42:03 +0100
Date: Wed, 16 Feb 2022 12:42:02 +0100
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220216114202.GP18637@pengutronix.de>
References: <20220211100224.2395887-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220211100224.2395887-1-r.czerwinski@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:41:38 up 67 days, 20:27, 84 users,  load average: 0.07, 0.29, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220216_034204_612411_6737DFEC 
X-CRM114-Status: GOOD (  19.13  )
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
Subject: Re: [PATCH v3] ARM: imx: add support for TQMa6UL SoM on MBa6ulxl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 11, 2022 at 11:02:25AM +0100, Rouven Czerwinski wrote:
> Add support for a TQMA6UL2L SoM on top of a MBa6ulxl baseboard. The
> imxcfg header is for the LGA variant, the downstream U-Boot has an ifdef
> for another "standard" variant, however this is not included here since
> I don't have hardware to test.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
> v2->v3:
> - replace explicit pinmux with comment
> 
> v1->v2:
> - split up barebox and kernel dts
> - fixed DEBUG_LL
> - removed mmc0/1 alias switch
> - add environment handling
> - add MAC handling
> - add default update handler

Applied, thanks

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

