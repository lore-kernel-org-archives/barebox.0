Delivery-date: Wed, 14 Apr 2021 12:10:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWcTM-0001id-20
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 12:10:12 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWcTL-0000xy-4o
	for lore@pengutronix.de; Wed, 14 Apr 2021 12:10:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fJGjYaMFvrM92JIiPtEAliXcbz5bHZ2Iis+ba+CH+CA=; b=knk2v46j4bNUgvHQR/03ZPPfU
	Z2uZnUuKgDcb+piWi6A5Y4rxK4NTZyelH8LqAS96lD6UfW+lsy6evPOqIv58MB0WsS8nsK1MXAUz3
	48VhmTXAmdotTO8h7qPnUUthJImvzCvd3A/SL04w85S3lrMjaf1rQYNTAbXxJWv4y9ZfaIjVSUe1i
	LQOgCXAsNIgErJWCKvSz2ITowha+fCGod07dhv+JixqK+zBJBBXKx07tsJ7sCb/14cbRFpINBZvqT
	J820wtUNnf0LNx0QJEQtDdUig9DmFuwukjAWRnzM914uUBX3UusrbAMWxu45/0zk0l0lK0oePyuOc
	Kv7uD+xDg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWcSD-00CEOr-38; Wed, 14 Apr 2021 10:09:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWcS5-00CENg-Jb
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 10:08:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=uh3AiQVIc0A8SpHSWNh4X/HcfsgKwLX8F8Z4USdMDyI=; b=t5jal2JsGzg+7XW5ikZ2aBWbgi
 H78AnQMSGciD+uS7pGhlk+RiazEjIgcwEh+wMp14YD+jLuzYzQqYOiOmb2ASaFmwTajcT2WknSWTC
 zB2oiDHYcLtvGKDLHouliZEqEhL3if0Bz/B29WO42SXmB7R8nGyFXn53cZY84l2n3z36WnEvr+VyH
 BmPOQIDTPl6m1AOyxl0pgkUf7ylIQ2fSj0xmMASAGreRR+0EH2ODIfYChMgMret6c/fzzDL3JAvd7
 CMN4iXDE6Cz8iGkhGM/P2Scy8WxurqEUaPGIG2lQiZtyxMJfJpH3d5NWLOrDwFbDCzlZVSWJgPxGg
 6JWPoffA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWcS2-007fpR-RJ
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 10:08:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWcS1-0000qU-34; Wed, 14 Apr 2021 12:08:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWcS0-0007Iy-QU; Wed, 14 Apr 2021 12:08:48 +0200
Date: Wed, 14 Apr 2021 12:08:48 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210414100848.GT19819@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
 <20210412223502.29691-7-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412223502.29691-7-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:05:53 up 55 days, 13:29, 105 users,  load average: 0.16, 0.22,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_030850_908018_E1A5F8C2 
X-CRM114-Status: GOOD (  21.21  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/14] common: add generic machine partitions interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 13, 2021 at 12:34:54AM +0200, Ahmad Fatoum wrote:
> Both Fastboot and DFU have their own global variables that allow
> specifying the partitions that can be flashed via the environment.
> With the upcoming addition of the USB mass storage gadget, we will need
> some way to define the partitions there as well.
> 
> Instead of adding yet another way download method-specific variable,
> add a generic machine.partitions variable that can be specified on a
> per-board basis and can be used for all methods.
> 
> Existing variables will still remain for backwards-compatibility, but
> when unset, it should fall back to this new parameter. This is done
> if the follow-up patches.
> 
> +static int machine_partitions_var_init(void)
> +{
> +	struct param_d *param;
> +
> +	machine_partitions = file_list_parse("");
> +	param = dev_add_param_file_list(of_get_machine(), "partitions",
> +					NULL, NULL, &machine_partitions, NULL);

Why machine.partitions and not global.something? What's the very good
reason to open up another namespace for configuration variables?

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

