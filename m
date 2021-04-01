Delivery-date: Thu, 01 Apr 2021 10:06:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRsLC-0006a5-0V
	for lore@lore.pengutronix.de; Thu, 01 Apr 2021 10:06:10 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRsLA-0003hM-P6
	for lore@pengutronix.de; Thu, 01 Apr 2021 10:06:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CEaBprYIHvIM9nKssRWHQJndp+8ZaMSndpIAzyPT/3g=; b=aJuZ/NHH01C+s3
	0bZkWWYxou+g+Uq9jkdg4xtcvX39TY1cof0CrBIUQlK4xOiK7453KRzaQcRP1uoLfockMSii667TQ
	IrCja5AV62mQTNJASDpBY4bNpFw5rHUAq39bzac/t/IV1sl+7CgC64XiEt8QG7gCq9AnyC5mUEyMo
	8D0exf7X5fi5An0IWbvkiaINGL+6MC2JIaCNiZFlRtL6NNLHOT53+kg0qrpn3l1WniId7hmIfYaut
	dImo6R247oIVgth8no0NPlJk1tGFcInVI5FT7hFNFFY/DEZEnWObSyV/eCxQAZCTxdCou1JzMitXV
	zzK/Ft/X8aGqaEuLOr5Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRsK1-008s6l-Ue; Thu, 01 Apr 2021 08:04:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRsJw-008s6K-8E
 for barebox@lists.infradead.org; Thu, 01 Apr 2021 08:04:54 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1lRsJu-0003QZ-RO
 for barebox@lists.infradead.org; Thu, 01 Apr 2021 10:04:50 +0200
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fa3ba608-210f-6211-5abd-d148fc0b9f73@pengutronix.de>
Date: Thu, 1 Apr 2021 10:04:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_090452_406706_E13EA76F 
X-CRM114-Status: GOOD (  13.99  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [ANNOUNCEMENT] Presenting The All-New Barebox Killer App
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The core design choice behind barebox could be summed up as
frameworks: Frameworks for how drivers interact, how devices
are detected, how hardware is manipulated by the user, how
redundant boot happens, how reset reasons are propagated and
so on.

These are all generic features, so continued improvement to
these benefits most barebox users regardless of platform,
but when barebox lacks platform support, it can be harder to argue
maintainability and reuse benefits that its generic features
bring to the table if first a week or two need to be spent to
port barebox to the new System-on-Chip.

One way to solve this is to involve a wider community in porting
barebox. My impression is that we not only need many good features,
but one grand killer App: A major selling point motivating folks
everywhere to port it and barebox along with it!

As it seems, the time for this killer App has now finally arrived.
Let me present:

           *drum roll*  bareDOOM  *theme music playing*

bareDOOM builds on generic barebox infrastructure like framebuffer,
input, sound, file system and C environment support to let you
chase demons from mars to hell and back. It's completely generic code,
so it runs everywhere barebox is running, be it bare-metal on an
i.MX6 heavy machinery control panel, on your laptop under UEFI
or even on a RISC-V emulator compiled to Web Assembly:

            https://barebox.org/jsbarebox/?graphic=1

As barebox runs without dependencies, this allows the bareDOOM
porter to focus on any missing hardware support parts while
reusing all of the common barebox infrastructure. Porting DOOM
might have never been more different :^)

To help on-boarding the influx of new porters, the documentation
will feature a brand new barebox porter's guide along with the
next release. You can already check it out here:

https://github.com/a3f/bareDOOM/blob/baredoom/Documentation/devel/porting.rst

The complete bareDOOM patchset is available on GitHub:

               https://github.com/a3f/bareDOOM/


If this got you interested, I am happy to advise with porting
bareDOOM to your nearest appliance. :-)


Cheers and happy porting,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

