Delivery-date: Mon, 20 Sep 2021 11:04:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSFEJ-0007NP-56
	for lore@lore.pengutronix.de; Mon, 20 Sep 2021 11:04:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSFEH-0006hu-FJ
	for lore@pengutronix.de; Mon, 20 Sep 2021 11:04:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VLG13orwpKPutTl5rH8iveXvKIr7g6M5gJkFzk+SgME=; b=Xd3vh2qDdWG2MB0xsbG4dFZE4H
	Og0A6s6hikYv7aMHw7ux+FUEmWFIn8lFcNwhZLUODiLyFERyTNKeGKPKeQQJQxxNirkCPV7lElqte
	44Ci6gqkAU0Bb3lBOK0yneGAjx5YFKtarWl9UYDObgAsYDjJBad7Lq54FBpu3W0NPuY0sooPO2iFC
	AywgIjEb01xy7T9Q0WTcckZkj6KiRhKn1R50IhlRlQw/A0fWplCAlseUF86VyUIZS8AbASomYZWjX
	HVePJMh/U7BV7uiGc6izVcSPMEuFgOlGuXVG5BsuijSPVgmQcXdk94/H9icqk3UY6qSgd5PIzOToU
	yvgpTbew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSFCW-0011fF-Lz; Mon, 20 Sep 2021 09:03:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSFCQ-0011eU-RB
 for barebox@lists.infradead.org; Mon, 20 Sep 2021 09:02:56 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mSFCN-0006cD-1C; Mon, 20 Sep 2021 11:02:51 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20210908185946.638301-1-trent.piepho@igorinstitute.com>
 <b70fcd46-c1ef-9aa8-9810-cb9af6bf0966@pengutronix.de>
 <CAMHeXxP9fYd9tDdyURJo50MOFwDf+gQyf8jcy4yuwhxB_cKrQw@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a2ed83cd-102d-a3f1-1b28-89199d8f2a06@pengutronix.de>
Date: Mon, 20 Sep 2021 11:02:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAMHeXxP9fYd9tDdyURJo50MOFwDf+gQyf8jcy4yuwhxB_cKrQw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_020255_103077_E2E51B76 
X-CRM114-Status: GOOD (  67.01  )
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
Subject: Re: [PATCH] kbuild: dtc: Allow adding device tree fragments via config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Trent,

On 19.09.21 23:51, Trent Piepho wrote:
> On Wed, Sep 15, 2021 at 4:42 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>> On 08.09.21 20:59, Trent Piepho wrote:
>>> This introduces config variables that allow adding additional fragments
>>> to the Barbox device tree(s).
>>>
>>> Example uses are adjusting the flash partition layout, adding barebox
>>> state varibles, or adding an I2C device.  These can be now be done with
>>> build configuration only, without needing to patch the existing dts
>>> files in the Barebox source.
>>>
>>
>> I don't see the utility of using this new mechanism for in-tree boards.
>> I suggest dropping EXTRA_DTS_FRAGMENTS.
> 
> I wasn't sure if this was useful or not.  I didn't have a use case,
> but thought somebody might think of one.

I think we should actively discourage use of this for in-tree configs,
so I prefer removing it.

>>> Preprocessing the dts file gains another layer, where a generated dts
>>> source consisting of an include directive for the original dts source is
>>> followed by more includes for each fragment.  This is piped to the
>>> existing preprocessor call on stdin to avoid another temporary file.
>>> cpp/dtc will correctly identify errors in the source files they occur
>>> in.  The -MT option is used so the cpp auto-dependencies reference the
>>> original dts source and not the generated code passed on stdin.
>>
>> If you go this route wouldn't you want to apply device tree overlays?
> 
> Can the Barebox apply overlays to the *Barebox dtb* when it starts?

I meant overlay application at compile time. I have no experience with
that and was interested to hear your opinion on it.

> of_register_overlay() applies the overlay to the Linux dtb if I'm not
> mistaken.  The Barebox dtb is passed to the entry function from the
> pbl.  By the time board code runs in the main Barebox it's too late to
> modify the Barebox device tree.

Early runtime application is possible as well, see
of_overlay_apply_tree(). But that's not what I want to advocate here.

