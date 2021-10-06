Delivery-date: Wed, 06 Oct 2021 13:21:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY4yy-0007yL-82
	for lore@lore.pengutronix.de; Wed, 06 Oct 2021 13:21:08 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY4yx-0003lg-CM
	for lore@pengutronix.de; Wed, 06 Oct 2021 13:21:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pFS+TAzqN5z2LHLHoms1GvBtPPlRWnmR0+nZ6xK9ARg=; b=QgQWLSwWrFufbiS1bXLTSQOy/X
	204kKq4mTsereXsTulsdOmVRsty5TEabANZe8LKfLT+MfzpcMrjDbCt5LFO31J2zB9slL5/QWVNcB
	QZtebsrtvneRF9miQu1eMPThkQbJeI6mfUpxBExY48SrCTZgVylJbDCE/mm/iL9jTiNtfyu3MipXs
	2KiJvemVJTO2ZvrJSHi5O0FVfWV9ukMsolx+vRidkV1rpSQbRDAAQeBj7R+B5clSBG61SnZ1yo+ql
	0wakwXDlf5CkCE+0eeqrgOXJBsCSDv6qbO/jH3H3EEBmOqWJqrZSkU46EltRqTJeLsqB5lyBeOXK7
	8HmljsBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY4xa-00E3ut-N3; Wed, 06 Oct 2021 11:19:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY4xV-00E3ts-ST
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 11:19:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mY4xU-0003Tu-Ew; Wed, 06 Oct 2021 13:19:36 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20211006135844.7361b72436286f5accbde0ad@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7fd50051-7370-5e29-c68a-8ac2439d5f9e@pengutronix.de>
Date: Wed, 6 Oct 2021 13:19:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211006135844.7361b72436286f5accbde0ad@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_041937_952137_9A82E042 
X-CRM114-Status: GOOD (  15.10  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,
	RDNS_NONE,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: inkscape 1.1.1 issue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 06.10.21 12:58, Antony Pavlov wrote:
> Hi!
> 
> I have just update inkscape from Debian repo.
> It looks like inkscape-1.1.1 has new unexpected behaviour.

I ran into issues as well when going from 0.92.4 to 1.0.1.
Instead of adding another quirk, maybe we should use something
else for SVG to PNG that is actually stable.

Any suggestions?

> 
> During barebox sandbox build process I have faced with unexpected
> inkscape dialog. Also the '--without-gui=' option is depricated.
> See my build log
> 
> barebox$ make
> ...
> Warning: Option --without-gui= is deprecated
> Unable to init server: Could not connect: Connection refused
> Background RRGGBBAA: ffffff00
> Area 0:0:3000:1500 exported to 640 x 320 pixels (20.48 dpi)
>   LOGO.S   lib/logo/barebox-logo-w640.bblogo.S
>   AS      lib/logo/barebox-logo-w640.bblogo.o
>   AR      lib/logo/built-in.a
>   AR      lib/built-in.a
>   GEN     .version
>   CHK     include/generated/compile.h
>   UPD     include/generated/compile.h
>   CC      common/version.o
>   CC      common/imd-barebox.o
>   AR      common/built-in.a
>   LD      barebox
>   SYSMAP  System.map
>   OBJCOPY barebox.bin
>   CHKFILESIZE barebox.bin
>   LN      barebox-flash-image
> antony@cinco:~/barebox$ dpkg -l | grep inkscape
> ii  inkscape                                     1.1.1-2                                   amd64        vector-based drawing program
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

