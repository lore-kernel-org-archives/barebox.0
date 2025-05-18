Delivery-date: Sun, 18 May 2025 19:07:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGhTz-000Eq8-3B
	for lore@lore.pengutronix.de;
	Sun, 18 May 2025 19:07:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGhTz-000119-As
	for lore@pengutronix.de; Sun, 18 May 2025 19:07:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F+T+AShOew/Z2OyZ3r5d/yGL5OW/tkH1E38kZAN6NfA=; b=f4AIsd1yQNMQGVK3kAP9llGnvf
	Z7IPcj3ZFtDEUUkrPXk+FdGCda5IquFrHocqLvZpzPlrYlWUDlJDV4d7sLQECJPqepvPKfbboDmTe
	C0J6TGBedscG9frhHvwzxkrKg4uuZLI6EbFtoD0f7Mnksjwec3R/CtfWfJRXGBPlUqdyJJcf0kS3u
	5NycdZGdpb9GrrLSyNqGpUb59wbCuys5DWa5YnCv/RxP4PxlBUe5iNwdpPk1qln0xHZNiLo2BBCEy
	Q8f3Skk8Fu9nXAS8rX1xQ0cTMWObkYP07Xs7V5rVXVN8FfYn0f4xk6Jb3KFTVLoIzrkGExltBESuA
	hArXZjTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGhT7-00000007K2C-2stQ;
	Sun, 18 May 2025 17:06:33 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGhT3-00000007K1g-3zzZ
	for barebox@lists.infradead.org;
	Sun, 18 May 2025 17:06:31 +0000
Received: from Precision-T3610 ([84.147.163.231]) by mrelayeu.kundenserver.de
 (mreue108 [213.165.67.113]) with ESMTPSA (Nemesis) id
 1MfpKZ-1usV3Y202j-00byWR; Sun, 18 May 2025 19:06:25 +0200
Date: Sun, 18 May 2025 19:06:12 +0200
From: Johannes Roith <johannes@gnu-linux.rocks>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aCoTbGjxgymNPSQF@Precision-T3610>
References: <DB7PR02MB43321CDF6386A16A725DC131ABF40@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <845b2228ae93d93e331556bb983f19cf67a025b8.camel@pengutronix.de>
 <DB7PR02MB4332F692229D1F189B11EC49ABF00@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <aCeMAO9MFhGJBStt@Precision-T3610>
 <9babe122-45a3-4843-a2bb-178979164339@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9babe122-45a3-4843-a2bb-178979164339@pengutronix.de>
X-Provags-ID: V03:K1:ml6t1YrsDmMDWpOapfpBWyLZvKnrHZQmSOpzsquWR1eFKUJn/d0
 Q5zrxE1mMv++wnaCyqI0yvPgUzcvIloBq3Mqs8kp8yWFXd4f7fqSh4x7uisc2V+Nxz/Xm5L
 NatzF6QUuBGGlwgLc/3yGE+VL+mFHNk6MnbLxm7uW3TEFyCffIWclApiHVnncPLBeGHwgSb
 7uMNpVSxHcTUb7PBs8lZQ==
