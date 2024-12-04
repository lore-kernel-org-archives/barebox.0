Delivery-date: Wed, 04 Dec 2024 07:15:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIifE-003nrT-0L
	for lore@lore.pengutronix.de;
	Wed, 04 Dec 2024 07:15:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIifE-0007CS-1t
	for lore@pengutronix.de; Wed, 04 Dec 2024 07:15:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=09z8S7sryi/vOxto5s8IdqvA3z3lwfZ8shksl9LxohU=; b=OIiG8k/gFDdBcgATIrz3iC7ARX
	1gAE0MIrteQ/HS+ZtfcCl7GUtt9xFe/P64dKctwhs5gBEA033KSn6Po1Bz6iaGT+tYeXO0CcZsb5E
	++RJ1ymII27sF2W7rW+4bXWdqzlUOnVj/u21qcoDSk3YDIbZHerok+G9HCfiu1b68poNaO3oqMwsw
	qoUM9otTq6ICj8Igja1yFrnLCr0vG74orNit2bzL6/WJ62jakJYdlzRAtKyEdZ6V2H5lLpkBcY2cQ
	M9MtYW1KfbqhWoEPOkpJEyMgVJkqLtHzR/s5wvmofsgkW5PaSH2UqzUDslAxhIOwMDqL2NTAb7KV5
	JZLuRgfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIieY-0000000Bb9P-0tFz;
	Wed, 04 Dec 2024 06:14:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIieU-0000000Bb8u-2ZDg
	for barebox@lists.infradead.org;
	Wed, 04 Dec 2024 06:14:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIieS-00074q-99; Wed, 04 Dec 2024 07:14:20 +0100
Message-ID: <f7b92750-f3ec-42d1-aacb-deaa6fb408d9@pengutronix.de>
Date: Wed, 4 Dec 2024 07:14:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
 <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos>
 <19923329-f254-435d-9557-5e1b6835b8ec@pengutronix.de>
 <Z09TKeFZaT6InuPX@hephaistos>
 <49df1ec9-aca8-49b0-95fe-d577c5b615db@pengutronix.de>
 <Z098Eor4bedpsol9@hephaistos>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z098Eor4bedpsol9@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_221422_675187_8BD0C803 
X-CRM114-Status: GOOD (  20.49  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 03.12.24 22:45, Konstantin Kletschke wrote:
> On Tue, Dec 03, 2024 at 09:28:39PM +0100, Ahmad Fatoum wrote:
>> See the patch I just Cc'd you on.
> 
> Worked like a charm!

Nice, you can reply with a

  Tested-by: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de> # BBB

on the other patch, so it's picked up when the patch is applied.

> With vanilla code (one ">" in lowlevel.c) I get
> the LL output, the warm reset behaviour (stuck at S1, watchdog, reset
> cmd, linux reboot) is the same. As expected since its only debugging
> dealt with here.
> 
> Being the playful idiot child I am I was so happy this now working I wanted to
> see something more and added this in lowlevel.c:
> 
> @@ -135,6 +140,9 @@ static noinline int beaglebone_sram_init(void)
>         am33xx_enable_uart0_pin_mux();
>         omap_debug_ll_init();
>         putc_ll('>');
> +       putc_ll('6');
> +       putc_ll('6');
> +       putc_ll('6');
> 
> Aka added three 6 to be put out, which they are!
> 
> The side effect of my additional 3 6 chars is:
> 
> reset cmd, S1, wd 3, mw 0x44e00f00 0x1  and linux reboot are working fine now!
> Additional LL debug output is there, console notification message, >, my sixes,
> and it comes reliably up!

Very interesting. You can now try to move the 4 putc_ll`s to a later point in the
startup code and then see which line of barebox code needed the delay in front of
it.

Note that it's not safe to use puts_ll("string") before relocate_to_current_adr()
and setup_c() are called.

Cheers,
Ahmad


> 
> Kind Regards
> Konstantin
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


