Delivery-date: Mon, 08 Mar 2021 21:24:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJMQm-0007XL-Rz
	for lore@lore.pengutronix.de; Mon, 08 Mar 2021 21:24:44 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJMQm-0001Qt-0a
	for lore@pengutronix.de; Mon, 08 Mar 2021 21:24:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zKvnFYJoxyjQypWLCWBeTiQ68cebJeV/gy6Sf0oNhxA=; b=LsB2VSxEZMCVVGiNk2QnHc/p2
	TkAjs4OAJb9sI/jmuM6XxVnmfxBoKs2yJyX2KZB3h+IdcVqBbhgaiQ0qYpwF573aQn18vvnIjAccQ
	Xi/3tVONV3QwdhwjAPYVUPYIWOxUe3JYA8POIyVNi0v1LTuSPDgPfymqU5mLY7vPMhgfsPigukXo6
	j5y8YGn434ntvqqf6j7XXRMJEpRSbiOBWI3wH4tlrW7hgXKv6KXzHWCiVmJCz/gQFdBbLTD3lqak0
	WpMMeaDGpVLwZv0Iu83PK9yEh5WOgNJYT7DOb9frBhVeUS8gZiGWeffi4SC89zh4lXdQy+SApgJyS
	q1ERFnDvQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJMOy-002Z1e-Uz; Mon, 08 Mar 2021 20:22:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJMOf-002Yrs-OV
 for barebox@lists.infradead.org; Mon, 08 Mar 2021 20:22:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lJMOd-0001Ax-Bo; Mon, 08 Mar 2021 21:22:31 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: "Barbier, Renaud" <renaud.barbier@abaco.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <MN2PR16MB3135C4186907BA49E69CD38B91979@MN2PR16MB3135.namprd16.prod.outlook.com>
 <092dbc44-2081-ef3b-0fd7-25d1b9da72d3@pengutronix.de>
 <MN2PR16MB3135FD27767D80F4FB9FB44A91979@MN2PR16MB3135.namprd16.prod.outlook.com>
 <c3eae1a0-2296-64f4-95ea-cb808f1f0aa2@pengutronix.de>
 <MN2PR16MB3135E6DF1FAD29294046059391969@MN2PR16MB3135.namprd16.prod.outlook.com>
Message-ID: <44bd35be-7d96-294b-c625-2e94398d2c08@pengutronix.de>
Date: Mon, 8 Mar 2021 21:22:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <MN2PR16MB3135E6DF1FAD29294046059391969@MN2PR16MB3135.namprd16.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_202236_233613_7CDDF420 
X-CRM114-Status: GOOD (  23.18  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Uart set up in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Renaud,

On 05.03.21 14:08, Barbier, Renaud wrote:
>> So you load pbl/bare init barebox into SRAM, run PBIT memory test on DRAM,
>> then extract/copy barebox proper to DRAM or how does it work?
>>
> [Barbier, Renaud] 
> For now I have never used PBL on ARM (lwl-y => obj-y). Probably did not do right as I  tweaked the barebox linker script to have a TEXT_BASE. Only reason I did not use PBL is that it did not boot first few time I tried and the other way worked right away.
> 
> PBIT runs from SPI NOR flash which is not a problem as there is a DDR BIST unit on our ARM SOC. I did include the memtester from pyropus.ca too for a more comprehensive test and obviously it is very slow running from flash with D-cache off. An improvement would be to run from SRAM.
> 
> From the barebox_arm-reset_vector, the uart is set to a fixed baud rate, the DDR memory initialized and if PBIT is enabled a quick or comprehensive test is ran.  Otherwise use the BIST to initialise ECC if present and then barebox_arm_entry is called to relocate barebox in memory.

I see. I am afraid there's no suitable API for early variable
readout you can directly use. Some solutions that come to mind:

  - If you have early chainloading to copy the reset of barebox
    into DRAM, you could use it to load a data block with your own
    format

  - The sama5d2 boards use FAT from PBL, before barebox proper is
    initialized. Only if you have an early block driver.

  - Read it from i2c EEPROM if available: There is early i2c code
    for i.MX (used for SPD EEPROM)

  - Change memory test to log to memory and then write from barebox
    proper

  - Dedicate a word in barebox header for the baud rate and patch the binary
    in flash to override it...


I'd be interested in hearing what you eventually decide on.

Cheers,
Ahmad



> 
> 
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