UI-OutboundReport: notjunk:1;M01:P0:9twGRrx1cqI=;KO/Wi3B9J1PWPxXHfQ4pHmAnJRo
 WpT8HoqjpFuAYj6VPhPYlE1pj9/oT65/WY4iURkhpeYj2L7ieQdIgR0m7201NhITZTO3LPgpg
 JcbOP2xS0C2UIHwx3jqTzAkdQBXNiw/0E6dPV7s5a31pXy2thxTl1T/h6V0+JLO4uNOUrp65V
 tesNBHjzhSRvLY2KrONnARckMBIhrVgEE2yWkDfuBjVRAN75tPgEZNPmxkzYWGbh0wgqHIsfs
 aw/RdbJsIh9QIPz3EMksdntDs0+sMJo+qI8qvvW8h8S3DWDhSTt37AdBox/+90lzHtsSctXMI
 E6tdeKepDDaMpO/eolUWy1zO3vY1oAuZHyZDjHiSMQr2W3uFFqjJbi1kgtEk3S1XN7AWcwc3k
 GNBVQUmZODuPhAADvf9r8OULq0a7mc8eecOzdnHULLT5OvD/oYiFeOMR2sQ/u8ioGqb5ZIADT
 bJ+uEsZWf9zHCxHIoBm9C1boOM1tOiOBOp6d8gaC+zvLD7KC6Xtag9b271DApMOwdDHVQhc7S
 l82yJ92jCsBGM/vShLRLMJEliEjdaBcCfrgHWOSz21mBVYk05jCgzDEqZ3f+Yex+tQbV086g6
 ZKn1m7kRcOer9iYvFE5GsqbEpqmPzc6/FlmH0uCeXQBfA+lqPXdiosIPKuDA1g11hfaykKBmX
 MoPwRGXyXaKX9/qYWx7+M+mj7o86oYhPlQr+IJfSSJ1yJOUW+myjD+iPVGpRWX4Q7qULGR5or
 iLbc/QBW6ldsYjeAAabCXZKw+cwq+SeRMP5wWLnS5IbttoJwyJOpof38CaXeyRI14eLEDejdL
 DNdd2m66CirbR22CgiScerFsTWPD6pZj/vIe3Osvl9s3cWX72c0r7ohZ0kk2TcGuUkctTnKZE
 B/OItIb9QXCq7qjkwO8fBaQDtbt6vJJtXhc/68uTqC4jgRE48ZL9qEfiQMrszg3tbVX8PzXZr
 IXlMVBv16wMBpx/GZAXFL3n0MJRC8AcI0i9evUd8Hxurrv49uj74YezFKfD2nK+yZya69AT28
 UpXR/HDwipG+auXEOJvMxhzIi12gteLRQL2Q9zMhH3Tn6dNAsg1KSq4OvcfiJB3XLBGrLV6WA
 wawrXhsvw/syzyTd78LN8Y26QCgD15ITUokpxDn4TmLlpgsPNNCXK66a2wXk6Ii7Gk0yF89fu
 IbSE0ELTrViCk7bVFRQabGpstO+qKQiMHrayGOnGj5yJmboL2+Sq/hUz2CNoXM1c/afwLY+4H
 ycxsooOSHq8X4j06rridwf3/bo7rOdijPiRGmSuc1vc3vuKmytk7OOkrSq/OegdJtw6rMXqvU
 uMt8/YahOD3KnUoqLpRyCiy/a5QEiFICXOOzAO2XpEEUaewE19tx2hUJ3Ru2wkIX9EDnWG9YC
 9TUqFuo+jH4+MlfpSCDIDcqX9cwVPoo8P1pKY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_100630_291710_47ADE888 
X-CRM114-Status: GOOD (  25.34  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Barebox for Zedboard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

Am Fri, May 16, 2025 at 09:28:03PM +0200 schrieb Ahmad Fatoum:
> Hello Johannes,
> 
> On 16.05.25 21:03, Johannes Roith wrote:
> > The big advantage of using such an approach would be support for similar
> > devices (e.g. the UltraScale+ ZYNQMP devices) could be added easily by
> > porting the Linux drivers to barebox.
> 
> I can't comment on the Zynq, but for ZynqMP, there is already a FPGA manager
> driver in drivers/firmware/zynqmp-fpga.c. FPGA programming is also supported
> for Altera SoCFPGA and are exposed over the firmware API.

That's exactly what I was looking for. For the ZYNQ it is not
implemented yet, but I could use the ZYNQMP as a reference. I also saw
there is the firmwareload command available to load the bitstream from
commandline

> 
> Loading OF overlays can already load firmware that way.

Could you give me an example for an OF overlay to load a firmware? Do I
have to place the firmware at a specific path like with Linux FPGA
manager or can I specify the path in the overlay?

Thanks and best regards,
Johannes

> 
> Cheers,
> Ahmad
> 
> >> That said I wouldn't mind helping with getting the missing bits added
> >> by reviewing/testing patches. :)
> >>
> >> Regards,
> >> Lucas
> >>
> >> Hey Lucas, 
> >>
> >> "That said I wouldn't mind helping with getting the missing bits added
> >> by reviewing/testing patches. :)"
> >>
> >> Did you made any attempts to do this?
> >>
> >> As far as I can see there are basicly two ways.  
> >> The "Xilinx-Way" by packing everything in Boot.bin.
> >> https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841976/Prepare+boot+image
> >> and the "Linux-Way"
> >> https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841645/Solution+Zynq+PL+Programming+With+FPGA+Manager
> >> using the FPGA manager 
> >> https://elixir.bootlin.com/linux/latest/source/drivers/fpga/zynq-fpga.c
> >>
> >> Best regards
> >> Michael
> >>
> >>
> >>  
> >>
> >>
> >>
> >>
> >>
> >> _______________________________________________
> >> barebox mailing list
> >> barebox@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/barebox
> > 
> > Best regards,
> > Johannes
> > 
> > 
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


