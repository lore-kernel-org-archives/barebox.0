Delivery-date: Wed, 26 May 2021 09:19:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llnpS-0004p5-AG
	for lore@lore.pengutronix.de; Wed, 26 May 2021 09:19:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llnpR-0002sH-4r
	for lore@pengutronix.de; Wed, 26 May 2021 09:19:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJaCuqMBoXcRdGnCiXvO5iEL0qkS7nF0Rou295pGRW4=; b=0TqDW9Hp/pJWq+
	cJ9lUgiSIqWvwr4s06/B9CgeiffP+U0+pqKZYof+KfVv218as8kv4UD8dS5C8OrnMlMy22OcyFIft
	mps+XkoaHD8I07IGPswop+ha+esc6LGxqMUW5RB1gZ3gjustME9QE7TX09UcA1HIZvsmb9XoWuKzv
	9ai72wDdz0MF2E+q5uqDq174YIYoHz8znsoJNdHGzsVmNS0pjJM4DU6h5b/4HX1phk1cygDCyWJwz
	4scf842J4xt9+LY2VuzMK0se5wjfkZ9v75xuBiqlRlIbCndbCh6iqQnVxanJ8LPtRYlFbiE3zXkOU
	qB0m+zHvEzN4OV8AigGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llnoJ-00Bz5W-20; Wed, 26 May 2021 07:18:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llno3-00Byxy-G4
 for barebox@lists.infradead.org; Wed, 26 May 2021 07:18:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llno2-0002ld-7u; Wed, 26 May 2021 09:18:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llno1-0006lU-Uq; Wed, 26 May 2021 09:18:17 +0200
Date: Wed, 26 May 2021 09:18:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Bastian Krause <bst@pengutronix.de>
Message-ID: <20210526071817.GQ31738@pengutronix.de>
References: <20210415131617.3582-2-s.hauer@pengutronix.de>
 <20210415140313.29161-1-s.hauer@pengutronix.de>
 <ce2af9cf5f8b10a9595a7d5beec2497df0fdb172.camel@pengutronix.de>
 <20210415151231.GI19819@pengutronix.de>
 <1e17f965a5a60aaba5b092785eb815dd7c4d83a0.camel@pengutronix.de>
 <213a717d-a80d-e140-6a14-06ae7308292f@pengutronix.de>
 <b4b0d3ed-5498-d2fa-4230-33558587a1a0@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4b0d3ed-5498-d2fa-4230-33558587a1a0@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:18:04 up 97 days, 10:41, 111 users,  load average: 0.20, 0.34,
 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_001819_582190_68DE17B0 
X-CRM114-Status: GOOD (  32.21  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX: sabresd: Add support for i.MX6QP board
 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 25, 2021 at 10:54:44AM +0200, Bastian Krause wrote:
> On 4/22/21 5:14 PM, Bastian Krause wrote:
> > On 4/15/21 5:31 PM, Lucas Stach wrote:
> >> Am Donnerstag, dem 15.04.2021 um 17:12 +0200 schrieb Sascha Hauer:
> >>> On Thu, Apr 15, 2021 at 04:59:30PM +0200, Lucas Stach wrote:
> >>>> Am Donnerstag, dem 15.04.2021 um 16:03 +0200 schrieb Sascha Hauer:
> >>>>> The SabreSD comes with different SoC variants. This patch adds support
> >>>>> for the i.MX6QP based board. the DCD data has been taken from U-Boot
> >>>>> 2021.04
> >>>>>
> >>>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >>>>> ---
> >>>>>
> >>>> [...]
> >>>>> new file mode 100644
> >>>>> index 0000000000..52cc8aa73b
> >>>>> --- /dev/null
> >>>>> +++ b/arch/arm/dts/imx6qp-sabresd.dts
> >>>>> @@ -0,0 +1,42 @@
> >>>>> +/*
> >>>>> + * Copyright 2012 Freescale Semiconductor, Inc.
> >>>>> + * Copyright 2011 Linaro Ltd.
> >>>>> + *
> >>>>> + * The code contained herein is licensed under the GNU General Public
> >>>>> + * License. You may obtain a copy of the GNU General Public License
> >>>>> + * Version 2 or later at the following locations:
> >>>>> + *
> >>>>> + * http://www.opensource.org/licenses/gpl-license.html
> >>>>> + * http://www.gnu.org/copyleft/gpl.html
> >>>>> + */
> >>>>> +
> >>>>> +#include <arm/imx6qp-sabresd.dts>
> >>>>> +
> >>>>> +/ {
> >>>>> +	model = "Freescale i.MX6 Quad SABRE Smart Device Board";
> >>>>> +	compatible = "fsl,imx6q-sabresd", "fsl,imx6q";
> >>>>
> >>>> I'm not sure I like this overwriting of the compatible string. AFAICS
> >>>> we don't have any instances for "fsl,imx6qp" compatible checks in
> >>>> either Barebox or Linux kernel, so it shouldn't cause any immediate
> >>>> damage, but this still feels wrong.
> >>>
> >>> It's overwritten with the same strings as the included upstream dts has.
> >>> Anyway, as you say overwriting them here seems wrong. I removed it.
> >>
> >> You had me confused for bit here, so I just checked and the compatible
> >> in the included upstream dts is different, as expected:
> >>
> >> compatible = "fsl,imx6qp-sabresd", "fsl,imx6qp";
> >>
> >> So now that you removed those lines, does you board file need fixing
> >> for the different compatibles?
> > 
> > My board works fine (bootspec-wise) with the dropped compatible.
> 
> What's the state of this patch, Sascha?

I just sent out v3.

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

