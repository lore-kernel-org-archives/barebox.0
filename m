Delivery-date: Tue, 04 Jan 2022 12:22:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4htb-00AgmQ-HD
	for lore@lore.pengutronix.de; Tue, 04 Jan 2022 12:22:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4hta-0002oc-5a
	for lore@pengutronix.de; Tue, 04 Jan 2022 12:22:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ztYAYvL9v14+vyxQF4kNliiVhWgjEVanxe+RDhmM3c=; b=NdvS7spy9Lh7gw
	TEQYzcL52SyPdB8dVch0O/Uxin3tBfWDx2pEyO5WsSrbbcNtwpZDSjXtOw8+Nmg0gcVCH7g5MvwJM
	ILm6vWO9FafwYcBpmS9hJ1yW2q2TpTkii/QFYtAwQb17DmP6NCua1j6N5yoVeoONC18fIkYQ6mHVY
	pzs4w8E40aFdKoH1ty6WvyrRefqFizi9ciB/zl/Nw3/1AfypNf9oB9t9PGZYZw2kyt+1ihyQOTcR7
	95v3kRH+bhUK7AtYWQs9b9r8zM5znQ3glwiR1dpUF6mCMmUIpXNDoqmqqxzs/lgLyDnVKRxR12Tf2
	Q8n/aaCfAQBPNsmmfK2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4hsD-00BH8N-SZ; Tue, 04 Jan 2022 11:21:01 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4hs8-00BH7y-N5
 for barebox@lists.infradead.org; Tue, 04 Jan 2022 11:20:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1641295251;
 bh=pxRYR3w0NsScXYTalEgwhu26y9YbWJxGGwc2T+14Dio=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=dzj9JjbuceH1gu9XsI5LaRzRTWHdUSmhhN7RmSUf0vsULNCDcl/5Qvyqkf0if9mxn
 0Frcyc2/FMRWkdTr+LoxUxgQTIdiyO3xjrJIOBJIpey9pKpSwiMOSc/49NLKHpL2tU
 +Dww+WM9Hlc17WHxVHJvId/kPoJB0GTuaGeNdHxQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.147.98] ([217.61.147.98]) by web-mail.gmx.net
 (3c-app-gmx-bap27.server.lan [172.19.172.97]) (via HTTP); Tue, 4 Jan 2022
 12:20:51 +0100
MIME-Version: 1.0
Message-ID: <trinity-08e4162e-f564-43b8-859c-2e24b4247c1c-1641295251349@3c-app-gmx-bap27>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Tue, 4 Jan 2022 12:20:51 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220104105123.GI6003@pengutronix.de>
References: <trinity-c26cce2b-95ff-45dc-9d60-3a1eebfa088b-1641285545326@3c-app-gmx-bap27>
 <20220104105123.GI6003@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:39H9240EAZLHEgyGXQZqwb5IFVV2Y1czkt2VSZOSRzL93oMDb0n4ueiA5VFWLv8sl310T
 nndq/DR8YJ8Fsgpr1pMlO/OsWQiVOn/R88k7CxIvzlRHtpHp6SpfGzyVDSjs+ycbJo+J26n5EhbJ
 cB9wul4rYgvTrz/3zLgtOg3dycORFGhNDWz0q/wMLFQBtLF2xhRKJ1lneD5UYxndo5xVaNnr215F
 NQbklAIVb0CzuJmlevXiuH+GaPCnbaDOWHfGc/8t3z5oPrK3sRHwn9m9f506fCVxjLP5p2CAQ+2Z
 qg=
