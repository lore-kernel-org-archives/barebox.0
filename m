Delivery-date: Mon, 21 Feb 2022 15:07:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM9M0-0062Le-Gl
	for lore@lore.pengutronix.de; Mon, 21 Feb 2022 15:07:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM9Lz-0003uf-7F
	for lore@pengutronix.de; Mon, 21 Feb 2022 15:07:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2q7vI0lTCf7HTKAHVii7XHEFyVxme0bQ41eQ0/4D67A=; b=DKmxJJ+yDt4nxd
	IM1xcmHpHy+e80NDRaL5rc+W99j2QN+3WPXyrX4CCLQhaI3lFNONTr5v4LBwXspKBroMVMmwTASzM
	dhm0WbSVGl+K9pxzVQ59XNhWTT9hivUsVVfDlmEvvvzysHYiFSBVhvubiQormiZy2+we6qDpaHdCu
	NMMxSvM7VC/K0syXnry7FcGKwux3m902R9Rs30jRnssfZc5PijKHTjceWOf7fjGHB8rNy09hPuuN4
	Dj7PmdKNkAaTNeIwI+smaOEiFItxLQD42hYM8pWhOr958sANh/9CaFF8+eIO8QdtBDmWPhFfg8PRq
	ObTVBXNdMFntIS4Dy59w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM9Kc-0068he-0S; Mon, 21 Feb 2022 14:06:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM9Dr-0065k6-Te
 for barebox@lists.infradead.org; Mon, 21 Feb 2022 13:59:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nM9Dq-0002PP-LD; Mon, 21 Feb 2022 14:59:26 +0100
Message-ID: <bde9d08d-43da-c3eb-6362-09c33ab8e172@pengutronix.de>
Date: Mon, 21 Feb 2022 14:59:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Michael Graichen <michael.graichen@hotmail.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <AM9P192MB08704D48582CC36E5B0CEFFBAB3A9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
Content-Language: en-US
In-Reply-To: <AM9P192MB08704D48582CC36E5B0CEFFBAB3A9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_055928_009218_3D436A42 
X-CRM114-Status: GOOD (  16.07  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Read Barebox Infos from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Michael,

On 21.02.22 14:04, Michael Graichen wrote:
> Hey, 
> 
> I was just wondering if it is possibe to read the Barebox log messages or the Barebox version from within Linux?

That's what CONFIG_FS_PSTORE_CONSOLE does, see
https://www.barebox.org/doc/latest/filesystems/pstore.html

> Barebox version from within Linux?

Yes, check out /proc/device-tree/chosen/barebox-version

If you are curious what else barebox is fixing up into the device tree,
try of_diff - +

This will apply all DT fixups to a copy of the barebox device tree and
show a diff before and after, e.g.

chosen {
+       barebox-version = "barebox-2021.05.0-20220126-2";
+       bootargs = "console=ttymxc1,115200n8";
+       reset-source = "POR";
+       reset-source-instance = <0x0>;
+       bootsource = "/soc/bus@2100000/mmc@2198000";
};

Cheers,
Ahmad


> 
> Best regards
> Michael
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