>> Blindly applying fragments doesn't mesh well with multi-image.
> 
> It is working well for me, but it was not done blindly.  I think the
> use case was not clear.  This is for Barebox when integrated into a
> build system using something like Yocto or Buildroot for someone
> creating a complete finished FW for a real product..  If one was only
> working on Barebox alone, then you would probably just modify existing
> dts files or add a new image build for your board+dts combo.
> 
> Since one is configuring Barebox for their specific product, they do
> not want to build every board Barebox supports.

In my bubble, barebox is occasionally configured to support multiple
board variants via multi-image when it's not feasible to differentiate
at runtime.

> They just want their
> board built.  So one will not create specific NAND flash partitions
> for their exact firmware design and then want those partitions in
> every board Barebox supports.  That doesn't make sense.
> 
> I have one product I am writing FW for, but I still use multi-image
> build because there are different Barebox images for mutually
> exclusive choices on how to configure the hardware.

So the bubbles do overlap :-)

> I want to use RAUC and for that I need to create barebox-state
> variables in the Barebox device tree.
> 
> With this patch, I can create a dts fragment with a barebox-state
> node.  Then I configure buildroot to add this to Barebox.  All my
> different Barebox images now have the barebox-state node, since the
> fragment works for all them.

New features shouldn't break multi-image. And adding a new mechanism
that applies a fragment to all device trees can introduce such breakage.

There is an easy way out, define the (sanitized) board name as a macro
and let users worry about it.

> I commit to my FW repository (which would be like a product specific
> Yocto meta-layer) the barebox-state dts fragment and the RAUC system
> config that references those state variables.  They are both in the
> same repository and if the variables change, both the dts fragment and
> the RAUC config can be updated in the same atomic commit.
> 
> So now I have added rauc support entirely from the Buildroot
> configuration menu with added dts fragment and rauc config files in my
> FW repository.  *I did not need to apply any patches to the Barebox
> code*
> 
> That is the use case here. So I can use rauc with just the standard
> Barebox source without needing to patch it.

I see the utility when using e.g. evaluation kits barebox already
supports. Could be useful for DistroKit if RAUC support were to
be added.

> Of course there are many other things one would probably also do this
> way, like changing an expansion header from I2C to UART or
> partitioning NAND flash.
> 
> I do not see how one could do this with overlays.  Even if it was
> possible to apply an overlay in the pbl, one would still need to patch
> the lowlevel board code to find and apply those overlays, which
> defeats the whole point of not needing to patch the Barebox source.
> 
> I'll also mention that Linux can do this too in a way.  If you need to
> modify your board dts for Linux, what you do is add an external dts
> file in Buildroot/Yocto and have it make a dtb from that.  You don't
> need to patch the dts files in the kernel source.  But the Barebox dtb
> is not supplied to Barebox by a bootloader like Linux.  The way dtb
> generation is integrated into the image Makefile and even the lowlevel
> code makes it not practical to add new images to Barebox with only a
> make command line argument.
> 
>> I assume with overlays, you could skip an overlay if it has a differing
>> compatible. If we don't use overlays, you should at least define
>> a symbol with the name of the device tree file, so fragments have
>> a chance of being multi-image compatible via preprocessor logic.
> 
> Certainly one could use the preprocessor.  It would be much easier to
> just define what you need in the dts itself.  But one would need to
> patch the Barebox dts and the point was to avoid that.  I suppose the
> makefile could construct a valid C macro name from the filename and
> define it.
> 
> But I wonder if one needs this?

Yes, upstream code should take multi-image into account.
I guess sticking some

  #define $(subst -,_,$<) into the echo'ed string should be enough

> If I was building two different
> boards under yocto, I would have a machine specific override in my
> barebox bbappend to add the only dts fragment for board I was building
> for.  Yocto builds a different copy of barebox for each
> target/machine.  I do not need barebox to use the preprocessor to turn
> off the fragment I am not using.  I would not have yocto give it the
> unused fragment in the first place.

I usually avoid Yocto MACHINEs for board variants. Build same rootfs
for both variants, ship two device trees and reference them either
from FIT configurations or bootloader specs and let the bootloader worry
about selecting the correct DT to boot.

Cheers,
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

