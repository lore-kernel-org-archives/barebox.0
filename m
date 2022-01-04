Delivery-date: Tue, 04 Jan 2022 15:18:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4kdW-00An9W-Li
	for lore@lore.pengutronix.de; Tue, 04 Jan 2022 15:18:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4kdV-00011d-G6
	for lore@pengutronix.de; Tue, 04 Jan 2022 15:18:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uhv78Q1FX00o37y9HV96OoafQYHPwRSWAptOP8icH5E=; b=e58KOawSmn5mzp
	OfK3P+IVtFAJXglatsi5gG8mHbfne2glZf5i64njEkYtOD4O5wU/Z/pwKk0G8UU9IFFtV9GUAKFK2
	EsL69AWaXjCwrOf1GdAk5OC4hYHy6HVjI7t+hTl55HviR0maV1WkwEruQo8K38K8SKKVljz2mY69v
	EU9pQHp5XuO3POxiosfKc5AqPrnmvjM+wD5hoIFD/RSaIACEd7nESF2BYkDNsJ61q7jFN0ATU6oQJ
	VId3G3B/Lg+Z3WmlId5zRpps348oJF3CNf9DvJw19NxW0MkTVUhAVYBixn/8GL0kBBq5Mla7uQ8WD
	H0sGlIaAYT1dQnnPM+Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4kbz-00Bg03-M9; Tue, 04 Jan 2022 14:16:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4kbu-00BfzH-Qt
 for barebox@lists.infradead.org; Tue, 04 Jan 2022 14:16:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n4kbs-0000sX-UJ; Tue, 04 Jan 2022 15:16:20 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n4kbs-00082o-CO; Tue, 04 Jan 2022 15:16:20 +0100
Date: Tue, 4 Jan 2022 15:16:20 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220104141620.GA22780@pengutronix.de>
References: <trinity-c26cce2b-95ff-45dc-9d60-3a1eebfa088b-1641285545326@3c-app-gmx-bap27>
 <20220104105123.GI6003@pengutronix.de>
 <trinity-08e4162e-f564-43b8-859c-2e24b4247c1c-1641295251349@3c-app-gmx-bap27>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-08e4162e-f564-43b8-859c-2e24b4247c1c-1641295251349@3c-app-gmx-bap27>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:10:59 up 24 days, 22:56, 76 users,  load average: 1.19, 1.18, 1.21
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220104_061622_899278_51316B19 
X-CRM114-Status: GOOD (  25.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Re: barebox - rk3568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 04, 2022 at 12:20:51PM +0100, Frank Wunderlich wrote:
> Hi,
> 
> thanks, got it compiled and booting...currently looking around how to do things ;)
> have successful booted linux+dtb+initrd manually and pinged my router as network test.
> 
> now i looks how to include scripts that i don't need to write all again and again...
> 
> documentation says that a direktory will be used in boards directory, but this seems not working
> 
> so i used the config-approach
> 
> DEFAULT_ENVIRONMENT_PATH=arch/arm/boards/rockchip-rk3568-evb/defaultenv
> 
> i'm not sure how the saveenv works (where the environment is
> stored...i have no /dev/env0). in uboot i can define a device (mmc),
> partition (1:1), filename (uboot.env) for storing environment onto a
> fat-partition. i guess you have something similar too

You don't need a /dev/env0. The EVB device tree has:

               environment-sd {
                       compatible = "barebox,environment";
                       device-path = &environment_sd;
                       status = "disabled";
               };

               environment-emmc {
                       compatible = "barebox,environment";
                       device-path = &environment_emmc;
                       status = "disabled";
               };

One of these nodes will be enabled based on the current bootsource:

       if (bootsource == BOOTSOURCE_MMC && instance == 1)
               of_device_enable_path("/chosen/environment-sd");
       else
               of_device_enable_path("/chosen/environment-emmc");

As you have exchanged the device tree you either don't have the nodes
in your device tree or the device tree doesn't match the board code:

The EVB board code has:

static const struct of_device_id rk3568_evb_of_match[] = {
       { .compatible = "rockchip,rk3568-evb1-v10" },
       { /* Sentinel */},
};

Which matches the EVB device tree:

       compatible = "rockchip,rk3568-evb1-v10", "rockchip,rk3568";

I don't know exactly what you have changed and what not, but I think your
problem is somewhere here.

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

