Delivery-date: Wed, 05 Jan 2022 18:52:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5ASA-00C0c8-VA
	for lore@lore.pengutronix.de; Wed, 05 Jan 2022 18:52:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5AS9-0004Ro-MJ
	for lore@pengutronix.de; Wed, 05 Jan 2022 18:52:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LT5a5BAVJnZbKnzdq/nZ9Ehg+4K1BAv+SzGPt5y60SM=; b=yS/F3EmgRMXjJ6UVtPLDXNFqhS
	Jnd4sO3wyHrzwF8Efk8735fGwUkYPiONJFkztLl3SBhRcOTHnTi+HYiOfkVhDrmoc9Iu+XaumkGHi
	RBem2edyTEi4/MFE0U+OVMzfiR+CQ7mfln907OXEmhnLiexEc0SOqQza+z5ofhSjE0F6PYYBZoH8t
	ycy8lywDcAXa/EeaRnDQceogKFSCoDyHGzZw2Lc6CqbuVLIxOhngi4aCcPuuSmxgLAobhZ6kAoOMu
	FdVnNuPVKfIB4ZqtYEn/IPC/nUtM6oXtjICtVN9yk+rQKOQvPMWGz5OSfOsWswR095+0rw6rrS1jJ
	9iDhTtaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5AQa-00FWOY-Dh; Wed, 05 Jan 2022 17:50:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5AQV-00FWNP-69
 for barebox@lists.infradead.org; Wed, 05 Jan 2022 17:50:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n5AQT-0004DM-Qz; Wed, 05 Jan 2022 18:50:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
 <c4ae26b8698992ad37f201101795b1bb@inside-m2m.de>
 <53bdfd89-f363-5cec-4cb1-417c25c90eaf@pengutronix.de>
 <297b3425baa118783dccb6446900fbfa@inside-m2m.de>
 <cf1e6cf6a51dc13ec5275d94e18d23c1@inside-m2m.de>
 <ef8a2a82-91f5-5401-a564-a0ab20da4772@pengutronix.de>
 <YbyGBHs1YWVcgE5X@Hephaistos>
 <68358567-7665-bd5c-00fe-b410b4ec2518@pengutronix.de>
 <YbyczaAWK6juc0VO@Hephaistos> <YcMwk6mncQ8fSwTJ@Hephaistos>
Message-ID: <c55ef6c5-c7ea-0663-47b9-141773985ba2@pengutronix.de>
Date: Wed, 5 Jan 2022 18:50:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YcMwk6mncQ8fSwTJ@Hephaistos>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_095019_267834_9666629E 
X-CRM114-Status: GOOD (  25.92  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Konstantin,

On 22.12.21 15:05, Konstantin Kletschke wrote:
> I switched from doing the state in the onboard EEPROM (as said, it
> is write protected in production use) to save the state in a dead space
> in the onboard eMMC chip between MBR and first partition:
> 
> / {
> 	aliases {
> 		state = &state_eeprom;
> 	};
> 
> 	state_eeprom: state_eeprom {
> 		#address-cells = <1>;
> 		#size-cells = <1>;
> 		compatible = "barebox,state";
> 		magic = <0xcafebabe>;
> 		backend-type = "raw";
> 		backend = <&backend_state_mmc2>;
> 		backend-storage-type = "direct";
> 		backend-stridesize = <54>;
> 		last_chosen {

Here last_chosen is toplevel.


> Compiled in (relevant) variables:
> 
> * boot.default: bootchooser insidem2m_1 insidem2m_2
>   boot.watchdog_timeout: 0
>   bootchooser.default_attempts: 3
>   bootchooser.default_priority: 1
>   bootchooser.disable_on_zero_attempts: 0
>   bootchooser.reset_attempts:  (list: "power-on", "all-zero")
>   bootchooser.reset_priorities: 
>   bootchooser.retry: 0
> * bootchooser.state_prefix: state

Here you say they are inside state.*

> The userspace is no amused, however:
> 
> rauc status output:
> 
> (rauc:583): rauc-WARNING **: 18:51:57.389: Failed getting primary slot: Failed getting primary slot: No content to read

Yes RAUC has:

  #define BOOTSTATE_PREFIX "bootstate"

So that's what you need to use.

> barebox-state:
> 
> last_chosen=2
> system0.remaining_attempts=0
> system0.priority=21
> system0.ok=0
> system1.remaining_attempts=2
> system1.priority=20
> system1.ok=0

But state works correctly regardless, you can place
all sort of stuff there.

> ################ PLAN B ##################
> 
> I had a previous state device tree setup, which made userspace happy,
> but not barebox. I had a parent bootstate section containing system0 and
> system1:
> 
> / {
> 	aliases {
> 		state = &state_eeprom;
> 	};
> 
> 	state_eeprom: state_eeprom {
> 		#address-cells = <1>;
> 		#size-cells = <1>;
> 		compatible = "barebox,state";
> 		magic = <0xcafebabe>;
> 		backend-type = "raw";
> 		backend = <&backend_state_mmc2>;
> 		backend-storage-type = "direct";
> 		backend-stridesize = <54>;
> 		bootstate {

Here you have a correctly named container.

> With this device tree barebox bootschooser is unhappy:

Did you set bootchooser.boot_prefix?

> But userspace is fine:

As expected.

> I assume this has to do with bootchooser.state_prefix. If I change from
> state to bootstate (yes, brute force) I get:
> 
> global excerpt:
> 
> * bootchooser.state_prefix: bootstate
> 
> devinfo state looks the same as previous.
> 
> boot:
> 
> barebox@TI AM335x BeagleBone black:/ boot
> ERROR: bootchooser: Cannot get state 'bootstate'
> Nothing bootable found on 'bootchooser'
> Booting entry 'insidem2m_1'
> ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
> mounted /dev/mmc1.1 on /mnt/mmc1.1
> [...]
> 
> 
> 
> When I set:
> 
> * bootchooser.state_prefix: state.bootstate
> 
> I get best of both worlds!

Exactly. :-)

> Wall of text, two questions:
> 
> Is this resulting setup (DT with bootstate parent, state_prefix:
> state.bootstate) sane?

Ye, the final setup looks good now.

> Can the variant without the boostate variant work too? If it was the
> other way around, userspace working w/o the bootstate variant but bnot
> _with_ I would say additional configuration required or something, but
> this way... I would like to understand this fully.

RAUC hardcodes bootstate, so that's what you need to use, unless you patch
RAUC.

Cheers,
Ahmad

> 
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

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

