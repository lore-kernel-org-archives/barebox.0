Delivery-date: Thu, 07 Oct 2021 12:05:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYQHO-0005xZ-NO
	for lore@lore.pengutronix.de; Thu, 07 Oct 2021 12:05:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYQHN-0002su-Pb
	for lore@pengutronix.de; Thu, 07 Oct 2021 12:05:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKVhU7eCpacYKmhrDg4W17VarjWOhuDQzulBa/3PJkA=; b=EFhJOBKSEg/yI7
	xSprpGvRpgmS2sYUaDxyHde7ybnzFYmMM5BZMD4NTp3OfbSR6g7wMmoohJyeJC88XveM4JwVhs3mm
	yFsNxfG77rxuQvDz13Nang0+5xosVqmYDw/TzQdCGWrE/csrOl4QVsQE04oOxNQcHFYWs7mlubW9s
	LGnqTHdkhlJDm/o0gC0+rSTOu2GV3NT/WQyDjXx0XQ8v7rxzTyISfMSeuZlfXwsTZl00gmcHhDWnU
	X5iRjDAtkqIUoFgpnR3vqpsoT4hOin8tK8hjGrQKP5+TB+bORPiMmnn5iEQ5KKEnsBmnK5JO/B54x
	vOkZpuF0Nl6eBSumX3qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYQFr-00Go8Q-Qx; Thu, 07 Oct 2021 10:03:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYQFm-00Go7H-Ql
 for barebox@lists.infradead.org; Thu, 07 Oct 2021 10:03:56 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mYQFh-0002TX-3e; Thu, 07 Oct 2021 12:03:49 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
References: <20211006135844.7361b72436286f5accbde0ad@gmail.com>
 <7fd50051-7370-5e29-c68a-8ac2439d5f9e@pengutronix.de>
 <20211007094900.GI19809@tellis.lin.mbt.kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <e1967cb1-e3d8-f47d-e8e0-7c2d66c65008@pengutronix.de>
Date: Thu, 7 Oct 2021 12:03:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211007094900.GI19809@tellis.lin.mbt.kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211007_030354_930261_C0EF19F2 
X-CRM114-Status: GOOD (  18.06  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: inkscape 1.1.1 issue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Jules

On 07.10.21 11:49, Jules Maselbas wrote:
> Hi,
> 
> On Wed, Oct 06, 2021 at 01:19:36PM +0200, Ahmad Fatoum wrote:
>> Hello Antony,
>>
>> On 06.10.21 12:58, Antony Pavlov wrote:
>>> Hi!
>>>
>>> I have just update inkscape from Debian repo.
>>> It looks like inkscape-1.1.1 has new unexpected behaviour.
>>
>> I ran into issues as well when going from 0.92.4 to 1.0.1.
>> Instead of adding another quirk, maybe we should use something
>> else for SVG to PNG that is actually stable.
>>
>> Any suggestions?
> Maybe using imagemagick's convert ?
> 
> How can I see the result of the current solution ?

Build for ARCH=sandbox and look into /logo.
If you enable CONFIG_DRIVER_VIDEO_SDL, you can display
the PNGs with e.g. fb0.enable=1 splash /logo/barebox-logo-640.png

>>>
>>> During barebox sandbox build process I have faced with unexpected
>>> inkscape dialog. Also the '--without-gui=' option is depricated.
>>> See my build log
>>>
>>> barebox$ make
>>> ...
>>> Warning: Option --without-gui= is deprecated
>>> Unable to init server: Could not connect: Connection refused
>>> Background RRGGBBAA: ffffff00
>>> Area 0:0:3000:1500 exported to 640 x 320 pixels (20.48 dpi)
>>>   LOGO.S   lib/logo/barebox-logo-w640.bblogo.S
>>>   AS      lib/logo/barebox-logo-w640.bblogo.o
>>>   AR      lib/logo/built-in.a
>>>   AR      lib/built-in.a
>>>   GEN     .version
>>>   CHK     include/generated/compile.h
>>>   UPD     include/generated/compile.h
>>>   CC      common/version.o
>>>   CC      common/imd-barebox.o
>>>   AR      common/built-in.a
>>>   LD      barebox
>>>   SYSMAP  System.map
>>>   OBJCOPY barebox.bin
>>>   CHKFILESIZE barebox.bin
>>>   LN      barebox-flash-image
>>> antony@cinco:~/barebox$ dpkg -l | grep inkscape
>>> ii  inkscape                                     1.1.1-2                                   amd64        vector-based drawing program
>>>
>>
> 
> 
> 
> 
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