X-UI-Out-Filterresults: notjunk:1;V03:K0:miQJt9afYmU=:u382oINlw+QSFevGVQOl+E
 Edaksfun0Ti1K5wWaL3KjvWdM425h5sjKQsZem8cB+MxfC8/413CVtOg7G9vXHdOr1THYO4IP
 KjySC7V1z9XYgcOAWKPV4E/7sjmcvMTjfgE13A1TjR9WXQjEE1UcKRILY64I7E90kdEWScbUS
 1EJP2c4awEGG5twEAjqxOBYTuFgeNaTA78VprcChU/GpnSWQv8k825lBI8c+rguc3Bb3/aQ20
 Dc7XP9503btXujUAwlp7inQWdCioAhuIpac+yR0YL62RumNDFlju4IfzGkZhE+IiKaFfrF6gM
 x/B+aE/jv/izVFav83+uTMyCrngEbQZ1/ewt5y2YrInU7uKgRqI1YrzmNLTVwbAIT9f/Eb5qI
 EPJb2E1fP0rxY0stFLk+GQCGjADBufR7u2iRdqumTx1Fq9PpWZ9TCa4IBYb5bK5SZXcdSbDUG
 UBLCK9x02PxD5rtE5bunwvfFshOC8+AKexD4AByYO7vS4cnHUBTPyLgSCoemHBbynkoc7QwHB
 62qmlshK4yhfN8UKlGkXk9MAaKpbLeTe/Izr8zN/ymHBT/Mv9qjtDaja6Qp+SxvngkeRoA6ph
 TD1OV0gwgnlxUlfprMSx83nvOJ3Eg7Oo5xA6A0ul52ryAVaKPRn4W92NyiuIAw7z+6eELOffm
 wrN0zMcjgDU4UjpyN6gLqGZQ7algnohJzSpZnUFI0Wu+iEtSXuQ7C7m2qwDAMEr+qlp1HLm6U
 Ru2bjNBW3AXmqNTKk2jMgQ8yv9m2GPmpzXse/DWn32pgHzJeGJtr1IPekIIcDtJP04LBz4ptQ
 wEPM+Tf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220104_032057_120146_86D5490A 
X-CRM114-Status: GOOD (  26.94  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Aw: Re: barebox - rk3568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

thanks, got it compiled and booting...currently looking around how to do things ;)
have successful booted linux+dtb+initrd manually and pinged my router as network test.

now i looks how to include scripts that i don't need to write all again and again...

documentation says that a direktory will be used in boards directory, but this seems not working

so i used the config-approach

DEFAULT_ENVIRONMENT_PATH=arch/arm/boards/rockchip-rk3568-evb/defaultenv

i'm not sure how the saveenv works (where the environment is stored...i have no /dev/env0). in uboot i can define a device (mmc), partition (1:1), filename (uboot.env) for storing environment onto a fat-partition. i guess you have something similar too

regards Frank


> Gesendet: Dienstag, 04. Januar 2022 um 11:51 Uhr
> Von: "Sascha Hauer" <sha@pengutronix.de>
> An: "Frank Wunderlich" <frank-w@public-files.de>
> Cc: barebox@lists.infradead.org
> Betreff: Re: barebox - rk3568
>
> Hi Frank,
>
> On Tue, Jan 04, 2022 at 09:39:05AM +0100, Frank Wunderlich wrote:
> > Hi,
> >
> > i have a prototype rk3568 board (bpi-r2-pro).
> >
> > is it possible to flash only barebox instead of uboot? in documentation i found only "creating SD-card", but i dont want to break existing partitions.
>
> The rk3568 has a fixed boot order of eMMC, SD, USB. The EVB board has a
> pushbutton to shortcircuit a pin of the eMMC. When pushed, the eMMC
> becomes invalid and the board boots from SD card. I could imagine it's
> the same on your board, so you could create an SD card and boot from
> that. Other than that an image that starts from SD card can also start
> from eMMC, the images are the same.
> You could also start from USB, the barebox tree has a rk3568 USB loader
> tool.
>
> >
> > https://www.barebox.org/doc/latest/boards/rockchip.html#rockchip-rk3568
> >
> > says it starts from sector 32, my first block for uboot (idblock.bin=spl+raminit) starts at 64, full uboot in partition at 8M.
> >
> > As it differs a bit from evb can i add new dts like in uboot?
>
> Yes, you can. See
> https://www.barebox.org/doc/latest/devel/porting.html?highlight=new%20board
> for more information how. Also have a look at commit b9f1bb8563ba
> which adds the EVB board support. You'll have to do the same for your
> board.
> One thing you'll need is a sdram-init.bin file. You can extract it from
> your BSP.
>
> Regards,
>   Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

