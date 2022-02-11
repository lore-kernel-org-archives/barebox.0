Delivery-date: Fri, 11 Feb 2022 10:48:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nISX2-00CiSu-PD
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 10:48:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nISX1-0001ZC-FY
	for lore@pengutronix.de; Fri, 11 Feb 2022 10:48:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tIw+D2k/KtCjP7dYk4iNSXNFhLhZq+2CpG8/aKbkRH8=; b=1GIDEVCotK1qevGIn5IK0OVsIP
	nWrC5VmVaLm2qVocNU+/M2Kwrs9l+r5u6Xa/SMHhi7DOK9lbyPG8GX7cFvu6c12L+HmdesWuERuPS
	6D85jUxSffYAC82ztZMKQeT8OEluJMdYiTKmxU6wX6bN+6a9ibNBdAZeiGgqwy9PuWMnobvH5Y/Yj
	DQf9pJZ45hg1HJE5TDgcfJK6t0iJAH782MTiXJBiuCqyviq1RYa2RFkOMSYvGCzzLnyFf35pxZCaa
	sFWjEx+V+eSjACWUJewNv8A4sT8GXZZelZ7dYY4nz9DwvFXHLQRUVRNokolsM6Mixp/IMYt5B04SG
	tSLjGY4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nISVq-006TCh-Fw; Fri, 11 Feb 2022 09:46:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nISVh-006TB6-Oc
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 09:46:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nISVg-0001E4-CU; Fri, 11 Feb 2022 10:46:36 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nISVg-0007kX-3f; Fri, 11 Feb 2022 10:46:36 +0100
Date: Fri, 11 Feb 2022 10:46:36 +0100
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220211094636.GE18637@pengutronix.de>
References: <a9986dfd56deaf82fefa49c2c7c4c024b750ee1d.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a9986dfd56deaf82fefa49c2c7c4c024b750ee1d.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:43:42 up 62 days, 18:29, 86 users,  load average: 0.20, 0.13, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_014637_846990_CCED8792 
X-CRM114-Status: GOOD (  21.80  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: i.MX HABV4 USB Image generation broken since
 fd9c7cbfe446b0f04aa66bb198c1769045ba2fe5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Rouven,

On Tue, Feb 08, 2022 at 08:24:24AM +0100, Rouven Czerwinski wrote:
> Hi,
> 
> Commit fd9c7cbfe446 ("scripts: Add common library functions")
> intorduced the usage of the common library functions to imx-image,
> which breaks the HAB USB image generation within barebox. Signed images
> are still generated fine:
> 
>   OBJCOPYB images/start_imx6ul_ccbv2_512m.pblb
>   CHKFILESIZE images/start_imx6ul_ccbv2_512m.pblb
>   OBJCOPYB images/start_imx6ul_ccbv2_256m.pblb
>   CHKFILESIZE images/start_imx6ul_ccbv2_256m.pblb
>   IMX-IMG images/start_imx6ul_ccbv2_512m.pblb.imximg
>   IMX-IMG images/start_imx6ul_ccbv2_512m.pblb.simximg
>     Input CSF text filename
> CSF Processed successfully and signed data available in
> images/start_imx6ul_ccbv2_512m.pblb.simximg.csfbin
>   IMX-IMG images/start_imx6ul_ccbv2_512m.pblb.usimximg
>     Input CSF text filename
> CSF Processed successfully and signed data available in
> images/start_imx6ul_ccbv2_512m.pblb.usimximg.csfbin
> write failed: Bad address
> make[1]: *** [/home/phoenix/work/ptx/barebox/images/Makefile.imx:38:
> images/start_imx6ul_ccbv2_512m.pblb.usimximg] Error 1
> make[1]: *** Deleting file
> 'images/start_imx6ul_ccbv2_512m.pblb.usimximg'
> make: *** [Makefile:703: images] Error 2
> 
> I have attached the .config I used to test this, you'll need the i.MX
> cst tool in your path and the environment configuration to point to
> certificates. The ptx devel certificates
> https://git.pengutronix.de/git/ptx-code-signing-dev were what i used
> for testing.
> 
> I assume this is the same error that has been fixed in "scripts/common:
> fix write_file when opened with mmap", however imx-image implements its
> own xwrite helper and opens files itself, so there is a mismatch there

Could you give
http://lists.infradead.org/pipermail/barebox/2022-February/038465.html a
try? It hopefully solves this issue.

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

