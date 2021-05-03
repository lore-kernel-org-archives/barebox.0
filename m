Delivery-date: Mon, 03 May 2021 14:10:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXPO-00038K-H9
	for lore@lore.pengutronix.de; Mon, 03 May 2021 14:10:42 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXPN-00035A-O1
	for lore@pengutronix.de; Mon, 03 May 2021 14:10:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TH5ed43LHKUyAwfWDttngiYLqAK2w9U3/26+Cvh9/Zc=; b=X6QsVDnUweLEUEXyLHOulJvb9
	vA0sVV0QlKnQOeeQAgoUm5gQJh4sC+hKSblq0k+FpIe0flw3yJIhuZ+ummcDhW+c/hOnVi8JS3UDu
	8egb9mIIqGMPZBmg+nWYlU1m+Vrg2GOe7QSA5WlrMqG0gLOCL9zm5s4acxm51ioZITtAeHTvp4uh/
	QA0f570RGdotJtffjix2C4IqqMRLuTWLZ4zD56X4jyvSZjCUAQcEEZeNFsA43wCzFCpoWWNbFo2oq
	X0Weu7pkRKjJLtOuON4SpPEEhm04NjU86JGLMZj250ObzaIeuSRIuElHi/UYdedU6C9SP0UaGBcB1
	tP2RPNa3Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXOD-00DpPt-8Q; Mon, 03 May 2021 12:09:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXMc-00DpG9-Ix
 for barebox@desiato.infradead.org; Mon, 03 May 2021 12:07:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hU8lDaIFoVOd6zLrX2ld9a+WwzfTOtJQ3kdGJZQebLk=; b=LEbUOFlqmLZ1ZN1oJcDCVZygIR
 bFimFIAgG1y+8aiJg1cVf/mhm6yNeQCqYJJ0AUOxQANMDtG2w9KAglu4xg9VtEis1sx3kOAbVlJwP
 aKC3uvO0TvFvbC2cxMpDPwaWY4FsQUv2lxerAlH8U29YynbfHmzGoa+y31Jn9xlFIkS8PlBHQN4eV
 ZEwQWZSHv4OqBvpf8CHbdSTnA5VrzPZyDYM057lC+XKfr3mGhw09UkULJUch/2U9WXW69PW9XtDjY
 XMsPE/1LTmd/gvsPLeGjaKs3yfsaMy091LnNbLjctSyzD6gN1UW4cGOMKQK3OL8Bxqrp432vUgcII
 bGgnkGYg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXMZ-0032av-Sw
 for barebox@lists.infradead.org; Mon, 03 May 2021 12:07:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXMY-0002ud-Fu; Mon, 03 May 2021 14:07:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXMX-0003j9-Ll; Mon, 03 May 2021 14:07:45 +0200
Date: Mon, 3 May 2021 14:07:45 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210503120745.GI19819@pengutronix.de>
References: <20210416062436.332665-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210416062436.332665-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:07:29 up 74 days, 15:31, 100 users,  load average: 0.08, 0.17,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_050747_956590_667A223F 
X-CRM114-Status: GOOD (  18.27  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] x86: add EFI PCI host and iTCO watchdog support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 16, 2021 at 08:24:32AM +0200, Ahmad Fatoum wrote:
> v1 is here:
> https://lore.barebox.org/barebox/20191204125659.22506-1-a.fatoum@pengutronix.de/
> 
> Series tested with:
>   * QEMU q35: ns16550 serial, iTCO and virtio-pci
>   * Dell Latitude 7490: Bus enumeration works correctly
> 
> v1 -> v2:
>   - add DMA helpers, so the new virtio-pci support is usable on x86 as
>     well
>   - add preassigned bus support, so already running PCI UEFI drivers can
>     continue to function
>   - handle zero size resources correctly
>   - add iTCO watchdog support in new commit
> 
> Cheers,
> Ahmad Fatoum (4):
>   x86: add DMA support
>   PCI: support PCI BIOS preassigned buses
>   pci: add EFI PCI root bridge IO protocol driver
>   watchdog: add support for Intel TCO watchdog timer

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

